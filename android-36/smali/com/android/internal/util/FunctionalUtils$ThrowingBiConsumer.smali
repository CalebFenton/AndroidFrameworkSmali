.class public interface abstract Lcom/android/internal/util/FunctionalUtils$ThrowingBiConsumer;
.super Ljava/lang/Object;
.source "FunctionalUtils.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/FunctionalUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ThrowingBiConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "TA;TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .line 243
    .local p0, "this":Lcom/android/internal/util/FunctionalUtils$ThrowingBiConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingBiConsumer<TA;TB;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/internal/util/FunctionalUtils$ThrowingBiConsumer;->acceptOrThrow(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    .line 246
    nop

    .line 247
    return-void

    .line 244
    :catch_5
    move-exception v0

    .line 245
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public abstract blacklist acceptOrThrow(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
