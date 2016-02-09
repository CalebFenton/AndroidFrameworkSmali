.class public Landroid/net/rtp/AudioGroup;
.super Ljava/lang/Object;
.source "AudioGroup.java"


# static fields
.field public static final MODE_ECHO_SUPPRESSION:I = 0x3

.field private static final MODE_LAST:I = 0x3

.field public static final MODE_MUTED:I = 0x1

.field public static final MODE_NORMAL:I = 0x2

.field public static final MODE_ON_HOLD:I


# instance fields
.field private mMode:I

.field private mNative:J

.field private final mStreams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/rtp/AudioStream;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 100
    const-string/jumbo v0, "rtp_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/net/rtp/AudioGroup;->mMode:I

    #@6
    .line 107
    new-instance v0, Ljava/util/HashMap;

    #@8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@b
    iput-object v0, p0, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    #@d
    .line 106
    return-void
.end method

.method private native nativeAdd(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)J
.end method

.method private native nativeRemove(J)V
.end method

.method private native nativeSendDtmf(I)V
.end method

.method private native nativeSetMode(I)V
.end method


# virtual methods
.method declared-synchronized add(Landroid/net/rtp/AudioStream;)V
    .locals 12
    .param p1, "stream"    # Landroid/net/rtp/AudioStream;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 148
    :try_start_0
    iget-object v0, p0, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    #@3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 150
    :try_start_1
    invoke-virtual {p1}, Landroid/net/rtp/AudioStream;->getCodec()Landroid/net/rtp/AudioCodec;

    #@c
    move-result-object v8

    #@d
    .line 151
    .local v8, "codec":Landroid/net/rtp/AudioCodec;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@f
    const-string/jumbo v1, "%d %s %s"

    #@12
    const/4 v2, 0x3

    #@13
    new-array v2, v2, [Ljava/lang/Object;

    #@15
    iget v3, v8, Landroid/net/rtp/AudioCodec;->type:I

    #@17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v3

    #@1b
    const/4 v4, 0x0

    #@1c
    aput-object v3, v2, v4

    #@1e
    .line 152
    iget-object v3, v8, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    #@20
    const/4 v4, 0x1

    #@21
    aput-object v3, v2, v4

    #@23
    iget-object v3, v8, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    #@25
    const/4 v4, 0x2

    #@26
    aput-object v3, v2, v4

    #@28
    .line 151
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    .line 153
    .local v5, "codecSpec":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/rtp/AudioStream;->getMode()I

    #@2f
    move-result v1

    #@30
    invoke-virtual {p1}, Landroid/net/rtp/AudioStream;->getSocket()I

    #@33
    move-result v2

    #@34
    .line 154
    invoke-virtual {p1}, Landroid/net/rtp/AudioStream;->getRemoteAddress()Ljava/net/InetAddress;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    .line 155
    invoke-virtual {p1}, Landroid/net/rtp/AudioStream;->getRemotePort()I

    #@3f
    move-result v4

    #@40
    invoke-virtual {p1}, Landroid/net/rtp/AudioStream;->getDtmfType()I

    #@43
    move-result v6

    #@44
    .line 156
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    #@47
    move-result-object v7

    #@48
    move-object v0, p0

    #@49
    .line 153
    invoke-direct/range {v0 .. v7}, Landroid/net/rtp/AudioGroup;->nativeAdd(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)J

    #@4c
    move-result-wide v10

    #@4d
    .line 157
    .local v10, "id":J
    iget-object v0, p0, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    #@4f
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@52
    move-result-object v1

    #@53
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    .end local v5    # "codecSpec":Ljava/lang/String;
    .end local v8    # "codec":Landroid/net/rtp/AudioCodec;
    .end local v10    # "id":J
    :cond_0
    monitor-exit p0

    #@57
    .line 147
    return-void

    #@58
    .line 158
    :catch_0
    move-exception v9

    #@59
    .line 159
    .local v9, "e":Ljava/lang/NullPointerException;
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5b
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@5e
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5f
    .end local v9    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v0

    #@60
    monitor-exit p0

    #@61
    throw v0
.end method

.method public clear()V
    .locals 5

    #@0
    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/net/rtp/AudioGroup;->getStreams()[Landroid/net/rtp/AudioStream;

    #@3
    move-result-object v2

    #@4
    const/4 v1, 0x0

    #@5
    array-length v3, v2

    #@6
    :goto_0
    if-ge v1, v3, :cond_0

    #@8
    aget-object v0, v2, v1

    #@a
    .line 199
    .local v0, "stream":Landroid/net/rtp/AudioStream;
    const/4 v4, 0x0

    #@b
    invoke-virtual {v0, v4}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V

    #@e
    .line 198
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 197
    .end local v0    # "stream":Landroid/net/rtp/AudioStream;
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    const-wide/16 v0, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Landroid/net/rtp/AudioGroup;->nativeRemove(J)V

    #@5
    .line 206
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 204
    return-void
.end method

.method public getMode()I
    .locals 1

    #@0
    .prologue
    .line 123
    iget v0, p0, Landroid/net/rtp/AudioGroup;->mMode:I

    #@2
    return v0
.end method

.method public getStreams()[Landroid/net/rtp/AudioStream;
    .locals 2

    #@0
    .prologue
    .line 114
    monitor-enter p0

    #@1
    .line 115
    :try_start_0
    iget-object v0, p0, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    #@3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@6
    move-result-object v0

    #@7
    iget-object v1, p0, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    #@9
    invoke-interface {v1}, Ljava/util/Map;->size()I

    #@c
    move-result v1

    #@d
    new-array v1, v1, [Landroid/net/rtp/AudioStream;

    #@f
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, [Landroid/net/rtp/AudioStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit p0

    #@16
    return-object v0

    #@17
    .line 114
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method declared-synchronized remove(Landroid/net/rtp/AudioStream;)V
    .locals 4
    .param p1, "stream"    # Landroid/net/rtp/AudioStream;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 169
    :try_start_0
    iget-object v1, p0, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    #@3
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/Long;

    #@9
    .line 170
    .local v0, "id":Ljava/lang/Long;
    if-eqz v0, :cond_0

    #@b
    .line 171
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@e
    move-result-wide v2

    #@f
    invoke-direct {p0, v2, v3}, Landroid/net/rtp/AudioGroup;->nativeRemove(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 168
    return-void

    #@14
    .end local v0    # "id":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit p0

    #@16
    throw v1
.end method

.method public sendDtmf(I)V
    .locals 2
    .param p1, "event"    # I

    #@0
    .prologue
    .line 184
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0xf

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 185
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Invalid event"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 187
    :cond_1
    monitor-enter p0

    #@10
    .line 188
    :try_start_0
    invoke-direct {p0, p1}, Landroid/net/rtp/AudioGroup;->nativeSendDtmf(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit p0

    #@14
    .line 183
    return-void

    #@15
    .line 187
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 135
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x3

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Invalid mode"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 138
    :cond_1
    monitor-enter p0

    #@f
    .line 139
    :try_start_0
    invoke-direct {p0, p1}, Landroid/net/rtp/AudioGroup;->nativeSetMode(I)V

    #@12
    .line 140
    iput p1, p0, Landroid/net/rtp/AudioGroup;->mMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit p0

    #@15
    .line 134
    return-void

    #@16
    .line 138
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method
