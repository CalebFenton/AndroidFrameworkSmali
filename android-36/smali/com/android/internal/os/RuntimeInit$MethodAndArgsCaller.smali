.class Lcom/android/internal/os/RuntimeInit$MethodAndArgsCaller;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodAndArgsCaller"
.end annotation


# instance fields
.field private final blacklist mArgs:[Ljava/lang/String;

.field private final blacklist mMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/reflect/Method;[Ljava/lang/String;)V
    .registers 3
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/String;

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iput-object p1, p0, Lcom/android/internal/os/RuntimeInit$MethodAndArgsCaller;->mMethod:Ljava/lang/reflect/Method;

    .line 588
    iput-object p2, p0, Lcom/android/internal/os/RuntimeInit$MethodAndArgsCaller;->mArgs:[Ljava/lang/String;

    .line 589
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/RuntimeInit$MethodAndArgsCaller;->mMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/internal/os/RuntimeInit$MethodAndArgsCaller;->mArgs:[Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_29
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_c} :catch_e

    .line 604
    nop

    .line 605
    return-void

    .line 596
    :catch_e
    move-exception v0

    .line 597
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 598
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_25

    .line 600
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_1f

    .line 601
    move-object v2, v1

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 603
    :cond_1f
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 599
    :cond_25
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 594
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_29
    move-exception v0

    .line 595
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
