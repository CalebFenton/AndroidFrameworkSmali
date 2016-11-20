.class public interface abstract Lcom/android/okhttp/Interceptor;
.super Ljava/lang/Object;
.source "Interceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/Interceptor$Chain;
    }
.end annotation


# virtual methods
.method public abstract intercept(Lcom/android/okhttp/Interceptor$Chain;)Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
