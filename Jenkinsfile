pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // 从 GitHub 拉取代码
                git 'https://github.com/LinyuLike/HelloWorldWithMakefile.git'
            }
        }

        stage('Build') {
            steps {
                // 使用 Makefile 编译项目
                sh 'make'
            }
        }

        // stage('Test') {
        //     steps {
        //         // 运行测试（如果有）
        //         sh 'make test'
        //     }
        // }

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
