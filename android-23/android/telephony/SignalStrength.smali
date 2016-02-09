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
    .line 340
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
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 98
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@b
    .line 99
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@d
    .line 100
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@f
    .line 101
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@11
    .line 102
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@13
    .line 103
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@15
    .line 104
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@17
    .line 105
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@19
    .line 106
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@1b
    .line 107
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@1d
    .line 108
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@1f
    .line 109
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@21
    .line 110
    const/4 v0, 0x1

    #@22
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@24
    .line 97
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
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 147
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    #@6
    .line 146
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
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 162
    const/16 v8, 0x63

    #@5
    const v9, 0x7fffffff

    #@8
    .line 163
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
    .line 161
    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    #@24
    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@a
    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v1

    #@e
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@10
    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v1

    #@14
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@16
    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v1

    #@1a
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@1c
    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v1

    #@20
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@22
    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v1

    #@26
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@28
    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v1

    #@2c
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@2e
    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v1

    #@32
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@34
    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v1

    #@38
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@3a
    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v1

    #@3e
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@40
    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@43
    move-result v1

    #@44
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@46
    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v1

    #@4a
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@4c
    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v1

    #@50
    if-eqz v1, :cond_0

    #@52
    const/4 v0, 0x1

    #@53
    :cond_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@55
    .line 264
    return-void
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    #@0
    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 174
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    #@6
    .line 173
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
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 122
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@b
    .line 123
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@d
    .line 124
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@f
    .line 125
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@11
    .line 126
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@13
    .line 127
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@15
    .line 128
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@17
    .line 129
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@19
    .line 130
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@1b
    .line 131
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@1d
    .line 132
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@1f
    .line 133
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@21
    .line 134
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@23
    .line 121
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 967
    const-string/jumbo v0, "SignalStrength"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 966
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 292
    new-instance v0, Landroid/telephony/SignalStrength;

    #@2
    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    #@5
    .line 293
    .local v0, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@b
    .line 294
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v1

    #@f
    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@11
    .line 295
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v1

    #@15
    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@17
    .line 296
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v1

    #@1b
    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@1d
    .line 297
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v1

    #@21
    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@23
    .line 298
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v1

    #@27
    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@29
    .line 299
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v1

    #@2d
    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@2f
    .line 300
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v1

    #@33
    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@35
    .line 301
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v1

    #@39
    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@3b
    .line 302
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v1

    #@3f
    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@41
    .line 303
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v1

    #@45
    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@47
    .line 304
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v1

    #@4b
    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@4d
    .line 306
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 87
    new-instance v0, Landroid/telephony/SignalStrength;

    #@2
    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    #@5
    .line 88
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    #@8
    .line 89
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 926
    const-string/jumbo v0, "GsmSignalStrength"

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@9
    .line 927
    const-string/jumbo v0, "GsmBitErrorRate"

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@12
    .line 928
    const-string/jumbo v0, "CdmaDbm"

    #@15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@1b
    .line 929
    const-string/jumbo v0, "CdmaEcio"

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@21
    move-result v0

    #@22
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@24
    .line 930
    const-string/jumbo v0, "EvdoDbm"

    #@27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@2d
    .line 931
    const-string/jumbo v0, "EvdoEcio"

    #@30
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@33
    move-result v0

    #@34
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@36
    .line 932
    const-string/jumbo v0, "EvdoSnr"

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@3c
    move-result v0

    #@3d
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@3f
    .line 933
    const-string/jumbo v0, "LteSignalStrength"

    #@42
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@45
    move-result v0

    #@46
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@48
    .line 934
    const-string/jumbo v0, "LteRsrp"

    #@4b
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@4e
    move-result v0

    #@4f
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@51
    .line 935
    const-string/jumbo v0, "LteRsrq"

    #@54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@57
    move-result v0

    #@58
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@5a
    .line 936
    const-string/jumbo v0, "LteRssnr"

    #@5d
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@60
    move-result v0

    #@61
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@63
    .line 937
    const-string/jumbo v0, "LteCqi"

    #@66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@69
    move-result v0

    #@6a
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@6c
    .line 938
    const-string/jumbo v0, "isGsm"

    #@6f
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@72
    move-result v0

    #@73
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@75
    .line 925
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    #@0
    .prologue
    .line 244
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@2
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@4
    .line 245
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@6
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@8
    .line 246
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@a
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@c
    .line 247
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@e
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@10
    .line 248
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@12
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@14
    .line 249
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@16
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@18
    .line 250
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@1a
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@1c
    .line 251
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@1e
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@20
    .line 252
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@22
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@24
    .line 253
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@26
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@28
    .line 254
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@2a
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@2c
    .line 255
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@2e
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@30
    .line 256
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    #@32
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@34
    .line 243
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 332
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
    .line 874
    :try_start_0
    move-object v0, p1

    #@2
    check-cast v0, Landroid/telephony/SignalStrength;

    #@4
    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 879
    .local v2, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_0

    #@7
    .line 880
    return v3

    #@8
    .line 875
    .end local v2    # "s":Landroid/telephony/SignalStrength;
    :catch_0
    move-exception v1

    #@9
    .line 876
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    #@a
    .line 883
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_0
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@c
    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@e
    if-ne v4, v5, :cond_1

    #@10
    .line 884
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@12
    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@14
    if-ne v4, v5, :cond_1

    #@16
    .line 885
    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@18
    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@1a
    if-ne v4, v5, :cond_1

    #@1c
    .line 886
    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@1e
    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@20
    if-ne v4, v5, :cond_1

    #@22
    .line 887
    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@24
    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@26
    if-ne v4, v5, :cond_1

    #@28
    .line 888
    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@2a
    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@2c
    if-ne v4, v5, :cond_1

    #@2e
    .line 889
    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@30
    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@32
    if-ne v4, v5, :cond_1

    #@34
    .line 890
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@36
    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@38
    if-ne v4, v5, :cond_1

    #@3a
    .line 891
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@3c
    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@3e
    if-ne v4, v5, :cond_1

    #@40
    .line 892
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@42
    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@44
    if-ne v4, v5, :cond_1

    #@46
    .line 893
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@48
    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@4a
    if-ne v4, v5, :cond_1

    #@4c
    .line 894
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@4e
    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@50
    if-ne v4, v5, :cond_1

    #@52
    .line 895
    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@54
    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    #@56
    if-ne v4, v5, :cond_1

    #@58
    const/4 v3, 0x1

    #@59
    .line 883
    :cond_1
    return v3
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 948
    const-string/jumbo v0, "GsmSignalStrength"

    #@3
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@8
    .line 949
    const-string/jumbo v0, "GsmBitErrorRate"

    #@b
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@10
    .line 950
    const-string/jumbo v0, "CdmaDbm"

    #@13
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@18
    .line 951
    const-string/jumbo v0, "CdmaEcio"

    #@1b
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@1d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@20
    .line 952
    const-string/jumbo v0, "EvdoDbm"

    #@23
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@25
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@28
    .line 953
    const-string/jumbo v0, "EvdoEcio"

    #@2b
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@2d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@30
    .line 954
    const-string/jumbo v0, "EvdoSnr"

    #@33
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@35
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@38
    .line 955
    const-string/jumbo v0, "LteSignalStrength"

    #@3b
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@3d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@40
    .line 956
    const-string/jumbo v0, "LteRsrp"

    #@43
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@45
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@48
    .line 957
    const-string/jumbo v0, "LteRsrq"

    #@4b
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@4d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@50
    .line 958
    const-string/jumbo v0, "LteRssnr"

    #@53
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@55
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@58
    .line 959
    const-string/jumbo v0, "LteCqi"

    #@5b
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@5d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@60
    .line 960
    const-string/jumbo v0, "isGsm"

    #@63
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@65
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@6c
    move-result v1

    #@6d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@70
    .line 947
    return-void
