.class public Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
.super Ljava/lang/Exception;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodAndArgsCaller"
.end annotation


# instance fields
.field private final mArgs:[Ljava/lang/String;

.field private final mMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;[Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 719
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    #@3
    .line 720
    iput-object p1, p0, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->mMethod:Ljava/lang/reflect/Method;

    #@5
    .line 721
    iput-object p2, p0, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->mArgs:[Ljava/lang/String;

    #@7
    .line 719
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    #@0
    .prologue
    .line 726
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->mMethod:Ljava/lang/reflect/Method;

    #@2
    const/4 v4, 0x1

    #@3
    new-array v4, v4, [Ljava/lang/Object;

    #@5
    iget-object v5, p0, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->mArgs:[Ljava/lang/String;

    #@7
    const/4 v6, 0x0

    #@8
    aput-object v5, v4, v6

    #@a
    const/4 v5, 0x0

    #@b
    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 724
    return-void

    #@f
    .line 729
    :catch_0
    move-exception v2

    #@10
    .line 730
    .local v2, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@13
    move-result-object v0

    #@14
    .line 731
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v3, v0, Ljava/lang/RuntimeException;

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 732
    check-cast v0, Ljava/lang/RuntimeException;

    #@1a
    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    #@1b
    .line 733
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    instance-of v3, v0, Ljava/lang/Error;

    #@1d
    if-eqz v3, :cond_1

    #@1f
    .line 734
    check-cast v0, Ljava/lang/Error;

    #@21
    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    #@22
    .line 736
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    #@24
    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@27
    throw v3

    #@28
    .line 727
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v2    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    #@29
    .line 728
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@2b
    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@2e
    throw v3
.end method
