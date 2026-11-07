.class public Landroid/net/SocketRemoteAddressChangedException;
.super Ljava/lang/Exception;
.source "SocketRemoteAddressChangedException.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 32
    const-string v0, "The remote address of the socket changed"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method
