.class abstract Landroid/nfc/tech/BasicTagTechnology;
.super Ljava/lang/Object;
.source "BasicTagTechnology.java"

# interfaces
.implements Landroid/nfc/tech/TagTechnology;


# static fields
.field private static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field mIsConnected:Z

.field mSelectedTechnology:I

.field final mTag:Landroid/nfc/Tag;


# direct methods
.method constructor <init>(Landroid/nfc/Tag;I)V
    .locals 0
    .param p1, "tag"    # Landroid/nfc/Tag;
    .param p2, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    iput-object p1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@5
    .line 40
    iput p2, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    #@7
    .line 38
    return-void
.end method


# virtual methods
.method checkConnected()V
    .locals 2

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@2
    invoke-virtual {v0}, Landroid/nfc/Tag;->getConnectedTechnology()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 51
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@c
    invoke-virtual {v0}, Landroid/nfc/Tag;->getConnectedTechnology()I

    #@f
    move-result v0

    #@10
    const/4 v1, -0x1

    #@11
    if-ne v0, v1, :cond_1

    #@13
    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    const-string/jumbo v1, "Call connect() first!"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 49
    :cond_1
    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 122
    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@3
    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v1}, Landroid/nfc/INfcTag;->resetTimeouts()V

    #@a
    .line 123
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@c
    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    #@f
    move-result-object v1

    #@10
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@12
    invoke-virtual {v2}, Landroid/nfc/Tag;->getServiceHandle()I

    #@15
    move-result v2

    #@16
    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->reconnect(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 127
    iput-boolean v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    #@1b
    .line 128
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@1d
    invoke-virtual {v1}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    #@20
    .line 117
    :goto_0
    return-void

    #@21
    .line 124
    :catch_0
    move-exception v0

    #@22
    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "NFC"

    #@25
    const-string/jumbo v2, "NFC service dead"

    #@28
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .line 127
    iput-boolean v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    #@2d
    .line 128
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@2f
    invoke-virtual {v1}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    #@32
    goto :goto_0

    #@33
    .line 126
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@34
    .line 127
    iput-boolean v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    #@36
    .line 128
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@38
    invoke-virtual {v2}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    #@3b
    .line 126
    throw v1
.end method

.method public connect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 73
    :try_start_0
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@2
    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    #@5
    move-result-object v2

    #@6
    iget-object v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@8
    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    #@b
    move-result v3

    #@c
    .line 74
    iget v4, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    #@e
    .line 73
    invoke-interface {v2, v3, v4}, Landroid/nfc/INfcTag;->connect(II)I

    #@11
    move-result v1

    #@12
    .line 76
    .local v1, "errorCode":I
    if-nez v1, :cond_0

    #@14
    .line 78
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@16
    iget v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    #@18
    invoke-virtual {v2, v3}, Landroid/nfc/Tag;->setConnectedTechnology(I)V

    #@1b
    .line 79
    const/4 v2, 0x1

    #@1c
    iput-boolean v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    #@1e
    .line 71
    return-void

    #@1f
    .line 80
    :cond_0
    const/16 v2, -0x15

    #@21
    if-ne v1, v2, :cond_1

    #@23
    .line 81
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@25
    const-string/jumbo v3, "Connecting to this technology is not supported by the NFC adapter."

    #@28
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 87
    .end local v1    # "errorCode":I
    :catch_0
    move-exception v0

    #@2d
    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    #@30
    const-string/jumbo v3, "NFC service dead"

    #@33
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    .line 89
    new-instance v2, Ljava/io/IOException;

    #@38
    const-string/jumbo v3, "NFC service died"

    #@3b
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v2

    #@3f
    .line 85
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "errorCode":I
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    #@41
    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    #@44
    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method getMaxTransceiveLengthInternal()I
    .locals 3

    #@0
    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@2
    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    #@5
    move-result-object v1

    #@6
    iget v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    #@8
    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->getMaxTransceiveLength(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 136
    :catch_0
    move-exception v0

    #@e
    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    #@11
    const-string/jumbo v2, "NFC service dead"

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 138
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public getTag()Landroid/nfc/Tag;
    .locals 1

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@2
    return-object v0
.end method

.method public isConnected()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 58
    iget-boolean v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 59
    return v3

    #@6
    .line 63
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@8
    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@e
    invoke-virtual {v2}, Landroid/nfc/Tag;->getServiceHandle()I

    #@11
    move-result v2

    #@12
    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->isPresent(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 64
    :catch_0
    move-exception v0

    #@18
    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    #@1b
    const-string/jumbo v2, "NFC service dead"

    #@1e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    .line 66
    return v3
.end method

.method public reconnect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 96
    iget-boolean v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 97
    new-instance v2, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v3, "Technology not connected yet"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 101
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@10
    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    #@13
    move-result-object v2

    #@14
    iget-object v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@16
    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    #@19
    move-result v3

    #@1a
    invoke-interface {v2, v3}, Landroid/nfc/INfcTag;->reconnect(I)I

    #@1d
    move-result v1

    #@1e
    .line 103
    .local v1, "errorCode":I
    if-eqz v1, :cond_1

    #@20
    .line 104
    const/4 v2, 0x0

    #@21
    iput-boolean v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    #@23
    .line 105
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@25
    invoke-virtual {v2}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    #@28
    .line 106
    new-instance v2, Ljava/io/IOException;

    #@2a
    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    #@2d
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 108
    .end local v1    # "errorCode":I
    :catch_0
    move-exception v0

    #@2f
    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v4, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    #@31
    .line 110
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@33
    invoke-virtual {v2}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    #@36
    .line 111
    const-string/jumbo v2, "NFC"

    #@39
    const-string/jumbo v3, "NFC service dead"

    #@3c
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    .line 112
    new-instance v2, Ljava/io/IOException;

    #@41
    const-string/jumbo v3, "NFC service died"

    #@44
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@47
    throw v2

    #@48
    .line 95
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "errorCode":I
    :cond_1
    return-void
.end method

.method transceive([BZ)[B
    .locals 4
    .param p1, "data"    # [B
    .param p2, "raw"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->checkConnected()V

    #@3
    .line 146
    :try_start_0
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@5
    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    #@8
    move-result-object v2

    #@9
    iget-object v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    #@b
    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    #@e
    move-result v3

    #@f
    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcTag;->transceive(I[BZ)Landroid/nfc/TransceiveResult;

    #@12
    move-result-object v1

    #@13
    .line 148
    .local v1, "result":Landroid/nfc/TransceiveResult;
    if-nez v1, :cond_0

    #@15
    .line 149
    new-instance v2, Ljava/io/IOException;

    #@17
    const-string/jumbo v3, "transceive failed"

    #@1a
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 153
    .end local v1    # "result":Landroid/nfc/TransceiveResult;
    :catch_0
    move-exception v0

    #@1f
    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    #@22
    const-string/jumbo v3, "NFC service dead"

    #@25
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    .line 155
    new-instance v2, Ljava/io/IOException;

    #@2a
    const-string/jumbo v3, "NFC service died"

    #@2d
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@30
    throw v2

    #@31
    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "result":Landroid/nfc/TransceiveResult;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/nfc/TransceiveResult;->getResponseOrThrow()[B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@34
    move-result-object v2

    #@35
    return-object v2
.end method
