.class public Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;
.super Ljava/lang/Object;
.source "SocketConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/SocketConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectedSocket"
.end annotation


# instance fields
.field public final alpnProtocol:Lcom/android/okhttp/Protocol;

.field public final handshake:Lcom/android/okhttp/Handshake;

.field public final route:Lcom/android/okhttp/Route;

.field public final socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/Route;Ljava/net/Socket;)V
    .locals 1
    .param p1, "route"    # Lcom/android/okhttp/Route;
    .param p2, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 265
    iput-object p1, p0, Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;->route:Lcom/android/okhttp/Route;

    #@6
    .line 266
    iput-object p2, p0, Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;->socket:Ljava/net/Socket;

    #@8
    .line 267
    iput-object v0, p0, Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;->alpnProtocol:Lcom/android/okhttp/Protocol;

    #@a
    .line 268
    iput-object v0, p0, Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;->handshake:Lcom/android/okhttp/Handshake;

    #@c
    .line 264
    return-void
.end method

.method public constructor <init>(Lcom/android/okhttp/Route;Ljavax/net/ssl/SSLSocket;Lcom/android/okhttp/Protocol;Lcom/android/okhttp/Handshake;)V
    .locals 0
    .param p1, "route"    # Lcom/android/okhttp/Route;
    .param p2, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "alpnProtocol"    # Lcom/android/okhttp/Protocol;
    .param p4, "handshake"    # Lcom/android/okhttp/Handshake;

    #@0
    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 274
    iput-object p1, p0, Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;->route:Lcom/android/okhttp/Route;

    #@5
    .line 275
    iput-object p2, p0, Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;->socket:Ljava/net/Socket;

    #@7
    .line 276
    iput-object p3, p0, Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;->alpnProtocol:Lcom/android/okhttp/Protocol;

    #@9
    .line 277
    iput-object p4, p0, Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;->handshake:Lcom/android/okhttp/Handshake;

    #@b
    .line 273
    return-void
.end method
