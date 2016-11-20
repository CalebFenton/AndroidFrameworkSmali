.class public final Landroid/location/GnssNavigationMessage;
.super Ljava/lang/Object;
.source "GnssNavigationMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssNavigationMessage$1;,
        Landroid/location/GnssNavigationMessage$Callback;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GnssNavigationMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ARRAY:[B

.field public static final STATUS_PARITY_PASSED:I = 0x1

.field public static final STATUS_PARITY_REBUILT:I = 0x2

.field public static final STATUS_UNKNOWN:I = 0x0

.field public static final TYPE_BDS_D1:I = 0x501

.field public static final TYPE_BDS_D2:I = 0x502

.field public static final TYPE_GAL_F:I = 0x602

.field public static final TYPE_GAL_I:I = 0x601

.field public static final TYPE_GLO_L1CA:I = 0x301

.field public static final TYPE_GPS_CNAV2:I = 0x104

.field public static final TYPE_GPS_L1CA:I = 0x101

.field public static final TYPE_GPS_L2CNAV:I = 0x102

.field public static final TYPE_GPS_L5CNAV:I = 0x103

.field public static final TYPE_UNKNOWN:I


# instance fields
.field private mData:[B

.field private mMessageId:I

.field private mStatus:I

.field private mSubmessageId:I

.field private mSvid:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 34
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [B

    #@3
    sput-object v0, Landroid/location/GnssNavigationMessage;->EMPTY_ARRAY:[B

    #@5
    .line 369
    new-instance v0, Landroid/location/GnssNavigationMessage$1;

    #@7
    invoke-direct {v0}, Landroid/location/GnssNavigationMessage$1;-><init>()V

    #@a
    .line 368
    sput-object v0, Landroid/location/GnssNavigationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 143
    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->initialize()V

    #@6
    .line 142
    return-void
.end method

.method private getStatusString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 356
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "<Invalid:"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget v1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, ">"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 358
    :pswitch_0
    const-string/jumbo v0, "Unknown"

    #@26
    return-object v0

    #@27
    .line 360
    :pswitch_1
    const-string/jumbo v0, "ParityPassed"

    #@2a
    return-object v0

    #@2b
    .line 362
    :pswitch_2
    const-string/jumbo v0, "ParityRebuilt"

    #@2e
    return-object v0

    #@2f
    .line 356
    nop

    #@30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTypeString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 191
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    #@2
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "<Invalid:"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget v1, p0, Landroid/location/GnssNavigationMessage;->mType:I

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, ">"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 193
    :sswitch_0
    const-string/jumbo v0, "Unknown"

    #@26
    return-object v0

    #@27
    .line 195
    :sswitch_1
    const-string/jumbo v0, "GPS L1 C/A"

    #@2a
    return-object v0

    #@2b
    .line 197
    :sswitch_2
    const-string/jumbo v0, "GPS L2-CNAV"

    #@2e
    return-object v0

    #@2f
    .line 199
    :sswitch_3
    const-string/jumbo v0, "GPS L5-CNAV"

    #@32
    return-object v0

    #@33
    .line 201
    :sswitch_4
    const-string/jumbo v0, "GPS CNAV2"

    #@36
    return-object v0

    #@37
    .line 203
    :sswitch_5
    const-string/jumbo v0, "Glonass L1 C/A"

    #@3a
    return-object v0

    #@3b
    .line 205
    :sswitch_6
    const-string/jumbo v0, "Beidou D1"

    #@3e
    return-object v0

    #@3f
    .line 207
    :sswitch_7
    const-string/jumbo v0, "Beidou D2"

    #@42
    return-object v0

    #@43
    .line 209
    :sswitch_8
    const-string/jumbo v0, "Galileo I"

    #@46
    return-object v0

    #@47
    .line 211
    :sswitch_9
    const-string/jumbo v0, "Galileo F"

    #@4a
    return-object v0

    #@4b
    .line 191
    nop

    #@4c
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x101 -> :sswitch_1
        0x102 -> :sswitch_2
        0x103 -> :sswitch_3
        0x104 -> :sswitch_4
        0x301 -> :sswitch_5
        0x501 -> :sswitch_6
        0x502 -> :sswitch_7
        0x601 -> :sswitch_8
        0x602 -> :sswitch_9
    .end sparse-switch
.end method

.method private initialize()V
    .locals 2

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 433
    iput v1, p0, Landroid/location/GnssNavigationMessage;->mType:I

    #@4
    .line 434
    iput v1, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    #@6
    .line 435
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    #@8
    .line 436
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    #@a
    .line 437
    sget-object v0, Landroid/location/GnssNavigationMessage;->EMPTY_ARRAY:[B

    #@c
    iput-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    #@e
    .line 438
    iput v1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    #@10
    .line 432
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 406
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getData()[B
    .locals 1

    #@0
    .prologue
    .line 319
    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    #@2
    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    #@0
    .prologue
    .line 257
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    #@2
    return v0
.end method

.method public getStatus()I
    .locals 1

    #@0
    .prologue
    .line 339
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    #@2
    return v0
.end method

.method public getSubmessageId()I
    .locals 1

    #@0
    .prologue
    .line 284
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    #@2
    return v0
.end method

.method public getSvid()I
    .locals 1

    #@0
    .prologue
    .line 223
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    #@2
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 174
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    #@2
    return v0
.end method

.method public reset()V
    .locals 0

    #@0
    .prologue
    .line 166
    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->initialize()V

    #@3
    .line 165
    return-void
.end method

.method public set(Landroid/location/GnssNavigationMessage;)V
    .locals 1
    .param p1, "navigationMessage"    # Landroid/location/GnssNavigationMessage;

    #@0
    .prologue
    .line 152
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mType:I

    #@2
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    #@4
    .line 153
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mSvid:I

    #@6
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    #@8
    .line 154
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mMessageId:I

    #@a
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    #@c
    .line 155
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    #@e
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    #@10
    .line 156
    iget-object v0, p1, Landroid/location/GnssNavigationMessage;->mData:[B

    #@12
    iput-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    #@14
    .line 157
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mStatus:I

    #@16
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    #@18
    .line 151
    return-void
.end method

.method public setData([B)V
    .locals 2
    .param p1, "value"    # [B

    #@0
    .prologue
    .line 328
    if-nez p1, :cond_0

    #@2
    .line 329
    new-instance v0, Ljava/security/InvalidParameterException;

    #@4
    const-string/jumbo v1, "Data must be a non-null array"

    #@7
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 332
    :cond_0
    iput-object p1, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    #@d
    .line 327
    return-void
.end method

.method public setMessageId(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 266
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    #@2
    .line 265
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 348
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    #@2
    .line 347
    return-void
.end method

.method public setSubmessageId(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 293
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    #@2
    .line 292
    return-void
.end method

.method public setSvid(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 232
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    #@2
    .line 231
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 183
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mType:I

    #@2
    .line 182
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 411
    const-string/jumbo v1, "   %-15s = %s\n"

    #@6
    .line 412
    .local v1, "format":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    const-string/jumbo v5, "GnssNavigationMessage:\n"

    #@b
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    .line 414
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "   %-15s = %s\n"

    #@11
    new-array v6, v9, [Ljava/lang/Object;

    #@13
    const-string/jumbo v7, "Type"

    #@16
    aput-object v7, v6, v4

    #@18
    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->getTypeString()Ljava/lang/String;

    #@1b
    move-result-object v7

    #@1c
    aput-object v7, v6, v8

    #@1e
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 415
    const-string/jumbo v5, "   %-15s = %s\n"

    #@28
    new-array v6, v9, [Ljava/lang/Object;

    #@2a
    const-string/jumbo v7, "Svid"

    #@2d
    aput-object v7, v6, v4

    #@2f
    iget v7, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    #@31
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@34
    move-result-object v7

    #@35
    aput-object v7, v6, v8

    #@37
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 416
    const-string/jumbo v5, "   %-15s = %s\n"

    #@41
    new-array v6, v9, [Ljava/lang/Object;

    #@43
    const-string/jumbo v7, "Status"

    #@46
    aput-object v7, v6, v4

    #@48
    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->getStatusString()Ljava/lang/String;

    #@4b
    move-result-object v7

    #@4c
    aput-object v7, v6, v8

    #@4e
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 417
    const-string/jumbo v5, "   %-15s = %s\n"

    #@58
    new-array v6, v9, [Ljava/lang/Object;

    #@5a
    const-string/jumbo v7, "MessageId"

    #@5d
    aput-object v7, v6, v4

    #@5f
    iget v7, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    #@61
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@64
    move-result-object v7

    #@65
    aput-object v7, v6, v8

    #@67
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    .line 418
    const-string/jumbo v5, "   %-15s = %s\n"

    #@71
    new-array v6, v9, [Ljava/lang/Object;

    #@73
    const-string/jumbo v7, "SubmessageId"

    #@76
    aput-object v7, v6, v4

    #@78
    iget v7, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    #@7a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7d
    move-result-object v7

    #@7e
    aput-object v7, v6, v8

    #@80
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@83
    move-result-object v5

    #@84
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    .line 420
    const-string/jumbo v5, "   %-15s = %s\n"

    #@8a
    new-array v6, v9, [Ljava/lang/Object;

    #@8c
    const-string/jumbo v7, "Data"

    #@8f
    aput-object v7, v6, v4

    #@91
    const-string/jumbo v7, "{"

    #@94
    aput-object v7, v6, v8

    #@96
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@99
    move-result-object v5

    #@9a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    .line 421
    const-string/jumbo v2, "        "

    #@a0
    .line 422
    .local v2, "prefix":Ljava/lang/String;
    iget-object v5, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    #@a2
    array-length v6, v5

    #@a3
    :goto_0
    if-ge v4, v6, :cond_0

    #@a5
    aget-byte v3, v5, v4

    #@a7
    .line 423
    .local v3, "value":B
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    .line 424
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ad
    .line 425
    const-string/jumbo v2, ", "

    #@b0
    .line 422
    add-int/lit8 v4, v4, 0x1

    #@b2
    goto :goto_0

    #@b3
    .line 427
    .end local v3    # "value":B
    :cond_0
    const-string/jumbo v4, " }"

    #@b6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v4

    #@bd
    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 395
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 396
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 397
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 398
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 399
    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    #@16
    array-length v0, v0

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 400
    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@1f
    .line 401
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    #@21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 394
    return-void
.end method
