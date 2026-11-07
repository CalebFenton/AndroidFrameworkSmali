.class public interface abstract Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;
.super Ljava/lang/Object;
.source "FunctionalUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/FunctionalUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ThrowingRunnable"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 106
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;->runOrThrow()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    .line 109
    nop

    .line 110
    return-void

    .line 107
    :catch_5
    move-exception v0

    .line 108
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public abstract greylist-max-o runOrThrow()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
