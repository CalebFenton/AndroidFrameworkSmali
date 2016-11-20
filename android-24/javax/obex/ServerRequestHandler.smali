.class public Ljavax/obex/ServerRequestHandler;
.super Ljava/lang/Object;
.source "ServerRequestHandler.java"


# instance fields
.field private mConnectionId:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    const-wide/16 v0, -0x1

    #@5
    iput-wide v0, p0, Ljavax/obex/ServerRequestHandler;->mConnectionId:J

    #@7
    .line 77
    return-void
.end method


# virtual methods
.method public getConnectionId()J
    .locals 2

    #@0
    .prologue
    .line 105
    iget-wide v0, p0, Ljavax/obex/ServerRequestHandler;->mConnectionId:J

    #@2
    return-wide v0
.end method

.method public isSrmSupported()Z
    .locals 1

    #@0
    .prologue
    .line 285
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 1
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    #@0
    .prologue
    .line 203
    const/16 v0, 0xd1

    #@2
    return v0
.end method

.method public onAuthenticationFailure([B)V
    .locals 0
    .param p1, "userName"    # [B

    #@0
    .prologue
    .line 258
    return-void
.end method

.method public onClose()V
    .locals 0

    #@0
    .prologue
    .line 276
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 1
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    #@0
    .prologue
    .line 128
    const/16 v0, 0xa0

    #@2
    return v0
.end method

.method public onDelete(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 1
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    #@0
    .prologue
    .line 196
    const/16 v0, 0xd1

    #@2
    return v0
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 0
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    #@0
    .prologue
    .line 142
    return-void
.end method

.method public onGet(Ljavax/obex/Operation;)I
    .locals 1
    .param p1, "operation"    # Ljavax/obex/Operation;

    #@0
    .prologue
    .line 245
    const/16 v0, 0xd1

    #@2
    return v0
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 1
    .param p1, "operation"    # Ljavax/obex/Operation;

    #@0
    .prologue
    .line 224
    const/16 v0, 0xd1

    #@2
    return v0
.end method

.method public onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    .locals 1
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;
    .param p3, "backup"    # Z
    .param p4, "create"    # Z

    #@0
    .prologue
    .line 173
    const/16 v0, 0xd1

    #@2
    return v0
.end method

.method public setConnectionId(J)V
    .locals 3
    .param p1, "connectionId"    # J

    #@0
    .prologue
    .line 92
    const-wide/16 v0, -0x1

    #@2
    cmp-long v0, p1, v0

    #@4
    if-ltz v0, :cond_0

    #@6
    const-wide v0, 0xffffffffL

    #@b
    cmp-long v0, p1, v0

    #@d
    if-lez v0, :cond_1

    #@f
    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "Illegal Connection ID"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 95
    :cond_1
    iput-wide p1, p0, Ljavax/obex/ServerRequestHandler;->mConnectionId:J

    #@1a
    .line 91
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 267
    return-void
.end method