.end method

.method public getAsuLevel()I
    .locals 4

    #@0
    .prologue
    .line 512
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@2
    if-eqz v3, :cond_1

    #@4
    .line 513
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_0

    #@a
    .line 514
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    #@d
    move-result v0

    #@e
    .line 533
    .local v0, "asuLevel":I
    :goto_0
    return v0

    #@f
    .line 516
    .end local v0    # "asuLevel":I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    #@12
    move-result v0

    #@13
    .restart local v0    # "asuLevel":I
    goto :goto_0

    #@14
    .line 519
    .end local v0    # "asuLevel":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    #@17
    move-result v1

    #@18
    .line 520
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    #@1b
    move-result v2

    #@1c
    .line 521
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_2

    #@1e
    .line 523
    move v0, v1

    #@1f
    .restart local v0    # "asuLevel":I
    goto :goto_0

    #@20
    .line 524
    .end local v0    # "asuLevel":I
    :cond_2
    if-nez v1, :cond_3

    #@22
    .line 526
    move v0, v2

    #@23
    .restart local v0    # "asuLevel":I
    goto :goto_0

    #@24
    .line 529
    .end local v0    # "asuLevel":I
    :cond_3
    if-ge v1, v2, :cond_4

    #@26
    move v0, v1

    #@27
    .restart local v0    # "asuLevel":I
    goto :goto_0

    #@28
    .end local v0    # "asuLevel":I
    :cond_4
    move v0, v2

    #@29
    .restart local v0    # "asuLevel":I
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
    .line 651
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    #@7
    move-result v1

    #@8
    .line 652
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    #@b
    move-result v2

    #@c
    .line 656
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    #@e
    if-lt v1, v5, :cond_0

    #@10
    const/16 v0, 0x10

    #@12
    .line 664
    .local v0, "cdmaAsuLevel":I
    :goto_0
    if-lt v2, v7, :cond_5

    #@14
    const/16 v3, 0x10

    #@16
    .line 671
    .local v3, "ecioAsuLevel":I
    :goto_1
    if-ge v0, v3, :cond_a

    #@18
    move v4, v0

    #@19
    .line 673
    .local v4, "level":I
    :goto_2
    return v4

    #@1a
    .line 657
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
    .line 658
    .end local v0    # "cdmaAsuLevel":I
    :cond_1
    if-lt v1, v7, :cond_2

    #@23
    const/4 v0, 0x4

    #@24
    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    #@25
    .line 659
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
    .line 660
    .end local v0    # "cdmaAsuLevel":I
    :cond_3
    if-lt v1, v6, :cond_4

    #@2d
    const/4 v0, 0x1

    #@2e
    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    #@2f
    .line 661
    .end local v0    # "cdmaAsuLevel":I
    :cond_4
    const/16 v0, 0x63

    #@31
    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    #@32
    .line 665
    :cond_5
    if-lt v2, v6, :cond_6

    #@34
    const/16 v3, 0x8

    #@36
    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    #@37
    .line 666
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
    .line 667
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
    .line 668
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
    .line 669
    .end local v3    # "ecioAsuLevel":I
    :cond_9
    const/16 v3, 0x63

    #@4b
    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    #@4c
    .line 671
    :cond_a
    move v4, v3

    #@4d
    .restart local v4    # "level":I
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    #@0
    .prologue
    .line 415
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@2
    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    #@0
    .prologue
    .line 422
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@2
    return v0
