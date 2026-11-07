.class public abstract Landroid/media/metrics/IMediaMetricsManager$Stub;
.super Landroid/os/Binder;
.source "IMediaMetricsManager.java"

# interfaces
.implements Landroid/media/metrics/IMediaMetricsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/metrics/IMediaMetricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/metrics/IMediaMetricsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getBundleSessionId:I = 0xb

.field static final blacklist TRANSACTION_getEditingSessionId:I = 0xa

.field static final blacklist TRANSACTION_getPlaybackSessionId:I = 0x2

.field static final blacklist TRANSACTION_getRecordingSessionId:I = 0x3

.field static final blacklist TRANSACTION_getTranscodingSessionId:I = 0x9

.field static final blacklist TRANSACTION_releaseSessionId:I = 0xd

.field static final blacklist TRANSACTION_reportBundleMetrics:I = 0xc

.field static final blacklist TRANSACTION_reportEditingEndedEvent:I = 0x8

.field static final blacklist TRANSACTION_reportNetworkEvent:I = 0x4

.field static final blacklist TRANSACTION_reportPlaybackErrorEvent:I = 0x5

.field static final blacklist TRANSACTION_reportPlaybackMetrics:I = 0x1

.field static final blacklist TRANSACTION_reportPlaybackStateEvent:I = 0x6

