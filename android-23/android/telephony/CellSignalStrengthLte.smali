.class public final Landroid/telephony/CellSignalStrengthLte;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthLte.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellSignalStrengthLte$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellSignalStrengthLte;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthLte"


# instance fields
.field private mCqi:I

.field private mRsrp:I

.field private mRsrq:I

.field private mRssnr:I

.field private mSignalStrength:I

.field private mTimingAdvance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 284
    new-instance v0, Landroid/telephony/CellSignalStrengthLte$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthLte$1;-><init>()V

    #@5
    .line 283
    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    #@3
    .line 44
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->setDefaultValues()V

    #@6
    .line 43
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "signalStrength"    # I
    .param p2, "rsrp"    # I
    .param p3, "rsrq"    # I
    .param p4, "rssnr"    # I
    .param p5, "cqi"    # I
    .param p6, "timingAdvance"    # I

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    #@3
    .line 54
    invoke-virtual/range {p0 .. p6}, Landroid/telephony/CellSignalStrengthLte;->initialize(IIIIII)V

    #@6
    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 263
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    #@3
    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    #@9
    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    mul-int/lit8 v0, v0, -0x1

    #@f
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    #@11
    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v0

    #@15
    mul-int/lit8 v0, v0, -0x1

    #@17
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    #@19
    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    #@1f
    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v0

    #@23
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    #@25
    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v0

    #@29
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    #@2b
    .line 263
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthLte;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthLte;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthLte;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    #@3
    .line 65
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthLte;->copyFrom(Landroid/telephony/CellSignalStrengthLte;)V

    #@6
    .line 64
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 300
    const-string/jumbo v0, "CellSignalStrengthLte"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 299
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .locals 1

    #@0
    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->copy()Landroid/telephony/CellSignalStrengthLte;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthLte;
    .locals 1

    #@0
    .prologue
    .line 122
    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    #@2
    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/telephony/CellSignalStrengthLte;)V

    #@5
    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthLte;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthLte;

    #@0
    .prologue
    .line 109
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    #@2
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    #@4
    .line 110
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    #@6
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    #@8
    .line 111
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    #@a
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    #@c
    .line 112
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    #@e
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    #@10
    .line 113
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    #@12
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    #@14
    .line 114
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    #@16
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    #@18
    .line 108
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 278
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
    .line 214
    :try_start_0
    move-object v0, p1

    #@2
    check-cast v0, Landroid/telephony/CellSignalStrengthLte;

    #@4
    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 219
    .local v2, "s":Landroid/telephony/CellSignalStrengthLte;
    if-nez p1, :cond_0

    #@7
    .line 220
    return v3

    #@8
    .line 215
    .end local v2    # "s":Landroid/telephony/CellSignalStrengthLte;
    :catch_0
    move-exception v1

    #@9
    .line 216
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    #@a
    .line 223
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/CellSignalStrengthLte;
    :cond_0
    iget v4, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    #@c
    iget v5, v2, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    #@e
    if-ne v4, v5, :cond_1

    #@10
    .line 224
    iget v4, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    #@12
    iget v5, v2, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    #@14
    if-ne v4, v5, :cond_1

    #@16
    .line 225
    iget v4, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    #@18
    iget v5, v2, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    #@1a
    if-ne v4, v5, :cond_1

    #@1c
    .line 226
    iget v4, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    #@1e
    iget v5, v2, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    #@20
    if-ne v4, v5, :cond_1

    #@22
    .line 227
    iget v4, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    #@24
    iget v5, v2, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    #@26
    if-ne v4, v5, :cond_1

    #@28
    .line 228
    iget v4, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    #@2a
    iget v5, v2, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    #@2c
    if-ne v4, v5, :cond_1

    #@2e
    const/4 v3, 0x1

    #@2f
    .line 223
    :cond_1
    return v3
.end method

.method public getAsuLevel()I
    .locals 3

    #@0
    .prologue
    .line 184
    const/16 v0, 0x63

    #@2
    .line 185
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    #@5
    move-result v1

    #@6
    .line 186
    .local v1, "lteDbm":I
    const/16 v2, -0x8c

    #@8
    if-gt v1, v2, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    .line 190
    :goto_0
    return v0

    #@c
    .line 187
    :cond_0
    const/16 v2, -0x2b

    #@e
    if-lt v1, v2, :cond_1

    #@10
    const/16 v0, 0x61

    #@12
    goto :goto_0

    #@13
    .line 188
    :cond_1
    add-int/lit16 v0, v1, 0x8c

    #@15
    goto :goto_0
.end method

.method public getDbm()I
    .locals 1

    #@0
    .prologue
    .line 175
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    #@2
    return v0
.end method

