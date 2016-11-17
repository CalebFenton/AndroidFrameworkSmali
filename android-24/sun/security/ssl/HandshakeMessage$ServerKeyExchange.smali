.class abstract Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
.super Lsun/security/ssl/HandshakeMessage;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ServerKeyExchange"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 535
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method messageType()I
    .locals 1

    #@0
    .prologue
    .line 537
    const/16 v0, 0xc

    #@2
    return v0
.end method