.field static final blacklist TRANSACTION_reportTrackChangeEvent:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 75
    const-string v0, "android.media.metrics.IMediaMetricsManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/metrics/IMediaMetricsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/metrics/IMediaMetricsManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 83
    if-nez p0, :cond_4

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 86
    :cond_4
    const-string v0, "android.media.metrics.IMediaMetricsManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 87
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/metrics/IMediaMetricsManager;

    if-eqz v1, :cond_14

    .line 88
    move-object v1, v0

    check-cast v1, Landroid/media/metrics/IMediaMetricsManager;

    return-object v1

    .line 90
    :cond_14
    new-instance v1, Landroid/media/metrics/IMediaMetricsManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/metrics/IMediaMetricsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 99
    packed-switch p0, :pswitch_data_2c

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 151
    :pswitch_5
    const-string v0, "releaseSessionId"

    return-object v0

    .line 147
    :pswitch_8
    const-string v0, "reportBundleMetrics"

    return-object v0

    .line 143
    :pswitch_b
    const-string v0, "getBundleSessionId"

    return-object v0

    .line 139
    :pswitch_e
    const-string v0, "getEditingSessionId"

    return-object v0

    .line 135
    :pswitch_11
    const-string v0, "getTranscodingSessionId"

    return-object v0

    .line 131
    :pswitch_14
    const-string v0, "reportEditingEndedEvent"

    return-object v0

    .line 127
    :pswitch_17
    const-string v0, "reportTrackChangeEvent"

    return-object v0

    .line 123
    :pswitch_1a
    const-string v0, "reportPlaybackStateEvent"

    return-object v0

    .line 119
    :pswitch_1d
    const-string v0, "reportPlaybackErrorEvent"

    return-object v0

    .line 115
    :pswitch_20
    const-string v0, "reportNetworkEvent"

    return-object v0

    .line 111
    :pswitch_23
    const-string v0, "getRecordingSessionId"

    return-object v0

    .line 107
    :pswitch_26
    const-string v0, "getPlaybackSessionId"

    return-object v0

    .line 103
    :pswitch_29
    const-string v0, "reportPlaybackMetrics"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 94
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 592
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 162
    invoke-static {p1}, Landroid/media/metrics/IMediaMetricsManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    const-string v0, "android.media.metrics.IMediaMetricsManager"

    .line 167
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 168
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 171
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    return v1

    .line 174
    :cond_16
    packed-switch p1, :pswitch_data_148

    .line 330
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 320
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 323
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v2, v3}, Landroid/media/metrics/IMediaMetricsManager$Stub;->releaseSessionId(Ljava/lang/String;I)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    goto/16 :goto_147

    .line 307
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 309
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 311
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 312
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/metrics/IMediaMetricsManager$Stub;->reportBundleMetrics(Ljava/lang/String;Landroid/os/PersistableBundle;I)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    goto/16 :goto_147

    .line 297
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    .end local v4    # "_arg2":I
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 298
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, v2}, Landroid/media/metrics/IMediaMetricsManager$Stub;->getBundleSessionId(I)Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    goto/16 :goto_147

    .line 287
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 288
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {p0, v2}, Landroid/media/metrics/IMediaMetricsManager$Stub;->getEditingSessionId(I)Ljava/lang/String;

    move-result-object v3

    .line 290
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    goto/16 :goto_147

    .line 277
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 278
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, v2}, Landroid/media/metrics/IMediaMetricsManager$Stub;->getTranscodingSessionId(I)Ljava/lang/String;

    move-result-object v3

    .line 280
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    goto/16 :goto_147

    .line 264
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/metrics/EditingEndedEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/metrics/EditingEndedEvent;

    .line 268
    .local v3, "_arg1":Landroid/media/metrics/EditingEndedEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 269
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/metrics/IMediaMetricsManager$Stub;->reportEditingEndedEvent(Ljava/lang/String;Landroid/media/metrics/EditingEndedEvent;I)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    goto/16 :goto_147

    .line 251
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/metrics/EditingEndedEvent;
    .end local v4    # "_arg2":I
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 253
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/metrics/TrackChangeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/metrics/TrackChangeEvent;

    .line 255
    .local v3, "_arg1":Landroid/media/metrics/TrackChangeEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 256
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/metrics/IMediaMetricsManager$Stub;->reportTrackChangeEvent(Ljava/lang/String;Landroid/media/metrics/TrackChangeEvent;I)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    goto/16 :goto_147

    .line 238
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/metrics/TrackChangeEvent;
    .end local v4    # "_arg2":I
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 240
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/metrics/PlaybackStateEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/metrics/PlaybackStateEvent;

    .line 242
    .local v3, "_arg1":Landroid/media/metrics/PlaybackStateEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 243
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/metrics/IMediaMetricsManager$Stub;->reportPlaybackStateEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackStateEvent;I)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    goto :goto_147

    .line 225
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/metrics/PlaybackStateEvent;
    .end local v4    # "_arg2":I
    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 227
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/metrics/PlaybackErrorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/metrics/PlaybackErrorEvent;

    .line 229
    .local v3, "_arg1":Landroid/media/metrics/PlaybackErrorEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 230
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/metrics/IMediaMetricsManager$Stub;->reportPlaybackErrorEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackErrorEvent;I)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    goto :goto_147

    .line 212
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/metrics/PlaybackErrorEvent;
    .end local v4    # "_arg2":I
    :pswitch_ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 214
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/metrics/NetworkEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/metrics/NetworkEvent;

    .line 216
    .local v3, "_arg1":Landroid/media/metrics/NetworkEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 217
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/metrics/IMediaMetricsManager$Stub;->reportNetworkEvent(Ljava/lang/String;Landroid/media/metrics/NetworkEvent;I)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    goto :goto_147

    .line 202
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/metrics/NetworkEvent;
    .end local v4    # "_arg2":I
    :pswitch_109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 203
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2}, Landroid/media/metrics/IMediaMetricsManager$Stub;->getRecordingSessionId(I)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    goto :goto_147

    .line 192
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_11b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2}, Landroid/media/metrics/IMediaMetricsManager$Stub;->getPlaybackSessionId(I)Ljava/lang/String;

    move-result-object v3

    .line 195
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    goto :goto_147

    .line 179
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_12d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/metrics/PlaybackMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/metrics/PlaybackMetrics;

    .line 183
    .local v3, "_arg1":Landroid/media/metrics/PlaybackMetrics;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 184
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/metrics/IMediaMetricsManager$Stub;->reportPlaybackMetrics(Ljava/lang/String;Landroid/media/metrics/PlaybackMetrics;I)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    nop

    .line 333
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/metrics/PlaybackMetrics;
    .end local v4    # "_arg2":I
    :goto_147
    return v1

    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_12d
        :pswitch_11b
        :pswitch_109
        :pswitch_ef
        :pswitch_d5
        :pswitch_bb
        :pswitch_a0
        :pswitch_85
        :pswitch_72
        :pswitch_5f
        :pswitch_4c
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
