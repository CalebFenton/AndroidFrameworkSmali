.class public final Landroid/location/GnssNavigationMessage;
.super Ljava/lang/Object;
.source "GnssNavigationMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssNavigationMessage$Callback;,
        Landroid/location/GnssNavigationMessage$GnssNavigationMessageStatus;,
        Landroid/location/GnssNavigationMessage$GnssNavigationMessageType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssNavigationMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EMPTY_ARRAY:[B

.field public static final whitelist STATUS_PARITY_PASSED:I = 0x1

.field public static final whitelist STATUS_PARITY_REBUILT:I = 0x2

.field public static final whitelist STATUS_UNKNOWN:I = 0x0

.field public static final whitelist TYPE_BDS_CNAV1:I = 0x503

.field public static final whitelist TYPE_BDS_CNAV2:I = 0x504

.field public static final whitelist TYPE_BDS_D1:I = 0x501

.field public static final whitelist TYPE_BDS_D2:I = 0x502

.field public static final whitelist TYPE_GAL_F:I = 0x602

.field public static final whitelist TYPE_GAL_I:I = 0x601

.field public static final whitelist TYPE_GLO_L1CA:I = 0x301

.field public static final whitelist TYPE_GPS_CNAV2:I = 0x104

.field public static final whitelist TYPE_GPS_L1CA:I = 0x101

.field public static final whitelist TYPE_GPS_L2CNAV:I = 0x102

.field public static final whitelist TYPE_GPS_L5CNAV:I = 0x103

.field public static final whitelist TYPE_IRN_L1:I = 0x703

.field public static final whitelist TYPE_IRN_L5:I = 0x702

.field public static final whitelist TYPE_IRN_L5CA:I = 0x701

.field public static final whitelist TYPE_QZS_L1CA:I = 0x401

.field public static final whitelist TYPE_SBS:I = 0x201

.field public static final whitelist TYPE_UNKNOWN:I


# instance fields
.field private greylist-max-o mData:[B

.field private greylist-max-o mMessageId:I

.field private greylist-max-o mStatus:I

.field private greylist-max-o mSubmessageId:I

.field private greylist-max-o mSvid:I

.field private greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/location/GnssNavigationMessage;->EMPTY_ARRAY:[B

    .line 465
    new-instance v0, Landroid/location/GnssNavigationMessage$1;

    invoke-direct {v0}, Landroid/location/GnssNavigationMessage$1;-><init>()V

    sput-object v0, Landroid/location/GnssNavigationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->initialize()V

    .line 190
    return-void
.end method

.method private greylist-max-o getStatusString()Ljava/lang/String;
    .registers 3

    .line 453
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    packed-switch v0, :pswitch_data_2a

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 459
    :pswitch_21
    const-string v0, "ParityRebuilt"

    return-object v0

    .line 457
    :pswitch_24
    const-string v0, "ParityPassed"

    return-object v0

    .line 455
    :pswitch_27
    const-string v0, "Unknown"

    return-object v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method private greylist-max-o getTypeString()Ljava/lang/String;
    .registers 3

    .line 237
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    sparse-switch v0, :sswitch_data_66

    .line 269
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->gnssApiNavicL1()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 270
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    const/16 v1, 0x702

    if-ne v0, v1, :cond_41

    .line 271
    const-string v0, "NavIC L5"

    return-object v0

    .line 267
    :sswitch_14
    const-string v0, "NavIC L5 C/A"

    return-object v0

    .line 265
    :sswitch_17
    const-string v0, "Galileo F"

    return-object v0

    .line 263
    :sswitch_1a
    const-string v0, "Galileo I"

    return-object v0

    .line 261
    :sswitch_1d
    const-string v0, "Beidou CNAV2"

    return-object v0

    .line 259
    :sswitch_20
    const-string v0, "Beidou CNAV1"

    return-object v0

    .line 257
    :sswitch_23
    const-string v0, "Beidou D2"

    return-object v0

    .line 255
    :sswitch_26
    const-string v0, "Beidou D1"

    return-object v0

    .line 253
    :sswitch_29
    const-string v0, "QZSS L1 C/A"

    return-object v0

    .line 251
    :sswitch_2c
    const-string v0, "Glonass L1 C/A"

    return-object v0

    .line 249
    :sswitch_2f
    const-string v0, "SBS"

    return-object v0

    .line 247
    :sswitch_32
    const-string v0, "GPS CNAV2"

    return-object v0

    .line 245
    :sswitch_35
    const-string v0, "GPS L5-CNAV"

    return-object v0

    .line 243
    :sswitch_38
    const-string v0, "GPS L2-CNAV"

    return-object v0

    .line 241
    :sswitch_3b
    const-string v0, "GPS L1 C/A"

    return-object v0

    .line 239
    :sswitch_3e
    const-string v0, "Unknown"

    return-object v0

    .line 272
    :cond_41
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    const/16 v1, 0x703

    if-ne v0, v1, :cond_4a

    .line 273
    const-string v0, "NavIC L1"

    return-object v0

    .line 276
    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/GnssNavigationMessage;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_3e
        0x101 -> :sswitch_3b
        0x102 -> :sswitch_38
        0x103 -> :sswitch_35
        0x104 -> :sswitch_32
        0x201 -> :sswitch_2f
        0x301 -> :sswitch_2c
        0x401 -> :sswitch_29
        0x501 -> :sswitch_26
        0x502 -> :sswitch_23
        0x503 -> :sswitch_20
        0x504 -> :sswitch_1d
        0x601 -> :sswitch_1a
        0x602 -> :sswitch_17
        0x701 -> :sswitch_14
    .end sparse-switch
.end method

.method private greylist-max-o initialize()V
    .registers 3

    .line 530
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    .line 531
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    .line 532
    const/4 v1, -0x1

    iput v1, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    .line 533
    iput v1, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    .line 534
    sget-object v1, Landroid/location/GnssNavigationMessage;->EMPTY_ARRAY:[B

    iput-object v1, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    .line 535
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    .line 536
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getData()[B
    .registers 2

    .line 415
    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    return-object v0
.end method

.method public whitelist getMessageId()I
    .registers 2

    .line 333
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    return v0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 436
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    return v0
.end method

.method public whitelist getSubmessageId()I
    .registers 2

    .line 370
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    return v0
.end method

.method public whitelist getSvid()I
    .registers 2

    .line 287
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 220
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    return v0
.end method

.method public blacklist reset()V
    .registers 1

    .line 212
    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->initialize()V

    .line 213
    return-void
.end method

.method public blacklist set(Landroid/location/GnssNavigationMessage;)V
    .registers 3
    .param p1, "navigationMessage"    # Landroid/location/GnssNavigationMessage;

    .line 198
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mType:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    .line 199
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mSvid:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    .line 200
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mMessageId:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    .line 201
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    .line 202
    iget-object v0, p1, Landroid/location/GnssNavigationMessage;->mData:[B

    iput-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    .line 203
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mStatus:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    .line 204
    return-void
.end method

.method public blacklist setData([B)V
    .registers 4
    .param p1, "value"    # [B

    .line 424
    if-eqz p1, :cond_5

    .line 428
    iput-object p1, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    .line 429
    return-void

    .line 425
    :cond_5
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Data must be a non-null array"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setMessageId(I)V
    .registers 2
    .param p1, "value"    # I

    .line 342
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    .line 343
    return-void
.end method

.method public blacklist setStatus(I)V
    .registers 2
    .param p1, "value"    # I

    .line 445
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    .line 446
    return-void
.end method

.method public blacklist setSubmessageId(I)V
    .registers 2
    .param p1, "value"    # I

    .line 379
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    .line 380
    return-void
.end method

.method public blacklist setSvid(I)V
    .registers 2
    .param p1, "value"    # I

    .line 296
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    .line 297
    return-void
.end method

.method public blacklist setType(I)V
    .registers 2
    .param p1, "value"    # I

    .line 229
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mType:I

    .line 230
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 508
    const-string v0, "   %-15s = %s\n"

    .line 509
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GnssNavigationMessage:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 511
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v2, "Type"

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->getTypeString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "   %-15s = %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    iget v2, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Svid"

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const-string v2, "Status"

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->getStatusString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    iget v2, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "MessageId"

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    iget v2, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "SubmessageId"

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const-string v2, "Data"

    const-string v4, "{"

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    const-string v2, "        "

    .line 519
    .local v2, "prefix":Ljava/lang/String;
    iget-object v3, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    array-length v4, v3

    const/4 v5, 0x0

    :goto_7b
    if-ge v5, v4, :cond_8a

    aget-byte v6, v3, v5

    .line 520
    .local v6, "value":B
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    const-string v2, ", "

    .line 519
    .end local v6    # "value":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_7b

    .line 524
    :cond_8a
    const-string v3, " }"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 492
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 498
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    return-void
.end method