.method public getLevel()I
    .locals 6

    #@0
    .prologue
    const v5, 0x7fffffff

    #@3
    .line 141
    const/4 v1, 0x0

    #@4
    .line 142
    .local v1, "levelRsrp":I
    const/4 v2, 0x0

    #@5
    .line 144
    .local v2, "levelRssnr":I
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    #@7
    if-ne v3, v5, :cond_0

    #@9
    const/4 v1, 0x0

    #@a
    .line 151
    :goto_0
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    #@c
    if-ne v3, v5, :cond_4

    #@e
    const/4 v2, 0x0

    #@f
    .line 158
    :goto_1
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    #@11
    if-ne v3, v5, :cond_8

    #@13
    .line 159
    move v0, v2

    #@14
    .line 167
    .local v0, "level":I
    :goto_2
    return v0

    #@15
    .line 145
    .end local v0    # "level":I
    :cond_0
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    #@17
    const/16 v4, -0x5f

    #@19
    if-lt v3, v4, :cond_1

    #@1b
    const/4 v1, 0x4

    #@1c
    goto :goto_0

    #@1d
    .line 146
    :cond_1
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    #@1f
    const/16 v4, -0x69

    #@21
    if-lt v3, v4, :cond_2

    #@23
    const/4 v1, 0x3

    #@24
    goto :goto_0

    #@25
    .line 147
    :cond_2
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    #@27
    const/16 v4, -0x73

    #@29
    if-lt v3, v4, :cond_3

    #@2b
    const/4 v1, 0x2

    #@2c
    goto :goto_0

    #@2d
    .line 148
    :cond_3
    const/4 v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 152
    :cond_4
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    #@31
    const/16 v4, 0x2d

    #@33
    if-lt v3, v4, :cond_5

    #@35
    const/4 v2, 0x4

    #@36
    goto :goto_1

    #@37
    .line 153
    :cond_5
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    #@39
    const/16 v4, 0xa

    #@3b
    if-lt v3, v4, :cond_6

    #@3d
    const/4 v2, 0x3

    #@3e
    goto :goto_1

    #@3f
    .line 154
    :cond_6
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    #@41
    const/16 v4, -0x1e

    #@43
    if-lt v3, v4, :cond_7

    #@45
    const/4 v2, 0x2

    #@46
    goto :goto_1

    #@47
    .line 155
    :cond_7
    const/4 v2, 0x1

    #@48
    goto :goto_1

    #@49
    .line 160
    :cond_8
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    #@4b
    if-ne v3, v5, :cond_9

    #@4d
    .line 161
    move v0, v1

    #@4e
    .restart local v0    # "level":I
    goto :goto_2

    #@4f
    .line 163
    .end local v0    # "level":I
    :cond_9
    if-ge v2, v1, :cond_a

    #@51
    move v0, v2

    #@52
    .restart local v0    # "level":I
    goto :goto_2

    #@53
    .end local v0    # "level":I
    :cond_a
    move v0, v1

    #@54
    .restart local v0    # "level":I
    goto :goto_2
.end method

.method public getTimingAdvance()I
    .locals 1

    #@0
    .prologue
    .line 198
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 204
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    #@2
    mul-int/lit8 v0, v0, 0x1f

    #@4
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    #@6
    mul-int/lit8 v1, v1, 0x1f

    #@8
    add-int/2addr v0, v1

    #@9
    .line 205
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    #@b
    mul-int/lit8 v1, v1, 0x1f

    #@d
    .line 204
    add-int/2addr v0, v1

    #@e
    .line 205
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    #@10
    mul-int/lit8 v1, v1, 0x1f

    #@12
    .line 204
    add-int/2addr v0, v1

    #@13
    .line 205
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    #@15
    mul-int/lit8 v1, v1, 0x1f

    #@17
    .line 204
    add-int/2addr v0, v1

    #@18
    .line 206
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    #@1a
    mul-int/lit8 v1, v1, 0x1f

    #@1c
    .line 204
    add-int/2addr v0, v1

    #@1d
    return v0
.end method

.method public initialize(IIIIII)V
    .locals 0
    .param p1, "lteSignalStrength"    # I
    .param p2, "rsrp"    # I
    .param p3, "rsrq"    # I
    .param p4, "rssnr"    # I
    .param p5, "cqi"    # I
    .param p6, "timingAdvance"    # I

    #@0
    .prologue
    .line 81
    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    #@2
    .line 82
    iput p2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    #@4
    .line 83
    iput p3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    #@6
    .line 84
    iput p4, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    #@8
    .line 85
    iput p5, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    #@a
    .line 86
    iput p6, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    #@c
    .line 80
    return-void
.end method

.method public initialize(Landroid/telephony/SignalStrength;I)V
    .locals 1
    .param p1, "ss"    # Landroid/telephony/SignalStrength;
    .param p2, "timingAdvance"    # I

    #@0
    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteSignalStrength()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    #@6
    .line 98
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    #@c
    .line 99
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    #@12
    .line 100
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    #@18
    .line 101
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteCqi()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    #@1e
    .line 102
    iput p2, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    #@20
    .line 96
    return-void
.end method

.method public setDefaultValues()V
    .locals 1

    #@0
    .prologue
    const v0, 0x7fffffff

    #@3
    .line 128
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    #@5
    .line 129
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    #@7
    .line 130
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    #@9
    .line 131
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    #@b
    .line 132
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    #@d
    .line 133
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    #@f
    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CellSignalStrengthLte: ss="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 237
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    #@e
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 238
    const-string/jumbo v1, " rsrp="

    #@15
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 238
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    #@1b
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 239
    const-string/jumbo v1, " rsrq="

    #@22
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 239
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    #@28
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 240
    const-string/jumbo v1, " rssnr="

    #@2f
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 240
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    #@35
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 241
    const-string/jumbo v1, " cqi="

    #@3c
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 241
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    #@42
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 242
    const-string/jumbo v1, " ta="

    #@49
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 242
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    #@4f
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 249
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 252
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    #@7
    mul-int/lit8 v0, v0, -0x1

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 253
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    #@e
    mul-int/lit8 v0, v0, -0x1

    #@10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 254
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    #@15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 255
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    #@1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 256
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    #@1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 247
    return-void
.end method
