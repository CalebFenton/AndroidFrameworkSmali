.class public interface abstract Landroid/provider/MediaCognitionProcessingCallback;
.super Ljava/lang/Object;
.source "MediaCognitionProcessingCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract whitelist onFailure(Ljava/lang/String;)V
.end method

.method public abstract whitelist onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/provider/MediaCognitionProcessingResponse;",
            ">;)V"
        }
    .end annotation
.end method