.end method

.method public getCdmaLevel()I
    .locals 6

    #@0
    .prologue
    .line 622
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    #@3
    move-result v0

    #@4
    .line 623
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    #@7
    move-result v1

    #@8
    .line 627
    .local v1, "cdmaEcio":I
    const/16 v5, -0x4b

    #@a
    if-lt v0, v5, :cond_0

    #@c
    const/4 v3, 0x4

    #@d
    .line 634
    .local v3, "levelDbm":I
    :goto_0
    const/16 v5, -0x5a

    #@f
    if-lt v1, v5, :cond_4

    #@11
    const/4 v4, 0x4

    #@12
    .line 640
    .local v4, "levelEcio":I
    :goto_1
    if-ge v3, v4, :cond_8

    #@14
    move v2, v3

    #@15
    .line 642
    .local v2, "level":I
    :goto_2
    return v2

    #@16
    .line 628
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
    .line 629
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
    .line 630
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
    .line 631
    .end local v3    # "levelDbm":I
    :cond_3
    const/4 v3, 0x0

    #@29
    .restart local v3    # "levelDbm":I
    goto :goto_0

    #@2a
    .line 635
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
    .line 636
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
    .line 637
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
    .line 638
    .end local v4    # "levelEcio":I
    :cond_7
    const/4 v4, 0x0

    #@3d
    .restart local v4    # "levelEcio":I
    goto :goto_1

    #@3e
    .line 640
    :cond_8
    move v2, v4

    #@3f
    .restart local v2    # "level":I
    goto :goto_2
