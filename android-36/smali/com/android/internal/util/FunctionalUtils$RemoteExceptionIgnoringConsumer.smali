.class public interface abstract Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;
.super Ljava/lang/Object;
.source "FunctionalUtils.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/FunctionalUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteExceptionIgnoringConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 167
    .local p0, "this":Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;, "Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;->acceptOrThrow(Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 170
    goto :goto_5

    .line 168
    :catch_4
    move-exception v0

    .line 171
    :goto_5
    return-void
.end method

.method public abstract greylist-max-o acceptOrThrow(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
