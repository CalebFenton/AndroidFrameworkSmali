.class Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;
.super Ljava/lang/Object;
.source "HandlerDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/dispatch/HandlerDispatcher;->dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/dispatch/HandlerDispatcher;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/dispatch/HandlerDispatcher;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0
    .param p2, "val$method"    # Ljava/lang/reflect/Method;
    .param p3, "val$args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 61
    .local p1, "this$0":Landroid/hardware/camera2/dispatch/HandlerDispatcher;, "Landroid/hardware/camera2/dispatch/HandlerDispatcher<TT;>;"
    iput-object p1, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;->this$0:Landroid/hardware/camera2/dispatch/HandlerDispatcher;

    #@2
    iput-object p2, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;->val$method:Ljava/lang/reflect/Method;

    #@4
    iput-object p3, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;->val$args:[Ljava/lang/Object;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    .line 65
    :try_start_0
    iget-object v5, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;->this$0:Landroid/hardware/camera2/dispatch/HandlerDispatcher;

    #@2
    invoke-static {v5}, Landroid/hardware/camera2/dispatch/HandlerDispatcher;->-get0(Landroid/hardware/camera2/dispatch/HandlerDispatcher;)Landroid/hardware/camera2/dispatch/Dispatchable;

    #@5
    move-result-object v5

    #@6
    iget-object v6, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;->val$method:Ljava/lang/reflect/Method;

    #@8
    iget-object v7, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;->val$args:[Ljava/lang/Object;

    #@a
    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/dispatch/Dispatchable;->dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 63
    :goto_0
    return-void

    #@e
    .line 76
    :catch_0
    move-exception v2

    #@f
    .line 77
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Throwable;)V

    #@12
    goto :goto_0

    #@13
    .line 73
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    #@14
    .line 75
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "HandlerDispatcher"

    #@17
    new-instance v6, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v7, "IllegalArgumentException while invoking "

    #@1f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v6

    #@23
    iget-object v7, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;->val$method:Ljava/lang/reflect/Method;

    #@25
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    invoke-static {v5, v6, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@30
    goto :goto_0

    #@31
    .line 70
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    #@32
    .line 72
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v5, "HandlerDispatcher"

    #@35
    new-instance v6, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v7, "IllegalAccessException while invoking "

    #@3d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    iget-object v7, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;->val$method:Ljava/lang/reflect/Method;

    #@43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    invoke-static {v5, v6, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4e
    goto :goto_0

    #@4f
    .line 66
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    #@50
    .line 67
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@53
    move-result-object v4

    #@54
    .line 69
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {v4}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Throwable;)V

    #@57
    goto :goto_0
.end method
