.class public final Landroid/bluetooth/BluetoothHeadsetClientCall;
.super Ljava/lang/Object;
.source "BluetoothHeadsetClientCall.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/bluetooth/Attributable;


# static fields
.field public static final blacklist CALL_STATE_ACTIVE:I = 0x0

.field public static final blacklist CALL_STATE_ALERTING:I = 0x3

.field public static final blacklist CALL_STATE_DIALING:I = 0x2

.field public static final blacklist CALL_STATE_HELD:I = 0x1

.field public static final blacklist CALL_STATE_HELD_BY_RESPONSE_AND_HOLD:I = 0x6

.field public static final blacklist CALL_STATE_INCOMING:I = 0x4

.field public static final blacklist CALL_STATE_TERMINATED:I = 0x7

.field public static final blacklist CALL_STATE_WAITING:I = 0x5

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCreationElapsedMilli:J

.field private final blacklist mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final blacklist mId:I

.field private final blacklist mInBandRing:Z

.field private blacklist mMultiParty:Z

.field private blacklist mNumber:Ljava/lang/String;

.field private final blacklist mOutgoing:Z

.field private blacklist mState:I

.field private final blacklist mUUID:Ljava/util/UUID;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 293
    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClientCall$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHeadsetClientCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;IILjava/lang/String;ZZZ)V
    .registers 17
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "id"    # I
    .param p3, "state"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "multiParty"    # Z
    .param p6, "outgoing"    # Z
    .param p7, "inBandRing"    # Z

    .line 84
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/bluetooth/BluetoothHeadsetClientCall;-><init>(Landroid/bluetooth/BluetoothDevice;ILjava/util/UUID;ILjava/lang/String;ZZZ)V

    .line 85
    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;ILjava/util/UUID;ILjava/lang/String;ZZZ)V
    .registers 11
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "id"    # I
    .param p3, "uuid"    # Ljava/util/UUID;
    .param p4, "state"    # I
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "multiParty"    # Z
    .param p7, "outgoing"    # Z
    .param p8, "inBandRing"    # Z

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 97
    iput p2, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    .line 98
    iput-object p3, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mUUID:Ljava/util/UUID;

    .line 99
    iput p4, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    .line 100
    if-eqz p5, :cond_f

    move-object v0, p5

    goto :goto_11

    :cond_f
    const-string v0, ""

    :goto_11
    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    .line 101
    iput-boolean p6, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    .line 102
    iput-boolean p7, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    .line 103
    iput-boolean p8, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mInBandRing:Z

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mCreationElapsedMilli:J

    .line 105
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCreationElapsedMilli()J
    .registers 3

    .line 200
    iget-wide v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mCreationElapsedMilli:J

    return-wide v0
.end method

.method public blacklist getDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public greylist-max-r getId()I
    .registers 2

    .line 161
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    return v0
.end method

.method public greylist-max-r getNumber()Ljava/lang/String;
    .registers 2

    .line 191
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getState()I
    .registers 2

    .line 181
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    return v0
.end method

.method public blacklist getUUID()Ljava/util/UUID;
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mUUID:Ljava/util/UUID;

    return-object v0
.end method

.method public blacklist isInBandRing()Z
    .registers 2

    .line 229
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mInBandRing:Z

    return v0
.end method

.method public greylist-max-r isMultiParty()Z
    .registers 2

    .line 210
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    return v0
.end method

.method public greylist-max-r isOutgoing()Z
    .registers 2

    .line 220
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    return v0
.end method

.method public blacklist setAttributionSource(Landroid/content/AttributionSource;)V
    .registers 3
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 109
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, p1}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 110
    return-void
.end method

.method public blacklist setMultiParty(Z)V
    .registers 2
    .param p1, "multiParty"    # Z

    .line 142
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    .line 143
    return-void
.end method

.method public blacklist setNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "number"    # Ljava/lang/String;

    .line 131
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public blacklist setState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 120
    iput p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    .line 121
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toString(Z)Ljava/lang/String;
    .registers 4
    .param p1, "loggable"    # Z

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BluetoothHeadsetClientCall{mDevice: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_c

    goto :goto_14

    :cond_c
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, ", mId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    const-string v1, ", mUUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, ", mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    packed-switch v1, :pswitch_data_a8

    .line 277
    iget v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6b

    .line 274
    :pswitch_3b
    const-string v1, "TERMINATED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    goto :goto_6b

    .line 271
    :pswitch_41
    const-string v1, "HELD_BY_RESPONSE_AND_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    goto :goto_6b

    .line 268
    :pswitch_47
    const-string v1, "WAITING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    goto :goto_6b

    .line 265
    :pswitch_4d
    const-string v1, "INCOMING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    goto :goto_6b

    .line 262
    :pswitch_53
    const-string v1, "ALERTING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    goto :goto_6b

    .line 259
    :pswitch_59
    const-string v1, "DIALING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    goto :goto_6b

    .line 256
    :pswitch_5f
    const-string v1, "HELD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    goto :goto_6b

    .line 253
    :pswitch_65
    const-string v1, "ACTIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    nop

    .line 280
    :goto_6b
    const-string v1, ", mNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    if-eqz p1, :cond_75

    goto :goto_7d

    :cond_75
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    const-string v1, ", mMultiParty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 284
    const-string v1, ", mOutgoing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 286
    const-string v1, ", mInBandRing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mInBandRing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 288
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_65
        :pswitch_5f
        :pswitch_59
        :pswitch_53
        :pswitch_4d
        :pswitch_47
        :pswitch_41
        :pswitch_3b
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 316
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 317
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 319
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 321
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mInBandRing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    return-void
.end method
