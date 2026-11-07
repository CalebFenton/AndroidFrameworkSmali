.class public interface abstract Lcom/android/okhttp/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# virtual methods
.method public abstract greylist-max-o getHandshake()Lcom/android/okhttp/Handshake;
.end method

.method public abstract greylist-max-o getProtocol()Lcom/android/okhttp/Protocol;
.end method

.method public abstract greylist-max-o getRoute()Lcom/android/okhttp/Route;
.end method

.method public abstract greylist getSocket()Ljava/net/Socket;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end method
