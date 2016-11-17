.class public Landroid/net/rtp/AudioStream;
.super Landroid/net/rtp/RtpStream;
.source "AudioStream.java"


# instance fields
.field private mCodec:Landroid/net/rtp/AudioCodec;

.field private mDtmfType:I

.field private mGroup:Landroid/net/rtp/AudioGroup;


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/net/rtp/RtpStream;-><init>(Ljava/net/InetAddress;)V

    #@3
    .line 47
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/net/rtp/AudioStream;->mDtmfType:I

    #@6
    .line 58
    return-void
.end method


# virtual methods
.method public getCodec()Landroid/net/rtp/AudioCodec;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mCodec:Landroid/net/rtp/AudioCodec;

    #@2
    return-object v0
.end method

.method public getDtmfType()I
    .locals 1

    #@0
    .prologue
    .line 136
    iget v0, p0, Landroid/net/rtp/AudioStream;->mDtmfType:I

    #@2
    return v0
.end method

.method public getGroup()Landroid/net/rtp/AudioGroup;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    #@2
    return-object v0
.end method

.method public final isBusy()Z
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public join(Landroid/net/rtp/AudioGroup;)V
    .locals 1
    .param p1, "group"    # Landroid/net/rtp/AudioGroup;

    #@0
    .prologue
    .line 88
    monitor-enter p0

    #@1
    .line 89
    :try_start_0
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-ne v0, p1, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 90
    return-void

    #@7
    .line 92
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 93
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    #@d
    invoke-virtual {v0, p0}, Landroid/net/rtp/AudioGroup;->remove(Landroid/net/rtp/AudioStream;)V

    #@10
    .line 94
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    #@13
    .line 96
    :cond_1
    if-eqz p1, :cond_2

    #@15
    .line 97
    invoke-virtual {p1, p0}, Landroid/net/rtp/AudioGroup;->add(Landroid/net/rtp/AudioStream;)V

    #@18
    .line 98
    iput-object p1, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    :cond_2
    monitor-exit p0

    #@1b
    .line 87
    return-void

    #@1c
    .line 88
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit p0

    #@1e
    throw v0
.end method

.method public setCodec(Landroid/net/rtp/AudioCodec;)V
    .locals 2
    .param p1, "codec"    # Landroid/net/rtp/AudioCodec;

    #@0
    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/net/rtp/AudioStream;->isBusy()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Busy"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 123
    :cond_0
    iget v0, p1, Landroid/net/rtp/AudioCodec;->type:I

    #@11
    iget v1, p0, Landroid/net/rtp/AudioStream;->mDtmfType:I

    #@13
    if-ne v0, v1, :cond_1

    #@15
    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v1, "The type is used by DTMF"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 126
    :cond_1
    iput-object p1, p0, Landroid/net/rtp/AudioStream;->mCodec:Landroid/net/rtp/AudioCodec;

    #@20
    .line 119
    return-void
.end method

.method public setDtmfType(I)V
    .locals 2
    .param p1, "type"    # I

    #@0
    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/net/rtp/AudioStream;->isBusy()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Busy"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 157
    :cond_0
    const/4 v0, -0x1

    #@10
    if-eq p1, v0, :cond_3

    #@12
    .line 158
    const/16 v0, 0x60

    #@14
    if-lt p1, v0, :cond_1

    #@16
    const/16 v0, 0x7f

    #@18
    if-le p1, v0, :cond_2

    #@1a
    .line 159
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v1, "Invalid type"

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 161
    :cond_2
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mCodec:Landroid/net/rtp/AudioCodec;

    #@25
    if-eqz v0, :cond_3

    #@27
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mCodec:Landroid/net/rtp/AudioCodec;

    #@29
    iget v0, v0, Landroid/net/rtp/AudioCodec;->type:I

    #@2b
    if-ne p1, v0, :cond_3

    #@2d
    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2f
    const-string/jumbo v1, "The type is used by codec"

    #@32
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    .line 165
    :cond_3
    iput p1, p0, Landroid/net/rtp/AudioStream;->mDtmfType:I

    #@38
    .line 153
    return-void
.end method
