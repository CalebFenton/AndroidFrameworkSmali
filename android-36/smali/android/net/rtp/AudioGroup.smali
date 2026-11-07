.class public Landroid/net/rtp/AudioGroup;
.super Ljava/lang/Object;
.source "AudioGroup.java"


# static fields
.field public static final whitelist MODE_ECHO_SUPPRESSION:I = 0x3

.field private static final greylist-max-o MODE_LAST:I = 0x3

.field public static final whitelist MODE_MUTED:I = 0x1

.field public static final whitelist MODE_NORMAL:I = 0x2

.field public static final whitelist MODE_ON_HOLD:I


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private greylist-max-o mMode:I

.field private greylist-max-o mNative:J

.field private final greylist-max-o mStreams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/rtp/AudioStream;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 107
    const-string v0, "rtp_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/rtp/AudioGroup;-><init>(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/rtp/AudioGroup;->mMode:I

    .line 124
    iput-object p1, p0, Landroid/net/rtp/AudioGroup;->mContext:Landroid/content/Context;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    .line 126
    return-void
.end method

.method private native blacklist nativeAdd(IILjava/lang/String;ILjava/lang/String;ILandroid/os/Parcel;)J
.end method

.method private native greylist-max-o nativeRemove(J)V
.end method

.method private native greylist-max-o nativeSendDtmf(I)V
.end method

.method private native greylist-max-o nativeSetMode(I)V
.end method


# virtual methods
.method declared-synchronized greylist-max-o add(Landroid/net/rtp/AudioStream;)V
    .registers 13
    .param p1, "stream"    # Landroid/net/rtp/AudioStream;

    monitor-enter p0

    .line 166
    :try_start_1
    iget-object v0, p0, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7d

    if-nez v0, :cond_7a

    .line 168
    :try_start_9
    invoke-virtual {p1}, Landroid/net/rtp/AudioStream;->getCodec()Landroid/net/rtp/AudioCodec;

    move-result-object v0

    move-object v1, v0

    .line 169
    .local v1, "codec":Landroid/net/rtp/AudioCodec;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d %s %s"

    iget v3, v1, Landroid/net/rtp/AudioCodec;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v1, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    iget-object v5, v1, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 173
    .local v7, "codecSpec":Ljava/lang/String;
    iget-object v0, p0, Landroid/net/rtp/AudioGroup;->mContext:Landroid/content/Context;

    .line 174
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v0
    :try_end_2f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_2f} :catch_72
    .catchall {:try_start_9 .. :try_end_2f} :catchall_7d

    move-object v10, v0

    .line 175
    .local v10, "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :try_start_30
    invoke-virtual {p1}, Landroid/net/rtp/AudioStream;->getMode()I

    move-result v3

    invoke-virtual {p1}, Landroid/net/rtp/AudioStream;->getSocket()I

    move-result v4

    .line 176
    invoke-virtual {p1}, Landroid/net/rtp/AudioStream;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 177
    invoke-virtual {p1}, Landroid/net/rtp/AudioStream;->getRemotePort()I

    move-result v6

    invoke-virtual {p1}, Landroid/net/rtp/AudioStream;->getDtmfType()I

    move-result v8

    .line 178
    invoke-virtual {v10}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v9
    :try_end_4c
    .catchall {:try_start_30 .. :try_end_4c} :catchall_62

    .line 175
    move-object v2, p0

    :try_start_4d
    invoke-direct/range {v2 .. v9}, Landroid/net/rtp/AudioGroup;->nativeAdd(IILjava/lang/String;ILjava/lang/String;ILandroid/os/Parcel;)J

    move-result-wide v3
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_60

    .line 179
    .local v3, "id":J
    if-eqz v10, :cond_56

    :try_start_53
    invoke-virtual {v10}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 180
    .end local v10    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    .end local p0    # "this":Landroid/net/rtp/AudioGroup;
    :cond_56
    iget-object v0, v2, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Ljava/lang/NullPointerException; {:try_start_53 .. :try_end_5f} :catch_70
    .catchall {:try_start_53 .. :try_end_5f} :catchall_82

    .line 183
    .end local v1    # "codec":Landroid/net/rtp/AudioCodec;
    .end local v3    # "id":J
    .end local v7    # "codecSpec":Ljava/lang/String;
    goto :goto_7b

    .line 173
    .restart local v1    # "codec":Landroid/net/rtp/AudioCodec;
    .restart local v7    # "codecSpec":Ljava/lang/String;
    .restart local v10    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :catchall_60
    move-exception v0

    goto :goto_64

    :catchall_62
    move-exception v0

    move-object v2, p0

    :goto_64
    move-object v3, v0

    if-eqz v10, :cond_6f

    :try_start_67
    invoke-virtual {v10}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_6f

    :catchall_6b
    move-exception v0

    :try_start_6c
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "stream":Landroid/net/rtp/AudioStream;
    :cond_6f
    :goto_6f
    throw v3
    :try_end_70
    .catch Ljava/lang/NullPointerException; {:try_start_6c .. :try_end_70} :catch_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_82

    .line 181
    .end local v1    # "codec":Landroid/net/rtp/AudioCodec;
    .end local v7    # "codecSpec":Ljava/lang/String;
    .end local v10    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    .restart local p1    # "stream":Landroid/net/rtp/AudioStream;
    :catch_70
    move-exception v0

    goto :goto_74

    :catch_72
    move-exception v0

    move-object v2, p0

    .line 182
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_74
    :try_start_74
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7a
    .catchall {:try_start_74 .. :try_end_7a} :catchall_82

    .line 166
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_7a
    move-object v2, p0

    .line 185
    :goto_7b
    monitor-exit p0

    return-void

    .line 165
    .end local p1    # "stream":Landroid/net/rtp/AudioStream;
    :catchall_7d
    move-exception v0

    move-object v2, p0

    :goto_7f
    move-object p1, v0

    :try_start_80
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_82

    throw p1

    :catchall_82
    move-exception v0

    goto :goto_7f