.end method

.method public getDbm()I
    .locals 5

    #@0
    .prologue
    const/16 v4, -0x78

    #@2
    .line 544
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 545
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    #@b
    move-result v1

    #@c
    .line 546
    .local v1, "dBm":I
    const v3, 0x7fffffff

    #@f
    if-ne v1, v3, :cond_0

    #@11
    .line 547
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    #@14
    move-result v1

    #@15
    .line 557
    :cond_0
    return v1

    #@16
    .line 550
    .end local v1    # "dBm":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    #@19
    move-result v0

    #@1a
    .line 551
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    #@1d
    move-result v2

    #@1e
    .line 553
    .local v2, "evdoDbm":I
    if-ne v2, v4, :cond_3

    #@20
    .end local v0    # "cdmaDbm":I
    :cond_2
    :goto_0
    return v0

    #@21
    .restart local v0    # "cdmaDbm":I
    :cond_3
    if-ne v0, v4, :cond_4

    #@23
    move v0, v2

    #@24
    goto :goto_0

    #@25
    .line 554
    :cond_4
    if-lt v0, v2, :cond_2

    #@27
    move v0, v2

    #@28
    goto :goto_0
.end method

.method public getEvdoAsuLevel()I
    .locals 6

    #@0
    .prologue
    .line 710
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    #@3
    move-result v0

    #@4
    .line 711
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    #@7
    move-result v1

    #@8
    .line 715
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    #@a
    if-lt v0, v5, :cond_0

    #@c
    const/16 v3, 0x10

    #@e
    .line 722
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    #@f
    if-lt v1, v5, :cond_5

    #@11
    const/16 v4, 0x10

    #@13
    .line 729
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_a

    #@15
    move v2, v3

    #@16
    .line 731
    .local v2, "level":I
    :goto_2
    return v2

    #@17
    .line 716
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
    .line 717
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
    .line 718
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
    .line 719
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
    .line 720
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/16 v3, 0x63

    #@32
    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    #@33
    .line 723
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
    .line 724
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
    .line 725
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
    .line 726
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
    .line 727
    .end local v4    # "levelEvdoSnr":I
    :cond_9
    const/16 v4, 0x63

    #@4a
    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    #@4b
    .line 729
    :cond_a
    move v2, v4

    #@4c
    .restart local v2    # "level":I
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    #@0
    .prologue
    .line 429
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@2
    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    #@0
    .prologue
    .line 436
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@2
    return v0
.end method

.method public getEvdoLevel()I
    .locals 6

    #@0
    .prologue
    .line 682
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    #@3
    move-result v0

    #@4
    .line 683
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    #@7
    move-result v1

    #@8
    .line 687
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    #@a
    if-lt v0, v5, :cond_0

    #@c
    const/4 v3, 0x4

    #@d
    .line 693
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    #@e
    if-lt v1, v5, :cond_4

    #@10
    const/4 v4, 0x4

    #@11
    .line 699
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_8

    #@13
    move v2, v3

    #@14
    .line 701
    .local v2, "level":I
    :goto_2
    return v2

    #@15
    .line 688
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
    .line 689
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
    .line 690
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
    .line 691
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/4 v3, 0x0

    #@28
    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    #@29
    .line 694
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
    .line 695
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
    .line 696
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
    .line 697
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v4, 0x0

    #@39
    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    #@3a
    .line 699
    :cond_8
    move v2, v4

    #@3b
    .restart local v2    # "level":I
    goto :goto_2
.end method

