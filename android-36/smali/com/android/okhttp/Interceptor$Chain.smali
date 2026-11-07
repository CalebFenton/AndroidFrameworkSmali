.class public interface abstract Lcom/android/okhttp/Interceptor$Chain;
.super Ljava/lang/Object;
.source "Interceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Interceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Chain"
.end annotation


# virtual methods
.method public abstract greylist-max-o connection()Lcom/android/okhttp/Connection;
.end method

.method public abstract greylist-max-o proceed(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o request()Lcom/android/okhttp/Request;
.end method
