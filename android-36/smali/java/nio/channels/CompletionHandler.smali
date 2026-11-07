.class public interface abstract Ljava/nio/channels/CompletionHandler;
.super Ljava/lang/Object;
.source "CompletionHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract whitelist test-api completed(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TA;)V"
        }
    .end annotation
.end method

.method public abstract whitelist test-api failed(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "TA;)V"
        }
    .end annotation
.end method
