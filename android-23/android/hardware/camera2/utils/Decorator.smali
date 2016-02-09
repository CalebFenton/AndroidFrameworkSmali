.class public Landroid/hardware/camera2/utils/Decorator;
.super Ljava/lang/Object;
.source "Decorator.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/utils/Decorator$DecoratorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/camera2/utils/Decorator$DecoratorListener;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Landroid/hardware/camera2/utils/Decorator$DecoratorListener;)V
    .locals 0
    .param p2, "listener"    # Landroid/hardware/camera2/utils/Decorator$DecoratorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/hardware/camera2/utils/Decorator$DecoratorListener;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 68
    .local p0, "this":Landroid/hardware/camera2/utils/Decorator;, "Landroid/hardware/camera2/utils/Decorator<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    iput-object p1, p0, Landroid/hardware/camera2/utils/Decorator;->mObject:Ljava/lang/Object;

    #@5
    .line 70
    iput-object p2, p0, Landroid/hardware/camera2/utils/Decorator;->mListener:Landroid/hardware/camera2/utils/Decorator$DecoratorListener;

    #@7
    .line 68
    return-void
.end method

.method public static newInstance(Ljava/lang/Object;Landroid/hardware/camera2/utils/Decorator$DecoratorListener;)Ljava/lang/Object;
    .locals 3
    .param p1, "listener"    # Landroid/hardware/camera2/utils/Decorator$DecoratorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/hardware/camera2/utils/Decorator$DecoratorListener;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 63
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    .line 65
    new-instance v2, Landroid/hardware/camera2/utils/Decorator;

    #@12
    invoke-direct {v2, p0, p1}, Landroid/hardware/camera2/utils/Decorator;-><init>(Ljava/lang/Object;Landroid/hardware/camera2/utils/Decorator$DecoratorListener;)V

    #@15
    .line 62
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "m"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    .local p0, "this":Landroid/hardware/camera2/utils/Decorator;, "Landroid/hardware/camera2/utils/Decorator<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 79
    .local v1, "result":Ljava/lang/Object;
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/utils/Decorator;->mListener:Landroid/hardware/camera2/utils/Decorator$DecoratorListener;

    #@3
    invoke-interface {v3, p2, p3}, Landroid/hardware/camera2/utils/Decorator$DecoratorListener;->onBeforeInvocation(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    #@6
    .line 80
    iget-object v3, p0, Landroid/hardware/camera2/utils/Decorator;->mObject:Ljava/lang/Object;

    #@8
    invoke-virtual {p2, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    .line 81
    iget-object v3, p0, Landroid/hardware/camera2/utils/Decorator;->mListener:Landroid/hardware/camera2/utils/Decorator$DecoratorListener;

    #@e
    invoke-interface {v3, p2, p3, v1}, Landroid/hardware/camera2/utils/Decorator$DecoratorListener;->onAfterInvocation(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 88
    iget-object v3, p0, Landroid/hardware/camera2/utils/Decorator;->mListener:Landroid/hardware/camera2/utils/Decorator$DecoratorListener;

    #@13
    invoke-interface {v3, p2, p3}, Landroid/hardware/camera2/utils/Decorator$DecoratorListener;->onFinally(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    #@16
    .line 90
    .end local v1    # "result":Ljava/lang/Object;
    :goto_0
    return-object v1

    #@17
    .line 82
    :catch_0
    move-exception v0

    #@18
    .line 83
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@1b
    move-result-object v2

    #@1c
    .line 84
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Landroid/hardware/camera2/utils/Decorator;->mListener:Landroid/hardware/camera2/utils/Decorator$DecoratorListener;

    #@1e
    invoke-interface {v3, p2, p3, v2}, Landroid/hardware/camera2/utils/Decorator$DecoratorListener;->onCatchException(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@21
    move-result v3

    #@22
    if-nez v3, :cond_0

    #@24
    .line 85
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    .line 87
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    #@26
    .line 88
    iget-object v4, p0, Landroid/hardware/camera2/utils/Decorator;->mListener:Landroid/hardware/camera2/utils/Decorator$DecoratorListener;

    #@28
    invoke-interface {v4, p2, p3}, Landroid/hardware/camera2/utils/Decorator$DecoratorListener;->onFinally(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    #@2b
    .line 87
    throw v3

    #@2c
    .line 88
    .restart local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/utils/Decorator;->mListener:Landroid/hardware/camera2/utils/Decorator$DecoratorListener;

    #@2e
    invoke-interface {v3, p2, p3}, Landroid/hardware/camera2/utils/Decorator$DecoratorListener;->onFinally(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    #@31
    goto :goto_0
.end method