.end method

.method public whitelist clear()V
    .registers 6

    .line 221
    invoke-virtual {p0}, Landroid/net/rtp/AudioGroup;->getStreams()[Landroid/net/rtp/AudioStream;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    .line 222
    .local v3, "stream":Landroid/net/rtp/AudioStream;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V

    .line 221
    .end local v3    # "stream":Landroid/net/rtp/AudioStream;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 224
    :cond_11
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 228
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/rtp/AudioGroup;->nativeRemove(J)V

    .line 229
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 230
    return-void
.end method

.method public whitelist getMode()I
    .registers 2

    .line 141
    iget v0, p0, Landroid/net/rtp/AudioGroup;->mMode:I

    return v0
.end method

.method public whitelist getStreams()[Landroid/net/rtp/AudioStream;
    .registers 3

    .line 132
    monitor-enter p0

    .line 133
    :try_start_1
    iget-object v0, p0, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/rtp/AudioStream;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/rtp/AudioStream;

    monitor-exit p0

    return-object v0

    .line 134
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method declared-synchronized greylist-max-o remove(Landroid/net/rtp/AudioStream;)V
    .registers 5
    .param p1, "stream"    # Landroid/net/rtp/AudioStream;

    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v0, p0, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 193
    .local v0, "id":Ljava/lang/Long;
    if-eqz v0, :cond_12

    .line 194
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/net/rtp/AudioGroup;->nativeRemove(J)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 196
    .end local p0    # "this":Landroid/net/rtp/AudioGroup;
    :cond_12
    monitor-exit p0

    return-void

    .line 191
    .end local v0    # "id":Ljava/lang/Long;
    .end local p1    # "stream":Landroid/net/rtp/AudioStream;
    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public whitelist sendDtmf(I)V
    .registers 4
    .param p1, "event"    # I

    .line 207
    if-ltz p1, :cond_f

    const/16 v0, 0xf

    if-gt p1, v0, :cond_f

    .line 210
    monitor-enter p0

    .line 211
    :try_start_7
    invoke-direct {p0, p1}, Landroid/net/rtp/AudioGroup;->nativeSendDtmf(I)V

    .line 212
    monitor-exit p0

    .line 213
    return-void

    .line 212
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v0

    .line 208
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 153
    if-ltz p1, :cond_10

    const/4 v0, 0x3

    if-gt p1, v0, :cond_10

    .line 156
    monitor-enter p0

    .line 157
    :try_start_6
    invoke-direct {p0, p1}, Landroid/net/rtp/AudioGroup;->nativeSetMode(I)V

    .line 158
    iput p1, p0, Landroid/net/rtp/AudioGroup;->mMode:I

    .line 159
    monitor-exit p0

    .line 160
    return-void

    .line 159
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0

    .line 154
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