.method public getEvdoSnr()I
    .locals 1

    #@0
    .prologue
    .line 443
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@2
    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    #@0
    .prologue
    .line 611
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    #@3
    move-result v0

    #@4
    .line 613
    .local v0, "level":I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    #@0
    .prologue
    .line 408
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@2
    return v0
.end method

.method public getGsmDbm()I
    .locals 4

    #@0
    .prologue
    .line 568
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    #@3
    move-result v2

    #@4
    .line 569
    .local v2, "gsmSignalStrength":I
    const/16 v3, 0x63

    #@6
    if-ne v2, v3, :cond_0

    #@8
    const/4 v0, -0x1

    #@9
    .line 570
    .local v0, "asu":I
    :goto_0
    const/4 v3, -0x1

    #@a
    if-eq v0, v3, :cond_1

    #@c
    .line 571
    mul-int/lit8 v3, v0, 0x2

    #@e
    add-int/lit8 v1, v3, -0x71

    #@10
    .line 576
    .local v1, "dBm":I
    :goto_1
    return v1

    #@11
    .line 569
    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_0
    move v0, v2

    #@12
    .restart local v0    # "asu":I
    goto :goto_0

    #@13
    .line 573
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
    .line 591
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    #@3
    move-result v0

    #@4
    .line 592
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
    .line 598
    .local v1, "level":I
    :goto_0
    return v1

    #@d
    .line 593
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
    .line 594
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
    .line 595
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
    .line 596
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
    .line 401
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@2
    return v0
.end method

.method public getLevel()I
    .locals 4

    #@0
    .prologue
    .line 482
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@2
    if-eqz v3, :cond_1

    #@4
    .line 483
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    #@7
    move-result v2

    #@8
    .line 484
    .local v2, "level":I
    if-nez v2, :cond_0

    #@a
    .line 485
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    #@d
    move-result v2

    #@e
    .line 502
    :cond_0
    :goto_0
    return v2

    #@f
    .line 488
    .end local v2    # "level":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    #@12
    move-result v0

    #@13
    .line 489
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    #@16
    move-result v1

    #@17
    .line 490
    .local v1, "evdoLevel":I
    if-nez v1, :cond_2

    #@19
    .line 492
    move v2, v0

    #@1a
    .restart local v2    # "level":I
    goto :goto_0

    #@1b
    .line 493
    .end local v2    # "level":I
    :cond_2
    if-nez v0, :cond_3

    #@1d
    .line 495
    move v2, v1

    #@1e
    .restart local v2    # "level":I
    goto :goto_0

    #@1f
    .line 498
    .end local v2    # "level":I
    :cond_3
    if-ge v0, v1, :cond_4

    #@21
    move v2, v0

    #@22
    .restart local v2    # "level":I
    goto :goto_0

    #@23
    .end local v2    # "level":I
    :cond_4
    move v2, v1

    #@24
    .restart local v2    # "level":I
    goto :goto_0
.end method

.method public getLteAsuLevel()I
    .locals 3

    #@0
    .prologue
    .line 823
    const/16 v0, 0x63

    #@2
    .line 824
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    #@5
    move-result v1

    #@6
    .line 838
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    #@9
    if-ne v1, v2, :cond_0

    #@b
    const/16 v0, 0xff

    #@d
    .line 841
    :goto_0
    return v0

    #@e
    .line 839
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    #@10
    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    #@0
    .prologue
    .line 468
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@2
    return v0
.end method

