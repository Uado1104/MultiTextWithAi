from ai.manager import Manager
"""
主函数
"""
def main() -> None:
    """
    主函数
    """
    print("Hello, World!")
    # 创建一个 Manager 实例并调用其方法
    manager = Manager()
    print(manager.get_response("Hello, World!"))

if __name__ == "__main__":
    main()
