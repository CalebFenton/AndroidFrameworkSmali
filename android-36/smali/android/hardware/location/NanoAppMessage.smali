.class public final Landroid/hardware/location/NanoAppMessage;
.super Ljava/lang/Object;
.source "NanoAppMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/NanoAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG_LOG_NUM_BYTES:I = 0x10


# instance fields
.field private greylist-max-o mIsBroadcasted:Z

.field private blacklist mIsReliable:Z

.field private greylist-max-o mMessageBody:[B

.field private blacklist mMessageSequenceNumber:I

.field private greylist-max-o mMessageType:I

.field private greylist-max-o mNanoAppId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 217
    new-instance v0, Landroid/hardware/location/NanoAppMessage$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoAppMessage$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoAppMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JI[BZZI)V
    .registers 8
    .param p1, "nanoAppId"    # J
    .param p3, "messageType"    # I
    .param p4, "messageBody"    # [B
    .param p5, "broadcasted"    # Z
    .param p6, "isReliable"    # Z
    .param p7, "messageSequenceNumber"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    .line 51
    iput p3, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    .line 52
    iput-object p4, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    .line 53
    iput-boolean p5, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    .line 54
    iput-boolean p6, p0, Landroid/hardware/location/NanoAppMessage;->mIsReliable:Z

    .line 55
    iput p7, p0, Landroid/hardware/location/NanoAppMessage;->mMessageSequenceNumber:I

    .line 56
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    iput-boolean v0, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 192
    .local v0, "msgSize":I
    new-array v3, v0, [B

    iput-object v3, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    .line 193
    iget-object v3, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_30

    move v1, v2

    :cond_30
    iput-boolean v1, p0, Landroid/hardware/location/NanoAppMessage;->mIsReliable:Z

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/location/NanoAppMessage;->mMessageSequenceNumber:I

    .line 197
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppMessage-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/location/NanoAppMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist createMessageFromNanoApp(JI[BZ)Landroid/hardware/location/NanoAppMessage;
    .registers 13
    .param p0, "sourceNanoAppId"    # J
    .param p2, "messageType"    # I
    .param p3, "messageBody"    # [B
    .param p4, "broadcasted"    # Z

    .line 93
    new-instance v0, Landroid/hardware/location/NanoAppMessage;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    .end local p0    # "sourceNanoAppId":J
    .end local p2    # "messageType":I
    .end local p3    # "messageBody":[B
    .end local p4    # "broadcasted":Z
    .local v1, "sourceNanoAppId":J
    .local v3, "messageType":I
    .local v4, "messageBody":[B
    .local v5, "broadcasted":Z
    invoke-direct/range {v0 .. v7}, Landroid/hardware/location/NanoAppMessage;-><init>(JI[BZZI)V

    return-object v0
.end method

.method public static whitelist createMessageFromNanoApp(JI[BZZI)Landroid/hardware/location/NanoAppMessage;
    .registers 15
    .param p0, "sourceNanoAppId"    # J
    .param p2, "messageType"    # I
    .param p3, "messageBody"    # [B
    .param p4, "broadcasted"    # Z
    .param p5, "isReliable"    # Z
    .param p6, "messageSequenceNumber"    # I

    .line 118
    new-instance v0, Landroid/hardware/location/NanoAppMessage;

    move-wide v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p0    # "sourceNanoAppId":J
    .end local p2    # "messageType":I
    .end local p3    # "messageBody":[B
    .end local p4    # "broadcasted":Z
    .end local p5    # "isReliable":Z
    .end local p6    # "messageSequenceNumber":I
    .local v1, "sourceNanoAppId":J
    .local v3, "messageType":I
    .local v4, "messageBody":[B
    .local v5, "broadcasted":Z
    .local v6, "isReliable":Z
    .local v7, "messageSequenceNumber":I
    invoke-direct/range {v0 .. v7}, Landroid/hardware/location/NanoAppMessage;-><init>(JI[BZZI)V

    return-object v0
.end method

.method public static whitelist createMessageToNanoApp(JI[B)Landroid/hardware/location/NanoAppMessage;
    .registers 12
    .param p0, "targetNanoAppId"    # J
    .param p2, "messageType"    # I
    .param p3, "messageBody"    # [B

    .line 74
    new-instance v0, Landroid/hardware/location/NanoAppMessage;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-wide v1, p0

    move v3, p2

    move-object v4, p3

    .end local p0    # "targetNanoAppId":J
    .end local p2    # "messageType":I
    .end local p3    # "messageBody":[B
    .local v1, "targetNanoAppId":J
    .local v3, "messageType":I
    .local v4, "messageBody":[B
    invoke-direct/range {v0 .. v7}, Landroid/hardware/location/NanoAppMessage;-><init>(JI[BZZI)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 271
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 272
    return v0

    .line 275
    :cond_4
    const/4 v1, 0x0

    .line 276
    .local v1, "isEqual":Z
    instance-of v2, p1, Landroid/hardware/location/NanoAppMessage;

    if-eqz v2, :cond_51

    .line 277
    move-object v2, p1

    check-cast v2, Landroid/hardware/location/NanoAppMessage;

    .line 278
    .local v2, "other":Landroid/hardware/location/NanoAppMessage;
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4f

    .line 279
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    if-ne v3, v4, :cond_4f

    .line 280
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppMessage;->isBroadcastMessage()Z

    move-result v3

    iget-boolean v4, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    if-ne v3, v4, :cond_4f

    .line 281
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 282
    invoke-static {}, Landroid/chre/flags/Flags;->reliableMessage()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 283
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    move-result v3

    iget-boolean v4, p0, Landroid/hardware/location/NanoAppMessage;->mIsReliable:Z

    if-ne v3, v4, :cond_4f

    .line 284
    :cond_40
    invoke-static {}, Landroid/chre/flags/Flags;->reliableMessage()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 285
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/NanoAppMessage;->mMessageSequenceNumber:I

    if-ne v3, v4, :cond_4f

    :cond_4e
    goto :goto_50

    :cond_4f
    const/4 v0, 0x0

    :goto_50
    move v1, v0

    .line 288
    .end local v2    # "other":Landroid/hardware/location/NanoAppMessage;
    :cond_51
    return v1
.end method

.method public whitelist getMessageBody()[B
    .registers 2

    .line 140
    iget-object v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    return-object v0
.end method

.method public whitelist getMessageSequenceNumber()I
    .registers 2

    .line 165
    iget v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageSequenceNumber:I

    return v0
.end method

.method public whitelist getMessageType()I
    .registers 2

    .line 133
    iget v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    return v0
.end method

.method public whitelist getNanoAppId()J
    .registers 3

    .line 126
    iget-wide v0, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 293
    invoke-static {}, Landroid/chre/flags/Flags;->fixApiCheck()Z

    move-result v0

    if-nez v0, :cond_b

    .line 294
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 297
    :cond_b
    iget-wide v0, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v0, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    .line 298
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v0, p0, Landroid/hardware/location/NanoAppMessage;->mIsReliable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageSequenceNumber:I

    .line 299
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 297
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isBroadcastMessage()Z
    .registers 2

    .line 147
    iget-boolean v0, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    return v0
.end method

.method public whitelist isReliable()Z
    .registers 2

    .line 156
    iget-boolean v0, p0, Landroid/hardware/location/NanoAppMessage;->mIsReliable:Z

    return v0
.end method

.method public blacklist setIsReliable(Z)V
    .registers 2
    .param p1, "isReliable"    # Z

    .line 174
    iput-boolean p1, p0, Landroid/hardware/location/NanoAppMessage;->mIsReliable:Z

    .line 175
    return-void
.end method

.method public blacklist setMessageSequenceNumber(I)V
    .registers 2
    .param p1, "messageSequenceNumber"    # I

    .line 183
    iput p1, p0, Landroid/hardware/location/NanoAppMessage;->mMessageSequenceNumber:I

    .line 184
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 233
    iget-object v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    array-length v0, v0

    .line 235
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .local v1, "out":Ljava/lang/StringBuilder;
    const-string v2, "NanoAppMessage[type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget v2, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget-object v2, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    const-string v2, " bytes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget-boolean v2, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    if-eqz v2, :cond_29

    const-string v2, "broadcast"

    goto :goto_2b

    :cond_29
    const-string v2, "unicast"

    :goto_2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v2, ", nanoapp = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-wide v2, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v2, ", isReliable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-boolean v2, p0, Landroid/hardware/location/NanoAppMessage;->mIsReliable:Z

    if-eqz v2, :cond_48

    const-string v2, "true"

    goto :goto_4a

    :cond_48
    const-string v2, "false"

    :goto_4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v2, ", messageSequenceNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget v2, p0, Landroid/hardware/location/NanoAppMessage;->mMessageSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    const-string v2, "]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    if-lez v0, :cond_63

    .line 251
    const-string v2, "data = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_63
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_64
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v2, v4, :cond_86

    .line 254
    iget-object v3, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    aget-byte v3, v3, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Llibcore/util/HexEncoding;->encodeToString(BZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    add-int/lit8 v3, v2, 0x1

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_83

    .line 258
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 261
    .end local v2    # "i":I
    :cond_86
    if-le v0, v3, :cond_8d

    .line 262
    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_8d
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 206
    iget-wide v0, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 207
    iget-boolean v0, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-object v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget-object v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 213
    iget-boolean v0, p0, Landroid/hardware/location/NanoAppMessage;->mIsReliable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageSequenceNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    return-void
.end method