.method public getLteDbm()I
    .locals 1

    #@0
    .prologue
    .line 740
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
    .line 755
    const/4 v2, 0x0

    #@4
    .local v2, "rssiIconLevel":I
    const/4 v0, -0x1

    #@5
    .local v0, "rsrpIconLevel":I
    const/4 v3, -0x1

    #@6
    .line 757
    .local v3, "snrIconLevel":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@9
    move-result-object v5

    #@a
    const v6, 0x10e008f

    #@d
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    #@10
    move-result v1

    #@11
    .line 760
    .local v1, "rsrpThreshType":I
    if-nez v1, :cond_2

    #@13
    .line 761
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    #@15
    .line 766
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
    .line 779
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
    .line 791
    :cond_1
    :goto_2
    if-eq v3, v7, :cond_e

    #@25
    if-eq v0, v7, :cond_e

    #@27
    .line 797
    if-ge v0, v3, :cond_d

    #@29
    .end local v0    # "rsrpIconLevel":I
    :goto_3
    return v0

    #@2a
    .line 763
    .end local v4    # "threshRsrp":[I
    .restart local v0    # "rsrpIconLevel":I
    :cond_2
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    #@2c
    .restart local v4    # "threshRsrp":[I
    goto :goto_0

    #@2d
    .line 767
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
    .line 768
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
    .line 769
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
    .line 770
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
    .line 771
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
    .line 780
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
    .line 781
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
    .line 782
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
    .line 783
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
    .line 784
    :cond_c
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@7b
    const/16 v6, -0xc8

    #@7d
    if-lt v5, v6, :cond_1

    #@7f
    .line 785
    const/4 v3, 0x0

    #@80
    goto :goto_2

    #@81
    :cond_d
    move v0, v3

    #@82
    .line 797
    goto :goto_3

    #@83
    .line 800
    :cond_e
    if-eq v3, v7, :cond_f

    #@85
    return v3

    #@86
    .line 802
    :cond_f
    if-eq v0, v7, :cond_10

    #@88
    return v0

    #@89
    .line 805
    :cond_10
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@8b
    const/16 v6, 0x3f

    #@8d
    if-le v5, v6, :cond_12

    #@8f
    const/4 v2, 0x0

    #@90
    .line 813
    :cond_11
    :goto_4
    return v2

    #@91
    .line 806
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
    .line 807
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
    .line 808
    :cond_14
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@a3
    if-lt v5, v9, :cond_15

    #@a5
    const/4 v2, 0x2

    #@a6
    goto :goto_4

    #@a7
    .line 809
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
    .line 453
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@2
    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    #@0
    .prologue
    .line 458
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@2
    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    #@0
    .prologue
    .line 463
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@2
    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    #@0
    .prologue
    .line 448
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 857
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@2
    mul-int/lit8 v0, v0, 0x1f

    #@4
    .line 858
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@6
    mul-int/lit8 v1, v1, 0x1f

    #@8
    .line 857
    add-int/2addr v0, v1

    #@9
    .line 859
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@b
    mul-int/lit8 v1, v1, 0x1f

    #@d
    .line 857
    add-int/2addr v0, v1

    #@e
    .line 859
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@10
    mul-int/lit8 v1, v1, 0x1f

    #@12
    .line 857
    add-int/2addr v0, v1

    #@13
    .line 860
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@15
    mul-int/lit8 v1, v1, 0x1f

    #@17
    .line 857
    add-int/2addr v0, v1

    #@18
    .line 860
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@1a
    mul-int/lit8 v1, v1, 0x1f

    #@1c
    .line 857
    add-int/2addr v0, v1

    #@1d
    .line 860
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@1f
    mul-int/lit8 v1, v1, 0x1f

    #@21
    .line 857
    add-int/2addr v0, v1

    #@22
    .line 861
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@24
    mul-int/lit8 v1, v1, 0x1f

    #@26
    .line 857
    add-int/2addr v0, v1

    #@27
    .line 861
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@29
    mul-int/lit8 v1, v1, 0x1f

    #@2b
    .line 857
    add-int/2addr v0, v1

    #@2c
    .line 862
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@2e
    mul-int/lit8 v1, v1, 0x1f

    #@30
    .line 857
    add-int/2addr v0, v1

    #@31
    .line 862
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@33
    mul-int/lit8 v1, v1, 0x1f

    #@35
    .line 857
    add-int/2addr v0, v1

    #@36
    .line 862
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@38
    mul-int/lit8 v1, v1, 0x1f

    #@3a
    .line 857
    add-int/2addr v1, v0

    #@3b
    .line 863
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@3d
    if-eqz v0, :cond_0

    #@3f
    const/4 v0, 0x1

    #@40
    .line 857
    :goto_0
    add-int/2addr v0, v1

    #@41
    return v0

    #@42
    .line 863
    :cond_0
    const/4 v0, 0x0

    #@43
    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIZ)V
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
    .param p13, "gsm"    # Z

    #@0
    .prologue
    .line 224
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@2
    .line 225
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@4
    .line 226
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@6
    .line 227
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@8
    .line 228
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@a
    .line 229
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@c
    .line 230
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@e
    .line 231
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@10
    .line 232
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@12
    .line 233
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@14
    .line 234
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@16
    .line 235
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@18
    .line 236
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@1a
    .line 223
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
    .line 196
    const/16 v8, 0x63

    #@2
    const v9, 0x7fffffff

    #@5
    .line 197
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
    .line 195
    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    #@21
    .line 194
    return-void
