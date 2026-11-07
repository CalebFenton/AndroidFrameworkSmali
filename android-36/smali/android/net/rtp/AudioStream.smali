.class public Landroid/net/rtp/AudioStream;
.super Landroid/net/rtp/RtpStream;
.source "AudioStream.java"


# instance fields
.field private greylist-max-o mCodec:Landroid/net/rtp/AudioCodec;

.field private greylist-max-o mDtmfType:I

.field private greylist-max-o mGroup:Landroid/net/rtp/AudioGroup;


# direct methods
.method public constructor whitelist <init>(Ljava/net/InetAddress;)V
    .registers 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Landroid/net/rtp/RtpStream;-><init>(Ljava/net/InetAddress;)V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/rtp/AudioStream;->mDtmfType:I

    .line 62
    return-void
.end method


# virtual methods
.method public whitelist getCodec()Landroid/net/rtp/AudioCodec;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mCodec:Landroid/net/rtp/AudioCodec;

    return-object v0
.end method

.method public whitelist getDtmfType()I
    .registers 2

    .line 138
    iget v0, p0, Landroid/net/rtp/AudioStream;->mDtmfType:I

    return v0
.end method

.method public whitelist getGroup()Landroid/net/rtp/AudioGroup;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    return-object v0
.end method

.method public final whitelist isBusy()Z
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist join(Landroid/net/rtp/AudioGroup;)V
    .registers 3
    .param p1, "group"    # Landroid/net/rtp/AudioGroup;

    .line 90
    monitor-enter p0

    .line 91
    :try_start_1
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    if-ne v0, p1, :cond_7

    .line 92
    monitor-exit p0

    return-void

    .line 94
    :cond_7
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    if-eqz v0, :cond_13

    .line 95
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    invoke-virtual {v0, p0}, Landroid/net/rtp/AudioGroup;->remove(Landroid/net/rtp/AudioStream;)V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    .line 98
    :cond_13
    if-eqz p1, :cond_1a

    .line 99
    invoke-virtual {p1, p0}, Landroid/net/rtp/AudioGroup;->add(Landroid/net/rtp/AudioStream;)V

    .line 100
    iput-object p1, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    .line 102
    :cond_1a
    monitor-exit p0

    .line 103
    return-void

    .line 102
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public whitelist setCodec(Landroid/net/rtp/AudioCodec;)V
    .registers 4
    .param p1, "codec"    # Landroid/net/rtp/AudioCodec;

    .line 122
    invoke-virtual {p0}, Landroid/net/rtp/AudioStream;->isBusy()Z

    move-result v0

    if-nez v0, :cond_17

    .line 125
    iget v0, p1, Landroid/net/rtp/AudioCodec;->type:I

    iget v1, p0, Landroid/net/rtp/AudioStream;->mDtmfType:I

    if-eq v0, v1, :cond_f

    .line 128
    iput-object p1, p0, Landroid/net/rtp/AudioStream;->mCodec:Landroid/net/rtp/AudioCodec;

    .line 129
    return-void

    .line 126
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type is used by DTMF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Busy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDtmfType(I)V
    .registers 4
    .param p1, "type"    # I

    .line 156
    invoke-virtual {p0}, Landroid/net/rtp/AudioStream;->isBusy()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 159
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2c

    .line 160
    const/16 v0, 0x60

    if-lt p1, v0, :cond_24

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_24

    .line 163
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mCodec:Landroid/net/rtp/AudioCodec;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mCodec:Landroid/net/rtp/AudioCodec;

    iget v0, v0, Landroid/net/rtp/AudioCodec;->type:I

    if-eq p1, v0, :cond_1c

    goto :goto_2c

    .line 164
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type is used by codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_2c
    :goto_2c
    iput p1, p0, Landroid/net/rtp/AudioStream;->mDtmfType:I

    .line 168
    return-void

    .line 157
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Busy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
