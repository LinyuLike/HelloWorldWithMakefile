pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                // 使用 Makefile 编译项目
                sh 'make'
            }
        }

        stage('Run and Verify') {
            steps {
                // 运行 main.exe 并捕获其输出
                script {
                    def output = sh(script: './main.exe', returnStdout: true).trim()
                    echo "Output from main.exe: ${output}"

                    // 检查输出是否符合预期
                    if (output == "Hello, World!") {
                        echo 'Output verification succeeded!'
                    } else {
                        error 'Output verification failed!'
                    }
                }
            }
        }

        stage('Clean') {
            steps {
                // 清理构建文件（可选）
                sh 'make clean'
            }
        }
    }

    post {
        success {
            // 构建成功后的操作（可选）
            echo 'Build succeeded!'
        }
        failure {
            // 构建失败后的操作（可选）
            echo 'Build failed!'
        }
    }
}