.end method

.method public isGsm()Z
    .locals 1

    #@0
    .prologue
    .line 848
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@2
    return v0
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    #@0
    .prologue
    .line 393
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@2
    .line 392
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 903
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
    .line 904
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@e
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 905
    const-string/jumbo v1, " "

    #@15
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 905
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@1b
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 906
    const-string/jumbo v1, " "

    #@22
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 906
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@28
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 907
    const-string/jumbo v1, " "

    #@2f
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 907
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@35
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 908
    const-string/jumbo v1, " "

    #@3c
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 908
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@42
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 909
    const-string/jumbo v1, " "

    #@49
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 909
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@4f
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 910
    const-string/jumbo v1, " "

    #@56
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 910
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@5c
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 911
    const-string/jumbo v1, " "

    #@63
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 911
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@69
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    .line 912
    const-string/jumbo v1, " "

    #@70
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    .line 912
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@76
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    .line 913
    const-string/jumbo v1, " "

    #@7d
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    .line 913
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@83
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v0

    #@87
    .line 914
    const-string/jumbo v1, " "

    #@8a
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v0

    #@8e
    .line 914
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@90
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@93
    move-result-object v0

    #@94
    .line 915
    const-string/jumbo v1, " "

    #@97
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v0

    #@9b
    .line 915
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@9d
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v0

    #@a1
    .line 916
    const-string/jumbo v1, " "

    #@a4
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v1

    #@a8
    .line 916
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@aa
    if-eqz v0, :cond_0

    #@ac
    const-string/jumbo v0, "gsm|lte"

    #@af
    .line 903
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v0

    #@b3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v0

    #@b7
    return-object v0

    #@b8
    .line 916
    :cond_0
    const-string/jumbo v0, "cdma"

    #@bb
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
    .line 364
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@a
    if-ltz v0, :cond_4

    #@c
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@e
    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@10
    .line 367
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
    .line 368
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
    .line 370
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
    .line 371
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
    .line 372
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
    .line 375
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@44
    if-ltz v0, :cond_2

    #@46
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@48
    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@4a
    .line 376
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
    .line 377
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
    .line 378
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@6d
    const/16 v1, -0xc8

    #@6f
    if-lt v0, v1, :cond_3

    #@71
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@73
    const/16 v1, 0x12c

    #@75
    if-gt v0, v1, :cond_3

    #@77
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@79
    :cond_3
    iput v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@7b
    .line 361
    return-void

    #@7c
    :cond_4
    move v0, v1

    #@7d
    .line 364
    goto :goto_0

    #@7e
    :cond_5
    move v0, v2

    #@7f
    .line 367
    goto :goto_1

    #@80
    .line 368
    :cond_6
    const/16 v0, -0xa0

    #@82
    goto :goto_2

    #@83
    :cond_7
    move v0, v3

    #@84
    .line 371
    goto :goto_3

    #@85
    :cond_8
    move v0, v4

    #@86
    .line 376
    goto :goto_4

    #@87
    :cond_9
    move v0, v4

    #@88
    .line 377
    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 313
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 314
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 315
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 316
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 317
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 318
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 319
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 320
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 321
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 322
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 323
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 324
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 325
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    #@3e
    if-eqz v0, :cond_0

    #@40
    const/4 v0, 0x1

    #@41
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@44
    .line 312
    return-void

    #@45
    .line 325
    :cond_0
    const/4 v0, 0x0

    #@46
    goto :goto_0
.end method
