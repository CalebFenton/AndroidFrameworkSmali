.class abstract Landroid/nfc/tech/BasicTagTechnology;
.super Ljava/lang/Object;
.source "BasicTagTechnology.java"

# interfaces
.implements Landroid/nfc/tech/TagTechnology;


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "NFC"


# instance fields
.field greylist-max-o mIsConnected:Z

.field greylist-max-o mSelectedTechnology:I

.field final greylist-max-o mTag:Landroid/nfc/Tag;


# direct methods
.method constructor greylist-max-o <init>(Landroid/nfc/Tag;I)V
    .registers 3
    .param p1, "tag"    # Landroid/nfc/Tag;
    .param p2, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 40
    iput p2, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    .line 41
    return-void
.end method


# virtual methods
.method greylist-max-o checkConnected()V
    .registers 3

    .line 50
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getConnectedTechnology()I

    move-result v0

    iget v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 51
    invoke-virtual {v0}, Landroid/nfc/Tag;->getConnectedTechnology()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 54
    return-void

    .line 52
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call connect() first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    invoke-interface {v1}, Landroid/nfc/INfcTag;->resetTimeouts()V

    .line 126
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->reconnect(I)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_19} :catch_1c
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    .line 130
    goto :goto_25

    :catchall_1a
    move-exception v1

    goto :goto_2e

    .line 127
    :catch_1c
    move-exception v1

    .line 128
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1d
    const-string v2, "NFC"

    const-string v3, "NFC service dead"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_1a

    .line 130
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_25
    iput-boolean v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 131
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    .line 132
    nop

    .line 133
    return-void

    .line 130
    :goto_2e
    iput-boolean v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 131
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    .line 132
    throw v1
.end method

.method public whitelist connect()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    const-string v0, "NFC"

    :try_start_2
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    iget v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    invoke-interface {v1, v2, v3}, Landroid/nfc/INfcTag;->connect(II)I

    move-result v1

    .line 76
    .local v1, "errorCode":I
    if-nez v1, :cond_32

    .line 78
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    iget v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    invoke-virtual {v2, v3}, Landroid/nfc/Tag;->setConnectedTechnology(I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 82
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 93
    .end local v1    # "errorCode":I
    nop

    .line 94
    return-void

    .line 79
    .restart local v1    # "errorCode":I
    :cond_25
    const-string v2, "Close other technology first!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Only one TagTechnology can be connected at a time."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/nfc/tech/BasicTagTechnology;
    throw v2

    .line 83
    .restart local p0    # "this":Landroid/nfc/tech/BasicTagTechnology;
    :cond_32
    const/16 v2, -0x15

    if-ne v1, v2, :cond_3e

    .line 84
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Connecting to this technology is not supported by the NFC adapter."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/nfc/tech/BasicTagTechnology;
    throw v2

    .line 88
    .restart local p0    # "this":Landroid/nfc/tech/BasicTagTechnology;
    :cond_3e
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/BasicTagTechnology;
    throw v2
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_44} :catch_44

    .line 90
    .end local v1    # "errorCode":I
    .restart local p0    # "this":Landroid/nfc/tech/BasicTagTechnology;
    :catch_44
    move-exception v1

    .line 91
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "NFC service dead"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    new-instance v0, Ljava/io/IOException;

    const-string v2, "NFC service died"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o getMaxTransceiveLengthInternal()I
    .registers 4

    .line 138
    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    iget v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    invoke-interface {v0, v1}, Landroid/nfc/INfcTag;->getMaxTransceiveLength(I)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 139
    :catch_d
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getTag()Landroid/nfc/Tag;
    .registers 2

    .line 45
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    return-object v0
.end method

.method public whitelist isConnected()Z
    .registers 5

    .line 58
    iget-boolean v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 59
    return v1

    .line 63
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/nfc/INfcTag;->isPresent(I)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v0

    .line 64
    :catch_17
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "NFC service dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    return v1
.end method

.method public greylist-max-o reconnect()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-boolean v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    if-eqz v0, :cond_3d

    .line 104
    const/4 v0, 0x0

    :try_start_5
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->reconnect(I)I

    move-result v1

    .line 106
    .local v1, "errorCode":I
    if-nez v1, :cond_19

    .line 116
    .end local v1    # "errorCode":I
    nop

    .line 117
    return-void

    .line 107
    .restart local v1    # "errorCode":I
    :cond_19
    iput-boolean v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 108
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    .line 109
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/BasicTagTechnology;
    throw v2
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_26} :catch_26

    .line 111
    .end local v1    # "errorCode":I
    .restart local p0    # "this":Landroid/nfc/tech/BasicTagTechnology;
    :catch_26
    move-exception v1

    .line 112
    .local v1, "e":Landroid/os/RemoteException;
    iput-boolean v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 113
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    .line 114
    const-string v0, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    new-instance v0, Ljava/io/IOException;

    const-string v2, "NFC service died"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Technology not connected yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o transceive([BZ)[B
    .registers 6
    .param p1, "data"    # [B
    .param p2, "raw"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->checkConnected()V

    .line 149
    :try_start_3
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcTag;->transceive(I[BZ)Landroid/nfc/TransceiveResult;

    move-result-object v0

    .line 151
    .local v0, "result":Landroid/nfc/TransceiveResult;
    if-eqz v0, :cond_1a

    .line 154
    invoke-virtual {v0}, Landroid/nfc/TransceiveResult;->getResponseOrThrow()[B

    move-result-object v1

    return-object v1

    .line 152
    :cond_1a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "transceive failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/nfc/tech/BasicTagTechnology;
    .end local p1    # "data":[B
    .end local p2    # "raw":Z
    throw v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_22} :catch_22

    .line 156
    .end local v0    # "result":Landroid/nfc/TransceiveResult;
    .restart local p0    # "this":Landroid/nfc/tech/BasicTagTechnology;
    .restart local p1    # "data":[B
    .restart local p2    # "raw":Z
    :catch_22
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    new-instance v1, Ljava/io/IOException;

    const-string v2, "NFC service died"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
