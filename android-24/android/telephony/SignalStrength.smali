.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SignalStrength$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field private static final RSRP_THRESH_LENIENT:[I

.field private static final RSRP_THRESH_STRICT:[I

.field private static final RSRP_THRESH_TYPE_STRICT:I = 0x0

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mTdScdmaRscp:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x6

    #@1
    .line 46
    const/4 v0, 0x5

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 47
    const-string/jumbo v1, "none"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    const-string/jumbo v1, "poor"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    const-string/jumbo v1, "moderate"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    const-string/jumbo v1, "good"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    const-string/jumbo v1, "great"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 46
    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    #@24
    .line 55
    new-array v0, v3, [I

    #@26
    fill-array-data v0, :array_0

    #@29
    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    #@2b
    .line 56
    new-array v0, v3, [I

    #@2d
    fill-array-data v0, :array_1

    #@30
    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    #@32
    .line 363
    new-instance v0, Landroid/telephony/SignalStrength$1;

    #@34
    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    #@37
    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    #@39
    .line 28
    return-void

    #@3a
    .line 55
    :array_0
    .array-data 4
        -0x8c
        -0x73
        -0x69
        -0x5f
        -0x55
        -0x2c
    .end array-data

    #@4a
    .line 56
    :array_1
    .array-data 4
        -0x8c
        -0x80
        -0x76
        -0x6c
        -0x62
        -0x2c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x63

    #@2
    const v1, 0x7fffffff

    #@5
    const/4 v0, -0x1

    #@6
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 99
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@b
    .line 100
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@d
    .line 101
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@f
    .line 102
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@11
    .line 103
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@13
    .line 104
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@15
    .line 105
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@17
    .line 106
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@19
    .line 107
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@1b
    .line 108
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@1d
    .line 109
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@1f
    .line 110
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@21
    .line 111
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    #@23
    .line 112
    const/4 v0, 0x1

    #@24
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@26
    .line 98
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZ)V
    .locals 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "gsmFlag"    # Z

    #@0
    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    move-object v1, p0

    #@4
    move/from16 v2, p1

    #@6
    move/from16 v3, p2

    #@8
    move/from16 v4, p3

    #@a
    move/from16 v5, p4

    #@c
    move/from16 v6, p5

    #@e
    move/from16 v7, p6

    #@10
    move/from16 v8, p7

    #@12
    move/from16 v9, p8

    #@14
    move/from16 v10, p9

    #@16
    move/from16 v11, p10

    #@18
    move/from16 v12, p11

    #@1a
    move/from16 v13, p12

    #@1c
    move/from16 v14, p14

    #@1e
    .line 150
    invoke-virtual/range {v1 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    #@21
    .line 153
    move/from16 v0, p13

    #@23
    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    #@25
    .line 149
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z

    #@0
    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 166
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    #@6
    .line 165
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z

    #@0
    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 181
    const/16 v8, 0x63

    #@5
    const v9, 0x7fffffff

    #@8
    .line 182
    const v10, 0x7fffffff

    #@b
    const v11, 0x7fffffff

    #@e
    const v12, 0x7fffffff

    #@11
    move-object v0, p0

    #@12
    move v1, p1

    #@13
    move/from16 v2, p2

    #@15
    move/from16 v3, p3

    #@17
    move/from16 v4, p4

    #@19
    move/from16 v5, p5

    #@1b
    move/from16 v6, p6

    #@1d
    move/from16 v7, p7

    #@1f
    move/from16 v13, p8

    #@21
    .line 180
    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    #@24
    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@a
    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v1

    #@e
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@10
    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v1

    #@14
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@16
    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v1

    #@1a
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@1c
    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v1

    #@20
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@22
    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v1

    #@26
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@28
    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v1

    #@2c
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@2e
    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v1

    #@32
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@34
    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v1

    #@38
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@3a
    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v1

    #@3e
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@40
    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@43
    move-result v1

    #@44
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@46
    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v1

    #@4a
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@4c
    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v1

    #@50
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    #@52
    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v1

    #@56
    if-eqz v1, :cond_0

    #@58
    const/4 v0, 0x1

    #@59
    :cond_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@5b
    .line 285
    return-void
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    #@0
    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 193
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    #@6
    .line 192
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "gsmFlag"    # Z

    #@0
    .prologue
    const/16 v2, 0x63

    #@2
    const v1, 0x7fffffff

    #@5
    const/4 v0, -0x1

    #@6
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 124
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@b
    .line 125
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@d
    .line 126
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@f
    .line 127
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@11
    .line 128
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@13
    .line 129
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@15
    .line 130
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@17
    .line 131
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@19
    .line 132
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@1b
    .line 133
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@1d
    .line 134
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@1f
    .line 135
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@21
    .line 136
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    #@23
    .line 137
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@25
    .line 123
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1056
    const-string/jumbo v0, "SignalStrength"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1055
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 314
    new-instance v0, Landroid/telephony/SignalStrength;

    #@2
    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    #@5
    .line 315
    .local v0, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@b
    .line 316
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v1

    #@f
    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@11
    .line 317
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v1

    #@15
    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@17
    .line 318
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v1

    #@1b
    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@1d
    .line 319
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v1

    #@21
    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@23
    .line 320
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v1

    #@27
    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@29
    .line 321
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v1

    #@2d
    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@2f
    .line 322
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v1

    #@33
    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@35
    .line 323
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v1

    #@39
    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@3b
    .line 324
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v1

    #@3f
    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@41
    .line 325
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v1

    #@45
    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@47
    .line 326
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v1

    #@4b
    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@4d
    .line 327
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@50
    move-result v1

    #@51
    iput v1, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    #@53
    .line 328
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 88
    new-instance v0, Landroid/telephony/SignalStrength;

    #@2
    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    #@5
    .line 89
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    #@8
    .line 90
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1013
    const-string/jumbo v0, "GsmSignalStrength"

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@9
    .line 1014
    const-string/jumbo v0, "GsmBitErrorRate"

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@12
    .line 1015
    const-string/jumbo v0, "CdmaDbm"

    #@15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@1b
    .line 1016
    const-string/jumbo v0, "CdmaEcio"

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@21
    move-result v0

    #@22
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@24
    .line 1017
    const-string/jumbo v0, "EvdoDbm"

    #@27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@2d
    .line 1018
    const-string/jumbo v0, "EvdoEcio"

    #@30
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@33
    move-result v0

    #@34
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@36
    .line 1019
    const-string/jumbo v0, "EvdoSnr"

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@3c
    move-result v0

    #@3d
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@3f
    .line 1020
    const-string/jumbo v0, "LteSignalStrength"

    #@42
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@45
    move-result v0

    #@46
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@48
    .line 1021
    const-string/jumbo v0, "LteRsrp"

    #@4b
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@4e
    move-result v0

    #@4f
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@51
    .line 1022
    const-string/jumbo v0, "LteRsrq"

    #@54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@57
    move-result v0

    #@58
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@5a
    .line 1023
    const-string/jumbo v0, "LteRssnr"

    #@5d
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@60
    move-result v0

    #@61
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@63
    .line 1024
    const-string/jumbo v0, "LteCqi"

    #@66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@69
    move-result v0

    #@6a
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@6c
    .line 1025
    const-string/jumbo v0, "TdScdma"

    #@6f
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@72
    move-result v0

    #@73
    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    #@75
    .line 1026
    const-string/jumbo v0, "isGsm"

    #@78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@7b
    move-result v0

    #@7c
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@7e
    .line 1012
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    #@0
    .prologue
    .line 264
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@2
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@4
    .line 265
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@6
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@8
    .line 266
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@a
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@c
    .line 267
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@e
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@10
    .line 268
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@12
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@14
    .line 269
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@16
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@18
    .line 270
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@1a
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@1c
    .line 271
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@1e
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@20
    .line 272
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@22
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@24
    .line 273
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@26
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@28
    .line 274
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@2a
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@2c
    .line 275
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@2e
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@30
    .line 276
    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    #@32
    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    #@34
    .line 277
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    #@36
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@38
    .line 263
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 355
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 959
    :try_start_0
    move-object v0, p1

    #@2
    check-cast v0, Landroid/telephony/SignalStrength;

    #@4
    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 964
    .local v2, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_0

    #@7
    .line 965
    return v3

    #@8
    .line 960
    .end local v2    # "s":Landroid/telephony/SignalStrength;
    :catch_0
    move-exception v1

    #@9
    .line 961
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    #@a
    .line 968
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_0
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@c
    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@e
    if-ne v4, v5, :cond_1

    #@10
    .line 969
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@12
    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@14
    if-ne v4, v5, :cond_1

    #@16
    .line 970
    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@18
    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@1a
    if-ne v4, v5, :cond_1

    #@1c
    .line 971
    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@1e
    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@20
    if-ne v4, v5, :cond_1

    #@22
    .line 972
    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@24
    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@26
    if-ne v4, v5, :cond_1

    #@28
    .line 973
    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@2a
    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@2c
    if-ne v4, v5, :cond_1

    #@2e
    .line 974
    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@30
    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@32
    if-ne v4, v5, :cond_1

    #@34
    .line 975
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@36
    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@38
    if-ne v4, v5, :cond_1

    #@3a
    .line 976
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@3c
    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@3e
    if-ne v4, v5, :cond_1

    #@40
    .line 977
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@42
    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@44
    if-ne v4, v5, :cond_1

    #@46
    .line 978
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@48
    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@4a
    if-ne v4, v5, :cond_1

    #@4c
    .line 979
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@4e
    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@50
    if-ne v4, v5, :cond_1

    #@52
    .line 980
    iget v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    #@54
    iget v5, v2, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    #@56
    if-ne v4, v5, :cond_1

    #@58
    .line 981
    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@5a
    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    #@5c
    if-ne v4, v5, :cond_1

    #@5e
    const/4 v3, 0x1

    #@5f
    .line 968
    :cond_1
    return v3
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1036
    const-string/jumbo v0, "GsmSignalStrength"

    #@3
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@8
    .line 1037
    const-string/jumbo v0, "GsmBitErrorRate"

    #@b
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@10
    .line 1038
    const-string/jumbo v0, "CdmaDbm"

    #@13
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@18
    .line 1039
    const-string/jumbo v0, "CdmaEcio"

    #@1b
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@1d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@20
    .line 1040
    const-string/jumbo v0, "EvdoDbm"

    #@23
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@25
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@28
    .line 1041
    const-string/jumbo v0, "EvdoEcio"

    #@2b
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@2d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@30
    .line 1042
    const-string/jumbo v0, "EvdoSnr"

    #@33
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@35
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@38
    .line 1043
    const-string/jumbo v0, "LteSignalStrength"

    #@3b
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@3d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@40
    .line 1044
    const-string/jumbo v0, "LteRsrp"

    #@43
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@45
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@48
    .line 1045
    const-string/jumbo v0, "LteRsrq"

    #@4b
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@4d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@50
    .line 1046
    const-string/jumbo v0, "LteRssnr"

    #@53
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@55
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@58
    .line 1047
    const-string/jumbo v0, "LteCqi"

    #@5b
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@5d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@60
    .line 1048
    const-string/jumbo v0, "TdScdma"

    #@63
    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    #@65
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@68
    .line 1049
    const-string/jumbo v0, "isGsm"

    #@6b
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@6d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@70
    move-result-object v1

    #@71
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@74
    move-result v1

    #@75
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@78
    .line 1035
    return-void
.end method

.method public getAsuLevel()I
    .locals 4

    #@0
    .prologue
    .line 540
    const/4 v0, 0x0

    #@1
    .line 541
    .local v0, "asuLevel":I
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@3
    if-eqz v3, :cond_2

    #@5
    .line 542
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    #@8
    move-result v3

    #@9
    if-nez v3, :cond_1

    #@b
    .line 543
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    .line 544
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    #@14
    move-result v0

    #@15
    .line 566
    :goto_0
    return v0

    #@16
    .line 546
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    #@19
    move-result v0

    #@1a
    goto :goto_0

    #@1b
    .line 549
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    #@1e
    move-result v0

    #@1f
    goto :goto_0

    #@20
    .line 552
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    #@23
    move-result v1

    #@24
    .line 553
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    #@27
    move-result v2

    #@28
    .line 554
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_3

    #@2a
    .line 556
    move v0, v1

    #@2b
    goto :goto_0

    #@2c
    .line 557
    :cond_3
    if-nez v1, :cond_4

    #@2e
    .line 559
    move v0, v2

    #@2f
    goto :goto_0

    #@30
    .line 562
    :cond_4
    if-ge v1, v2, :cond_5

    #@32
    move v0, v1

    #@33
    goto :goto_0

    #@34
    :cond_5
    move v0, v2

    #@35
    goto :goto_0
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    #@0
    .prologue
    const/16 v7, -0x5a

    #@2
    const/16 v6, -0x64

    #@4
    .line 688
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    #@7
    move-result v1

    #@8
    .line 689
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    #@b
    move-result v2

    #@c
    .line 693
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    #@e
    if-lt v1, v5, :cond_0

    #@10
    const/16 v0, 0x10

    #@12
    .line 701
    .local v0, "cdmaAsuLevel":I
    :goto_0
    if-lt v2, v7, :cond_5

    #@14
    const/16 v3, 0x10

    #@16
    .line 708
    .local v3, "ecioAsuLevel":I
    :goto_1
    if-ge v0, v3, :cond_a

    #@18
    move v4, v0

    #@19
    .line 710
    .local v4, "level":I
    :goto_2
    return v4

    #@1a
    .line 694
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_0
    const/16 v5, -0x52

    #@1c
    if-lt v1, v5, :cond_1

    #@1e
    const/16 v0, 0x8

    #@20
    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    #@21
    .line 695
    .end local v0    # "cdmaAsuLevel":I
    :cond_1
    if-lt v1, v7, :cond_2

    #@23
    const/4 v0, 0x4

    #@24
    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    #@25
    .line 696
    .end local v0    # "cdmaAsuLevel":I
    :cond_2
    const/16 v5, -0x5f

    #@27
    if-lt v1, v5, :cond_3

    #@29
    const/4 v0, 0x2

    #@2a
    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    #@2b
    .line 697
    .end local v0    # "cdmaAsuLevel":I
    :cond_3
    if-lt v1, v6, :cond_4

    #@2d
    const/4 v0, 0x1

    #@2e
    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    #@2f
    .line 698
    .end local v0    # "cdmaAsuLevel":I
    :cond_4
    const/16 v0, 0x63

    #@31
    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    #@32
    .line 702
    :cond_5
    if-lt v2, v6, :cond_6

    #@34
    const/16 v3, 0x8

    #@36
    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    #@37
    .line 703
    .end local v3    # "ecioAsuLevel":I
    :cond_6
    const/16 v5, -0x73

    #@39
    if-lt v2, v5, :cond_7

    #@3b
    const/4 v3, 0x4

    #@3c
    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    #@3d
    .line 704
    .end local v3    # "ecioAsuLevel":I
    :cond_7
    const/16 v5, -0x82

    #@3f
    if-lt v2, v5, :cond_8

    #@41
    const/4 v3, 0x2

    #@42
    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    #@43
    .line 705
    .end local v3    # "ecioAsuLevel":I
    :cond_8
    const/16 v5, -0x96

    #@45
    if-lt v2, v5, :cond_9

    #@47
    const/4 v3, 0x1

    #@48
    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    #@49
    .line 706
    .end local v3    # "ecioAsuLevel":I
    :cond_9
    const/16 v3, 0x63

    #@4b
    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    #@4c
    :cond_a
    move v4, v3

    #@4d
    .line 708
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    #@0
    .prologue
    .line 441
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@2
    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    #@0
    .prologue
    .line 448
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@2
    return v0
.end method

.method public getCdmaLevel()I
    .locals 6

    #@0
    .prologue
    .line 659
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    #@3
    move-result v0

    #@4
    .line 660
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    #@7
    move-result v1

    #@8
    .line 664
    .local v1, "cdmaEcio":I
    const/16 v5, -0x4b

    #@a
    if-lt v0, v5, :cond_0

    #@c
    const/4 v3, 0x4

    #@d
    .line 671
    .local v3, "levelDbm":I
    :goto_0
    const/16 v5, -0x5a

    #@f
    if-lt v1, v5, :cond_4

    #@11
    const/4 v4, 0x4

    #@12
    .line 677
    .local v4, "levelEcio":I
    :goto_1
    if-ge v3, v4, :cond_8

    #@14
    move v2, v3

    #@15
    .line 679
    .local v2, "level":I
    :goto_2
    return v2

    #@16
    .line 665
    .end local v2    # "level":I
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_0
    const/16 v5, -0x55

    #@18
    if-lt v0, v5, :cond_1

    #@1a
    const/4 v3, 0x3

    #@1b
    .restart local v3    # "levelDbm":I
    goto :goto_0

    #@1c
    .line 666
    .end local v3    # "levelDbm":I
    :cond_1
    const/16 v5, -0x5f

    #@1e
    if-lt v0, v5, :cond_2

    #@20
    const/4 v3, 0x2

    #@21
    .restart local v3    # "levelDbm":I
    goto :goto_0

    #@22
    .line 667
    .end local v3    # "levelDbm":I
    :cond_2
    const/16 v5, -0x64

    #@24
    if-lt v0, v5, :cond_3

    #@26
    const/4 v3, 0x1

    #@27
    .restart local v3    # "levelDbm":I
    goto :goto_0

    #@28
    .line 668
    .end local v3    # "levelDbm":I
    :cond_3
    const/4 v3, 0x0

    #@29
    .restart local v3    # "levelDbm":I
    goto :goto_0

    #@2a
    .line 672
    :cond_4
    const/16 v5, -0x6e

    #@2c
    if-lt v1, v5, :cond_5

    #@2e
    const/4 v4, 0x3

    #@2f
    .restart local v4    # "levelEcio":I
    goto :goto_1

    #@30
    .line 673
    .end local v4    # "levelEcio":I
    :cond_5
    const/16 v5, -0x82

    #@32
    if-lt v1, v5, :cond_6

    #@34
    const/4 v4, 0x2

    #@35
    .restart local v4    # "levelEcio":I
    goto :goto_1

    #@36
    .line 674
    .end local v4    # "levelEcio":I
    :cond_6
    const/16 v5, -0x96

    #@38
    if-lt v1, v5, :cond_7

    #@3a
    const/4 v4, 0x1

    #@3b
    .restart local v4    # "levelEcio":I
    goto :goto_1

    #@3c
    .line 675
    .end local v4    # "levelEcio":I
    :cond_7
    const/4 v4, 0x0

    #@3d
    .restart local v4    # "levelEcio":I
    goto :goto_1

    #@3e
    :cond_8
    move v2, v4

    #@3f
    .line 677
    goto :goto_2
.end method

.method public getDbm()I
    .locals 5

    #@0
    .prologue
    const/16 v4, -0x78

    #@2
    .line 575
    const v1, 0x7fffffff

    #@5
    .line 577
    .local v1, "dBm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_2

    #@b
    .line 578
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    #@e
    move-result v1

    #@f
    .line 579
    const v3, 0x7fffffff

    #@12
    if-ne v1, v3, :cond_0

    #@14
    .line 580
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    #@17
    move-result v3

    #@18
    if-nez v3, :cond_1

    #@1a
    .line 581
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    #@1d
    move-result v1

    #@1e
    .line 594
    :cond_0
    :goto_0
    return v1

    #@1f
    .line 583
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    #@22
    move-result v1

    #@23
    goto :goto_0

    #@24
    .line 587
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    #@27
    move-result v0

    #@28
    .line 588
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    #@2b
    move-result v2

    #@2c
    .line 590
    .local v2, "evdoDbm":I
    if-ne v2, v4, :cond_4

    #@2e
    .end local v0    # "cdmaDbm":I
    :cond_3
    :goto_1
    return v0

    #@2f
    .restart local v0    # "cdmaDbm":I
    :cond_4
    if-ne v0, v4, :cond_5

    #@31
    move v0, v2

    #@32
    goto :goto_1

    #@33
    .line 591
    :cond_5
    if-lt v0, v2, :cond_3

    #@35
    move v0, v2

    #@36
    goto :goto_1
.end method

.method public getEvdoAsuLevel()I
    .locals 6

    #@0
    .prologue
    .line 747
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    #@3
    move-result v0

    #@4
    .line 748
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    #@7
    move-result v1

    #@8
    .line 752
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    #@a
    if-lt v0, v5, :cond_0

    #@c
    const/16 v3, 0x10

    #@e
    .line 759
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    #@f
    if-lt v1, v5, :cond_5

    #@11
    const/16 v4, 0x10

    #@13
    .line 766
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_a

    #@15
    move v2, v3

    #@16
    .line 768
    .local v2, "level":I
    :goto_2
    return v2

    #@17
    .line 753
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x4b

    #@19
    if-lt v0, v5, :cond_1

    #@1b
    const/16 v3, 0x8

    #@1d
    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    #@1e
    .line 754
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x55

    #@20
    if-lt v0, v5, :cond_2

    #@22
    const/4 v3, 0x4

    #@23
    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    #@24
    .line 755
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x5f

    #@26
    if-lt v0, v5, :cond_3

    #@28
    const/4 v3, 0x2

    #@29
    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    #@2a
    .line 756
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x69

    #@2c
    if-lt v0, v5, :cond_4

    #@2e
    const/4 v3, 0x1

    #@2f
    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    #@30
    .line 757
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/16 v3, 0x63

    #@32
    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    #@33
    .line 760
    :cond_5
    const/4 v5, 0x6

    #@34
    if-lt v1, v5, :cond_6

    #@36
    const/16 v4, 0x8

    #@38
    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    #@39
    .line 761
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x5

    #@3a
    if-lt v1, v5, :cond_7

    #@3c
    const/4 v4, 0x4

    #@3d
    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    #@3e
    .line 762
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v5, 0x3

    #@3f
    if-lt v1, v5, :cond_8

    #@41
    const/4 v4, 0x2

    #@42
    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    #@43
    .line 763
    .end local v4    # "levelEvdoSnr":I
    :cond_8
    const/4 v5, 0x1

    #@44
    if-lt v1, v5, :cond_9

    #@46
    const/4 v4, 0x1

    #@47
    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    #@48
    .line 764
    .end local v4    # "levelEvdoSnr":I
    :cond_9
    const/16 v4, 0x63

    #@4a
    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    #@4b
    :cond_a
    move v2, v4

    #@4c
    .line 766
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    #@0
    .prologue
    .line 455
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@2
    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    #@0
    .prologue
    .line 462
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@2
    return v0
.end method

.method public getEvdoLevel()I
    .locals 6

    #@0
    .prologue
    .line 719
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    #@3
    move-result v0

    #@4
    .line 720
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    #@7
    move-result v1

    #@8
    .line 724
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    #@a
    if-lt v0, v5, :cond_0

    #@c
    const/4 v3, 0x4

    #@d
    .line 730
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    #@e
    if-lt v1, v5, :cond_4

    #@10
    const/4 v4, 0x4

    #@11
    .line 736
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_8

    #@13
    move v2, v3

    #@14
    .line 738
    .local v2, "level":I
    :goto_2
    return v2

    #@15
    .line 725
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x4b

    #@17
    if-lt v0, v5, :cond_1

    #@19
    const/4 v3, 0x3

    #@1a
    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    #@1b
    .line 726
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x5a

    #@1d
    if-lt v0, v5, :cond_2

    #@1f
    const/4 v3, 0x2

    #@20
    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    #@21
    .line 727
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x69

    #@23
    if-lt v0, v5, :cond_3

    #@25
    const/4 v3, 0x1

    #@26
    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    #@27
    .line 728
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/4 v3, 0x0

    #@28
    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    #@29
    .line 731
    :cond_4
    const/4 v5, 0x5

    #@2a
    if-lt v1, v5, :cond_5

    #@2c
    const/4 v4, 0x3

    #@2d
    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    #@2e
    .line 732
    .end local v4    # "levelEvdoSnr":I
    :cond_5
    const/4 v5, 0x3

    #@2f
    if-lt v1, v5, :cond_6

    #@31
    const/4 v4, 0x2

    #@32
    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    #@33
    .line 733
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x1

    #@34
    if-lt v1, v5, :cond_7

    #@36
    const/4 v4, 0x1

    #@37
    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    #@38
    .line 734
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v4, 0x0

    #@39
    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    #@3a
    :cond_8
    move v2, v4

    #@3b
    .line 736
    goto :goto_2
.end method

.method public getEvdoSnr()I
    .locals 1

    #@0
    .prologue
    .line 469
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@2
    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    #@0
    .prologue
    .line 648
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    #@3
    move-result v0

    #@4
    .line 650
    .local v0, "level":I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    #@0
    .prologue
    .line 434
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@2
    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 605
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    #@4
    move-result v2

    #@5
    .line 606
    .local v2, "gsmSignalStrength":I
    const/16 v4, 0x63

    #@7
    if-ne v2, v4, :cond_0

    #@9
    move v0, v3

    #@a
    .line 607
    .local v0, "asu":I
    :goto_0
    if-eq v0, v3, :cond_1

    #@c
    .line 608
    mul-int/lit8 v3, v0, 0x2

    #@e
    add-int/lit8 v1, v3, -0x71

    #@10
    .line 613
    .local v1, "dBm":I
    :goto_1
    return v1

    #@11
    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_0
    move v0, v2

    #@12
    .line 606
    goto :goto_0

    #@13
    .line 610
    .restart local v0    # "asu":I
    :cond_1
    const/4 v1, -0x1

    #@14
    .restart local v1    # "dBm":I
    goto :goto_1
.end method

.method public getGsmLevel()I
    .locals 3

    #@0
    .prologue
    .line 628
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    #@3
    move-result v0

    #@4
    .line 629
    .local v0, "asu":I
    const/4 v2, 0x2

    #@5
    if-le v0, v2, :cond_0

    #@7
    const/16 v2, 0x63

    #@9
    if-ne v0, v2, :cond_1

    #@b
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 635
    .local v1, "level":I
    :goto_0
    return v1

    #@d
    .line 630
    .end local v1    # "level":I
    :cond_1
    const/16 v2, 0xc

    #@f
    if-lt v0, v2, :cond_2

    #@11
    const/4 v1, 0x4

    #@12
    .restart local v1    # "level":I
    goto :goto_0

    #@13
    .line 631
    .end local v1    # "level":I
    :cond_2
    const/16 v2, 0x8

    #@15
    if-lt v0, v2, :cond_3

    #@17
    const/4 v1, 0x3

    #@18
    .restart local v1    # "level":I
    goto :goto_0

    #@19
    .line 632
    .end local v1    # "level":I
    :cond_3
    const/4 v2, 0x5

    #@1a
    if-lt v0, v2, :cond_4

    #@1c
    const/4 v1, 0x2

    #@1d
    .restart local v1    # "level":I
    goto :goto_0

    #@1e
    .line 633
    .end local v1    # "level":I
    :cond_4
    const/4 v1, 0x1

    #@1f
    .restart local v1    # "level":I
    goto :goto_0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    #@0
    .prologue
    .line 427
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@2
    return v0
.end method

.method public getLevel()I
    .locals 4

    #@0
    .prologue
    .line 506
    const/4 v2, 0x0

    #@1
    .line 508
    .local v2, "level":I
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 509
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    #@8
    move-result v2

    #@9
    .line 510
    if-nez v2, :cond_0

    #@b
    .line 511
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    #@e
    move-result v2

    #@f
    .line 512
    if-nez v2, :cond_0

    #@11
    .line 513
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    #@14
    move-result v2

    #@15
    .line 531
    :cond_0
    :goto_0
    return v2

    #@16
    .line 517
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    #@19
    move-result v0

    #@1a
    .line 518
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    #@1d
    move-result v1

    #@1e
    .line 519
    .local v1, "evdoLevel":I
    if-nez v1, :cond_2

    #@20
    .line 521
    move v2, v0

    #@21
    goto :goto_0

    #@22
    .line 522
    :cond_2
    if-nez v0, :cond_3

    #@24
    .line 524
    move v2, v1

    #@25
    goto :goto_0

    #@26
    .line 527
    :cond_3
    if-ge v0, v1, :cond_4

    #@28
    move v2, v0

    #@29
    goto :goto_0

    #@2a
    :cond_4
    move v2, v1

    #@2b
    goto :goto_0
.end method

.method public getLteAsuLevel()I
    .locals 3

    #@0
    .prologue
    .line 860
    const/16 v0, 0x63

    #@2
    .line 861
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    #@5
    move-result v1

    #@6
    .line 875
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    #@9
    if-ne v1, v2, :cond_0

    #@b
    const/16 v0, 0xff

    #@d
    .line 878
    :goto_0
    return v0

    #@e
    .line 876
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    #@10
    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    #@0
    .prologue
    .line 494
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@2
    return v0
.end method

.method public getLteDbm()I
    .locals 1

    #@0
    .prologue
    .line 777
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@2
    return v0
.end method

.method public getLteLevel()I
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x5

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, -0x1

    #@3
    .line 792
    const/4 v2, 0x0

    #@4
    .local v2, "rssiIconLevel":I
    const/4 v0, -0x1

    #@5
    .local v0, "rsrpIconLevel":I
    const/4 v3, -0x1

    #@6
    .line 794
    .local v3, "snrIconLevel":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@9
    move-result-object v5

    #@a
    const v6, 0x10e0091

    #@d
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    #@10
    move-result v1

    #@11
    .line 797
    .local v1, "rsrpThreshType":I
    if-nez v1, :cond_2

    #@13
    .line 798
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    #@15
    .line 803
    .local v4, "threshRsrp":[I
    :goto_0
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@17
    aget v6, v4, v9

    #@19
    if-le v5, v6, :cond_3

    #@1b
    const/4 v0, -0x1

    #@1c
    .line 816
    :cond_0
    :goto_1
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@1e
    const/16 v6, 0x12c

    #@20
    if-le v5, v6, :cond_8

    #@22
    const/4 v3, -0x1

    #@23
    .line 828
    :cond_1
    :goto_2
    if-eq v3, v7, :cond_e

    #@25
    if-eq v0, v7, :cond_e

    #@27
    .line 834
    if-ge v0, v3, :cond_d

    #@29
    .end local v0    # "rsrpIconLevel":I
    :goto_3
    return v0

    #@2a
    .line 800
    .end local v4    # "threshRsrp":[I
    .restart local v0    # "rsrpIconLevel":I
    :cond_2
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    #@2c
    .restart local v4    # "threshRsrp":[I
    goto :goto_0

    #@2d
    .line 804
    :cond_3
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@2f
    const/4 v6, 0x4

    #@30
    aget v6, v4, v6

    #@32
    if-lt v5, v6, :cond_4

    #@34
    const/4 v0, 0x4

    #@35
    goto :goto_1

    #@36
    .line 805
    :cond_4
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@38
    const/4 v6, 0x3

    #@39
    aget v6, v4, v6

    #@3b
    if-lt v5, v6, :cond_5

    #@3d
    const/4 v0, 0x3

    #@3e
    goto :goto_1

    #@3f
    .line 806
    :cond_5
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@41
    const/4 v6, 0x2

    #@42
    aget v6, v4, v6

    #@44
    if-lt v5, v6, :cond_6

    #@46
    const/4 v0, 0x2

    #@47
    goto :goto_1

    #@48
    .line 807
    :cond_6
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@4a
    const/4 v6, 0x1

    #@4b
    aget v6, v4, v6

    #@4d
    if-lt v5, v6, :cond_7

    #@4f
    const/4 v0, 0x1

    #@50
    goto :goto_1

    #@51
    .line 808
    :cond_7
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@53
    aget v6, v4, v8

    #@55
    if-lt v5, v6, :cond_0

    #@57
    const/4 v0, 0x0

    #@58
    goto :goto_1

    #@59
    .line 817
    :cond_8
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@5b
    const/16 v6, 0x82

    #@5d
    if-lt v5, v6, :cond_9

    #@5f
    const/4 v3, 0x4

    #@60
    goto :goto_2

    #@61
    .line 818
    :cond_9
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@63
    const/16 v6, 0x2d

    #@65
    if-lt v5, v6, :cond_a

    #@67
    const/4 v3, 0x3

    #@68
    goto :goto_2

    #@69
    .line 819
    :cond_a
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@6b
    const/16 v6, 0xa

    #@6d
    if-lt v5, v6, :cond_b

    #@6f
    const/4 v3, 0x2

    #@70
    goto :goto_2

    #@71
    .line 820
    :cond_b
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@73
    const/16 v6, -0x1e

    #@75
    if-lt v5, v6, :cond_c

    #@77
    const/4 v3, 0x1

    #@78
    goto :goto_2

    #@79
    .line 821
    :cond_c
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@7b
    const/16 v6, -0xc8

    #@7d
    if-lt v5, v6, :cond_1

    #@7f
    .line 822
    const/4 v3, 0x0

    #@80
    goto :goto_2

    #@81
    :cond_d
    move v0, v3

    #@82
    .line 834
    goto :goto_3

    #@83
    .line 837
    :cond_e
    if-eq v3, v7, :cond_f

    #@85
    return v3

    #@86
    .line 839
    :cond_f
    if-eq v0, v7, :cond_10

    #@88
    return v0

    #@89
    .line 842
    :cond_10
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@8b
    const/16 v6, 0x3f

    #@8d
    if-le v5, v6, :cond_12

    #@8f
    const/4 v2, 0x0

    #@90
    .line 850
    :cond_11
    :goto_4
    return v2

    #@91
    .line 843
    :cond_12
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@93
    const/16 v6, 0xc

    #@95
    if-lt v5, v6, :cond_13

    #@97
    const/4 v2, 0x4

    #@98
    goto :goto_4

    #@99
    .line 844
    :cond_13
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@9b
    const/16 v6, 0x8

    #@9d
    if-lt v5, v6, :cond_14

    #@9f
    const/4 v2, 0x3

    #@a0
    goto :goto_4

    #@a1
    .line 845
    :cond_14
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@a3
    if-lt v5, v9, :cond_15

    #@a5
    const/4 v2, 0x2

    #@a6
    goto :goto_4

    #@a7
    .line 846
    :cond_15
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@a9
    if-ltz v5, :cond_11

    #@ab
    const/4 v2, 0x1

    #@ac
    goto :goto_4
.end method

.method public getLteRsrp()I
    .locals 1

    #@0
    .prologue
    .line 479
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@2
    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    #@0
    .prologue
    .line 484
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@2
    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    #@0
    .prologue
    .line 489
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@2
    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    #@0
    .prologue
    .line 474
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@2
    return v0
.end method

.method public getTdScdmaAsuLevel()I
    .locals 3

    #@0
    .prologue
    .line 927
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    #@3
    move-result v1

    #@4
    .line 930
    .local v1, "tdScdmaDbm":I
    const v2, 0x7fffffff

    #@7
    if-ne v1, v2, :cond_0

    #@9
    const/16 v0, 0xff

    #@b
    .line 933
    .local v0, "tdScdmaAsuLevel":I
    :goto_0
    return v0

    #@c
    .line 931
    .end local v0    # "tdScdmaAsuLevel":I
    :cond_0
    add-int/lit8 v0, v1, 0x78

    #@e
    .restart local v0    # "tdScdmaAsuLevel":I
    goto :goto_0
.end method

.method public getTdScdmaDbm()I
    .locals 1

    #@0
    .prologue
    .line 894
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    #@2
    return v0
.end method

.method public getTdScdmaLevel()I
    .locals 3

    #@0
    .prologue
    .line 906
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    #@3
    move-result v1

    #@4
    .line 909
    .local v1, "tdScdmaDbm":I
    const/16 v2, -0x19

    #@6
    if-gt v1, v2, :cond_0

    #@8
    const v2, 0x7fffffff

    #@b
    if-ne v1, v2, :cond_1

    #@d
    .line 910
    :cond_0
    const/4 v0, 0x0

    #@e
    .line 918
    .local v0, "level":I
    :goto_0
    return v0

    #@f
    .line 911
    .end local v0    # "level":I
    :cond_1
    const/16 v2, -0x31

    #@11
    if-lt v1, v2, :cond_2

    #@13
    const/4 v0, 0x4

    #@14
    .restart local v0    # "level":I
    goto :goto_0

    #@15
    .line 912
    .end local v0    # "level":I
    :cond_2
    const/16 v2, -0x49

    #@17
    if-lt v1, v2, :cond_3

    #@19
    const/4 v0, 0x3

    #@1a
    .restart local v0    # "level":I
    goto :goto_0

    #@1b
    .line 913
    .end local v0    # "level":I
    :cond_3
    const/16 v2, -0x61

    #@1d
    if-lt v1, v2, :cond_4

    #@1f
    const/4 v0, 0x2

    #@20
    .restart local v0    # "level":I
    goto :goto_0

    #@21
    .line 914
    .end local v0    # "level":I
    :cond_4
    const/16 v2, -0x6e

    #@23
    if-lt v1, v2, :cond_5

    #@25
    const/4 v0, 0x1

    #@26
    .restart local v0    # "level":I
    goto :goto_0

    #@27
    .line 915
    .end local v0    # "level":I
    :cond_5
    const/4 v0, 0x0

    #@28
    .restart local v0    # "level":I
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 942
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@2
    mul-int/lit8 v0, v0, 0x1f

    #@4
    .line 943
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@6
    mul-int/lit8 v1, v1, 0x1f

    #@8
    .line 942
    add-int/2addr v0, v1

    #@9
    .line 944
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@b
    mul-int/lit8 v1, v1, 0x1f

    #@d
    .line 942
    add-int/2addr v0, v1

    #@e
    .line 944
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@10
    mul-int/lit8 v1, v1, 0x1f

    #@12
    .line 942
    add-int/2addr v0, v1

    #@13
    .line 945
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@15
    mul-int/lit8 v1, v1, 0x1f

    #@17
    .line 942
    add-int/2addr v0, v1

    #@18
    .line 945
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@1a
    mul-int/lit8 v1, v1, 0x1f

    #@1c
    .line 942
    add-int/2addr v0, v1

    #@1d
    .line 945
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@1f
    mul-int/lit8 v1, v1, 0x1f

    #@21
    .line 942
    add-int/2addr v0, v1

    #@22
    .line 946
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@24
    mul-int/lit8 v1, v1, 0x1f

    #@26
    .line 942
    add-int/2addr v0, v1

    #@27
    .line 946
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@29
    mul-int/lit8 v1, v1, 0x1f

    #@2b
    .line 942
    add-int/2addr v0, v1

    #@2c
    .line 947
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@2e
    mul-int/lit8 v1, v1, 0x1f

    #@30
    .line 942
    add-int/2addr v0, v1

    #@31
    .line 947
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@33
    mul-int/lit8 v1, v1, 0x1f

    #@35
    .line 942
    add-int/2addr v0, v1

    #@36
    .line 947
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@38
    mul-int/lit8 v1, v1, 0x1f

    #@3a
    .line 942
    add-int/2addr v0, v1

    #@3b
    .line 948
    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    #@3d
    mul-int/lit8 v1, v1, 0x1f

    #@3f
    .line 942
    add-int/2addr v1, v0

    #@40
    .line 948
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@42
    if-eqz v0, :cond_0

    #@44
    const/4 v0, 0x1

    #@45
    .line 942
    :goto_0
    add-int/2addr v0, v1

    #@46
    return v0

    #@47
    .line 948
    :cond_0
    const/4 v0, 0x0

    #@48
    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z

    #@0
    .prologue
    .line 243
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@2
    .line 244
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@4
    .line 245
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@6
    .line 246
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@8
    .line 247
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@a
    .line 248
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@c
    .line 249
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@e
    .line 250
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@10
    .line 251
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@12
    .line 252
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@14
    .line 253
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@16
    .line 254
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@18
    .line 255
    const v0, 0x7fffffff

    #@1b
    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    #@1d
    .line 256
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@1f
    .line 242
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsm"    # Z

    #@0
    .prologue
    .line 215
    const/16 v8, 0x63

    #@2
    const v9, 0x7fffffff

    #@5
    .line 216
    const v10, 0x7fffffff

    #@8
    const v11, 0x7fffffff

    #@b
    const v12, 0x7fffffff

    #@e
    move-object v0, p0

    #@f
    move v1, p1

    #@10
    move/from16 v2, p2

    #@12
    move/from16 v3, p3

    #@14
    move/from16 v4, p4

    #@16
    move/from16 v5, p5

    #@18
    move/from16 v6, p6

    #@1a
    move/from16 v7, p7

    #@1c
    move/from16 v13, p8

    #@1e
    .line 214
    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    #@21
    .line 213
    return-void
.end method

.method public isGsm()Z
    .locals 1

    #@0
    .prologue
    .line 885
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@2
    return v0
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    #@0
    .prologue
    .line 419
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@2
    .line 418
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SignalStrength: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 990
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@e
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 991
    const-string/jumbo v1, " "

    #@15
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 991
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@1b
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 992
    const-string/jumbo v1, " "

    #@22
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 992
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@28
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 993
    const-string/jumbo v1, " "

    #@2f
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 993
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@35
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 994
    const-string/jumbo v1, " "

    #@3c
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 994
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@42
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 995
    const-string/jumbo v1, " "

    #@49
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 995
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@4f
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 996
    const-string/jumbo v1, " "

    #@56
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 996
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@5c
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 997
    const-string/jumbo v1, " "

    #@63
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 997
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@69
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    .line 998
    const-string/jumbo v1, " "

    #@70
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    .line 998
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@76
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    .line 999
    const-string/jumbo v1, " "

    #@7d
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    .line 999
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@83
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v0

    #@87
    .line 1000
    const-string/jumbo v1, " "

    #@8a
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v0

    #@8e
    .line 1000
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@90
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@93
    move-result-object v0

    #@94
    .line 1001
    const-string/jumbo v1, " "

    #@97
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v0

    #@9b
    .line 1001
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@9d
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v0

    #@a1
    .line 1002
    const-string/jumbo v1, " "

    #@a4
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v0

    #@a8
    .line 1002
    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    #@aa
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v0

    #@ae
    .line 1003
    const-string/jumbo v1, " "

    #@b1
    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v1

    #@b5
    .line 1003
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@b7
    if-eqz v0, :cond_0

    #@b9
    const-string/jumbo v0, "gsm|lte"

    #@bc
    .line 989
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v0

    #@c0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v0

    #@c4
    return-object v0

    #@c5
    .line 1003
    :cond_0
    const-string/jumbo v0, "cdma"

    #@c8
    goto :goto_0
.end method

.method public validateInput()V
    .locals 5

    #@0
    .prologue
    const/16 v1, 0x63

    #@2
    const/4 v3, -0x1

    #@3
    const/16 v2, -0x78

    #@5
    const v4, 0x7fffffff

    #@8
    .line 387
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@a
    if-ltz v0, :cond_4

    #@c
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@e
    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@10
    .line 390
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@12
    if-lez v0, :cond_5

    #@14
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@16
    neg-int v0, v0

    #@17
    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@19
    .line 391
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@1b
    if-lez v0, :cond_6

    #@1d
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@1f
    neg-int v0, v0

    #@20
    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@22
    .line 393
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@24
    if-lez v0, :cond_0

    #@26
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@28
    neg-int v2, v0

    #@29
    :cond_0
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@2b
    .line 394
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@2d
    if-ltz v0, :cond_7

    #@2f
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@31
    neg-int v0, v0

    #@32
    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@34
    .line 395
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@36
    if-lez v0, :cond_1

    #@38
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@3a
    const/16 v2, 0x8

    #@3c
    if-gt v0, v2, :cond_1

    #@3e
    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@40
    :cond_1
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@42
    .line 398
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@44
    if-ltz v0, :cond_2

    #@46
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@48
    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@4a
    .line 399
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@4c
    const/16 v1, 0x2c

    #@4e
    if-lt v0, v1, :cond_8

    #@50
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@52
    const/16 v1, 0x8c

    #@54
    if-gt v0, v1, :cond_8

    #@56
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@58
    neg-int v0, v0

    #@59
    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@5b
    .line 400
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@5d
    const/4 v1, 0x3

    #@5e
    if-lt v0, v1, :cond_9

    #@60
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@62
    const/16 v1, 0x14

    #@64
    if-gt v0, v1, :cond_9

    #@66
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@68
    neg-int v0, v0

    #@69
    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@6b
    .line 401
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@6d
    const/16 v1, -0xc8

    #@6f
    if-lt v0, v1, :cond_a

    #@71
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@73
    const/16 v1, 0x12c

    #@75
    if-gt v0, v1, :cond_a

    #@77
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@79
    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@7b
    .line 404
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    #@7d
    const/16 v1, 0x19

    #@7f
    if-lt v0, v1, :cond_3

    #@81
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    #@83
    const/16 v1, 0x78

    #@85
    if-gt v0, v1, :cond_3

    #@87
    .line 405
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    #@89
    neg-int v4, v0

    #@8a
    .line 404
    :cond_3
    iput v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    #@8c
    .line 384
    return-void

    #@8d
    :cond_4
    move v0, v1

    #@8e
    .line 387
    goto :goto_0

    #@8f
    :cond_5
    move v0, v2

    #@90
    .line 390
    goto :goto_1

    #@91
    .line 391
    :cond_6
    const/16 v0, -0xa0

    #@93
    goto :goto_2

    #@94
    :cond_7
    move v0, v3

    #@95
    .line 394
    goto :goto_3

    #@96
    :cond_8
    move v0, v4

    #@97
    .line 399
    goto :goto_4

    #@98
    :cond_9
    move v0, v4

    #@99
    .line 400
    goto :goto_5

    #@9a
    :cond_a
    move v0, v4

    #@9b
    .line 402
    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 335
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 336
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 337
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 338
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 339
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 340
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 341
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 342
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 343
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 344
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 345
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 346
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 347
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 348
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@43
    if-eqz v0, :cond_0

    #@45
    const/4 v0, 0x1

    #@46
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@49
    .line 334
    return-void

    #@4a
    .line 348
    :cond_0
    const/4 v0, 0x0

    #@4b
    goto :goto_0
.end method
