.class public interface abstract Lcom/android/okhttp/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# virtual methods
.method public abstract onFailure(Lcom/android/okhttp/Request;Ljava/io/IOException;)V
.end method

.method public abstract onResponse(Lcom/android/okhttp/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
