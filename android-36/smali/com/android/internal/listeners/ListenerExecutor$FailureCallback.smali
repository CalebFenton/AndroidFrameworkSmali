.class public interface abstract Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;
.super Ljava/lang/Object;
.source "ListenerExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/listeners/ListenerExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FailureCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "ListenerOperation::Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract blacklist onFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "ListenerOperation;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method
