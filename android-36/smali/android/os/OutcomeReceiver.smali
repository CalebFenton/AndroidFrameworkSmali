.class public interface abstract Landroid/os/OutcomeReceiver;
.super Ljava/lang/Object;
.source "OutcomeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public whitelist onError(Ljava/lang/Throwable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<TR;TE;>;"
    .local p1, "error":Ljava/lang/Throwable;, "TE;"
    return-void
.end method

.method public abstract whitelist onResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation
.end method
