.class public Landroid/hardware/camera2/dispatch/MethodNameInvoker;
.super Ljava/lang/Object;
.source "MethodNameInvoker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mMethods:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final mTarget:Landroid/hardware/camera2/dispatch/Dispatchable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/dispatch/Dispatchable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mTargetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/dispatch/Dispatchable;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/dispatch/Dispatchable",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 43
    .local p0, "this":Landroid/hardware/camera2/dispatch/MethodNameInvoker;, "Landroid/hardware/camera2/dispatch/MethodNameInvoker<TT;>;"
    .local p1, "target":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<TT;>;"
    .local p2, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@8
    .line 34
    iput-object v0, p0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->mMethods:Ljava/util/concurrent/ConcurrentHashMap;

    #@a
    .line 44
    iput-object p2, p0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->mTargetClass:Ljava/lang/Class;

    #@c
    .line 45
    iput-object p1, p0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->mTarget:Landroid/hardware/camera2/dispatch/Dispatchable;

    #@e
    .line 43
    return-void
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/hardware/camera2/dispatch/MethodNameInvoker;, "Landroid/hardware/camera2/dispatch/MethodNameInvoker<TT;>;"
    const/4 v8, 0x0

    #@1
    .line 67
    const-string/jumbo v3, "methodName must not be null"

    #@4
    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 69
    iget-object v3, p0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->mMethods:Ljava/util/concurrent/ConcurrentHashMap;

    #@9
    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Ljava/lang/reflect/Method;

    #@f
    .line 70
    .local v2, "targetMethod":Ljava/lang/reflect/Method;
    if-nez v2, :cond_2

    #@11
    .line 71
    iget-object v3, p0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->mTargetClass:Ljava/lang/Class;

    #@13
    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    #@16
    move-result-object v4

    #@17
    const/4 v3, 0x0

    #@18
    array-length v5, v4

    #@19
    :goto_0
    if-ge v3, v5, :cond_0

    #@1b
    aget-object v1, v4, v3

    #@1d
    .line 73
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_1

    #@27
    .line 74
    array-length v6, p2

    #@28
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@2b
    move-result-object v7

    #@2c
    array-length v7, v7

    #@2d
    if-ne v6, v7, :cond_1

    #@2f
    .line 75
    move-object v2, v1

    #@30
    .line 76
    iget-object v3, p0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->mMethods:Ljava/util/concurrent/ConcurrentHashMap;

    #@32
    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 81
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    if-nez v2, :cond_2

    #@37
    .line 82
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@39
    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v5, "Method "

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    const-string/jumbo v5, " does not exist on class "

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    iget-object v5, p0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->mTargetClass:Ljava/lang/Class;

    #@52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    .line 82
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v3

    #@5e
    .line 71
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@60
    goto :goto_0

    #@61
    .line 88
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_2
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->mTarget:Landroid/hardware/camera2/dispatch/Dispatchable;

    #@63
    invoke-interface {v3, v2, p2}, Landroid/hardware/camera2/dispatch/Dispatchable;->dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@66
    move-result-object v3

    #@67
    return-object v3

    #@68
    .line 89
    :catch_0
    move-exception v0

    #@69
    .line 90
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Throwable;)V

    #@6c
    .line 92
    return-object v8
.end method
