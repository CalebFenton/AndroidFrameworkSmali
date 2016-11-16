.class public final Landroid/telephony/CellSignalStrengthCdma;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthCdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellSignalStrengthCdma$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellSignalStrengthCdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthCdma"


# instance fields
.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 378
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthCdma$1;-><init>()V

    #@5
    .line 377
    sput-object v0, Landroid/telephony/CellSignalStrengthCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    #@3
    .line 43
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->setDefaultValues()V

    #@6
    .line 42
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "cdmaDbm"    # I
    .param p2, "cdmaEcio"    # I
    .param p3, "evdoDbm"    # I
    .param p4, "evdoEcio"    # I
    .param p5, "evdoSnr"    # I

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    #@3
    .line 53
    invoke-virtual/range {p0 .. p5}, Landroid/telephony/CellSignalStrengthCdma;->initialize(IIIII)V

    #@6
    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const v1, 0x7fffffff

    #@3
    .line 353
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    #@6
    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@c
    .line 358
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@e
    if-eq v0, v1, :cond_0

    #@10
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@12
    mul-int/lit8 v0, v0, -0x1

    #@14
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@16
    .line 359
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@1c
    .line 360
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@1e
    if-eq v0, v1, :cond_1

    #@20
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@22
    mul-int/lit8 v0, v0, -0x1

    #@24
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@26
    .line 361
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@2c
    .line 362
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@2e
    if-eq v0, v1, :cond_2

    #@30
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@32
    mul-int/lit8 v0, v0, -0x1

    #@34
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@36
    .line 363
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v0

    #@3a
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@3c
    .line 364
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@3e
    if-eq v0, v1, :cond_3

    #@40
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@42
    mul-int/lit8 v0, v0, -0x1

    #@44
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@46
    .line 365
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v0

    #@4a
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    #@4c
    .line 353
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthCdma;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthCdma;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthCdma;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    #@3
    .line 64
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;->copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V

    #@6
    .line 63
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 394
    const-string/jumbo v0, "CellSignalStrengthCdma"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 393
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .locals 1

    #@0
    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->copy()Landroid/telephony/CellSignalStrengthCdma;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthCdma;
    .locals 1

    #@0
    .prologue
    .line 102
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    #@2
    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/telephony/CellSignalStrengthCdma;)V

    #@5
    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthCdma;

    #@0
    .prologue
    .line 90
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@2
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@4
    .line 91
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@6
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@8
    .line 92
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@a
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@c
    .line 93
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@e
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@10
    .line 94
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    #@12
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    #@14
    .line 89
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 372
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
    .line 306
    :try_start_0
    move-object v0, p1

    #@2
    check-cast v0, Landroid/telephony/CellSignalStrengthCdma;

    #@4
    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 311
    .local v2, "s":Landroid/telephony/CellSignalStrengthCdma;
    if-nez p1, :cond_0

    #@7
    .line 312
    return v3

    #@8
    .line 307
    .end local v2    # "s":Landroid/telephony/CellSignalStrengthCdma;
    :catch_0
    move-exception v1

    #@9
    .line 308
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    #@a
    .line 315
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/CellSignalStrengthCdma;
    :cond_0
    iget v4, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@c
    iget v5, v2, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@e
    if-ne v4, v5, :cond_1

    #@10
    .line 316
    iget v4, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@12
    iget v5, v2, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@14
    if-ne v4, v5, :cond_1

    #@16
    .line 317
    iget v4, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@18
    iget v5, v2, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@1a
    if-ne v4, v5, :cond_1

    #@1c
    .line 318
    iget v4, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@1e
    iget v5, v2, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@20
    if-ne v4, v5, :cond_1

    #@22
    .line 319
    iget v4, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    #@24
    iget v5, v2, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    #@26
    if-ne v4, v5, :cond_1

    #@28
    const/4 v3, 0x1

    #@29
    .line 315
    :cond_1
    return v3
.end method

.method public getAsuLevel()I
    .locals 9

    #@0
    .prologue
    const v8, 0x7fffffff

    #@3
    const/16 v7, -0x5a

    #@5
    const/16 v6, -0x64

    #@7
    .line 143
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    #@a
    move-result v1

    #@b
    .line 144
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    #@e
    move-result v2

    #@f
    .line 148
    .local v2, "cdmaEcio":I
    if-ne v1, v8, :cond_0

    #@11
    const/16 v0, 0x63

    #@13
    .line 157
    .local v0, "cdmaAsuLevel":I
    :goto_0
    if-ne v2, v8, :cond_6

    #@15
    const/16 v3, 0x63

    #@17
    .line 165
    .local v3, "ecioAsuLevel":I
    :goto_1
    if-ge v0, v3, :cond_c

    #@19
    move v4, v0

    #@1a
    .line 167
    .local v4, "level":I
    :goto_2
    return v4

    #@1b
    .line 149
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_0
    const/16 v5, -0x4b

    #@1d
    if-lt v1, v5, :cond_1

    #@1f
    const/16 v0, 0x10

    #@21
    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    #@22
    .line 150
    .end local v0    # "cdmaAsuLevel":I
    :cond_1
    const/16 v5, -0x52

    #@24
    if-lt v1, v5, :cond_2

    #@26
    const/16 v0, 0x8

    #@28
    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    #@29
    .line 151
    .end local v0    # "cdmaAsuLevel":I
    :cond_2
    if-lt v1, v7, :cond_3

    #@2b
    const/4 v0, 0x4

    #@2c
    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    #@2d
    .line 152
    .end local v0    # "cdmaAsuLevel":I
    :cond_3
    const/16 v5, -0x5f

    #@2f
    if-lt v1, v5, :cond_4

    #@31
    const/4 v0, 0x2

    #@32
    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    #@33
    .line 153
    .end local v0    # "cdmaAsuLevel":I
    :cond_4
    if-lt v1, v6, :cond_5

    #@35
    const/4 v0, 0x1

    #@36
    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    #@37
    .line 154
    .end local v0    # "cdmaAsuLevel":I
    :cond_5
    const/16 v0, 0x63

    #@39
    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    #@3a
    .line 158
    :cond_6
    if-lt v2, v7, :cond_7

    #@3c
    const/16 v3, 0x10

    #@3e
    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    #@3f
    .line 159
    .end local v3    # "ecioAsuLevel":I
    :cond_7
    if-lt v2, v6, :cond_8

    #@41
    const/16 v3, 0x8

    #@43
    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    #@44
    .line 160
    .end local v3    # "ecioAsuLevel":I
    :cond_8
    const/16 v5, -0x73

    #@46
    if-lt v2, v5, :cond_9

    #@48
    const/4 v3, 0x4

    #@49
    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    #@4a
    .line 161
    .end local v3    # "ecioAsuLevel":I
    :cond_9
    const/16 v5, -0x82

    #@4c
    if-lt v2, v5, :cond_a

    #@4e
    const/4 v3, 0x2

    #@4f
    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    #@50
    .line 162
    .end local v3    # "ecioAsuLevel":I
    :cond_a
    const/16 v5, -0x96

    #@52
    if-lt v2, v5, :cond_b

    #@54
    const/4 v3, 0x1

    #@55
    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    #@56
    .line 163
    .end local v3    # "ecioAsuLevel":I
    :cond_b
    const/16 v3, 0x63

    #@58
    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    #@59
    :cond_c
    move v4, v3

    #@5a
    .line 165
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    #@0
    .prologue
    .line 243
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@2
    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    #@0
    .prologue
    .line 254
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@2
    return v0
.end method

.method public getCdmaLevel()I
    .locals 7

    #@0
    .prologue
    const v6, 0x7fffffff

    #@3
    .line 174
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    #@6
    move-result v0

    #@7
    .line 175
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    #@a
    move-result v1

    #@b
    .line 179
    .local v1, "cdmaEcio":I
    if-ne v0, v6, :cond_0

    #@d
    const/4 v3, 0x0

    #@e
    .line 187
    .local v3, "levelDbm":I
    :goto_0
    if-ne v1, v6, :cond_5

    #@10
    const/4 v4, 0x0

    #@11
    .line 194
    .local v4, "levelEcio":I
    :goto_1
    if-ge v3, v4, :cond_a

    #@13
    move v2, v3

    #@14
    .line 196
    .local v2, "level":I
    :goto_2
    return v2

    #@15
    .line 180
    .end local v2    # "level":I
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_0
    const/16 v5, -0x4b

    #@17
    if-lt v0, v5, :cond_1

    #@19
    const/4 v3, 0x4

    #@1a
    .restart local v3    # "levelDbm":I
    goto :goto_0

    #@1b
    .line 181
    .end local v3    # "levelDbm":I
    :cond_1
    const/16 v5, -0x55

    #@1d
    if-lt v0, v5, :cond_2

    #@1f
    const/4 v3, 0x3

    #@20
    .restart local v3    # "levelDbm":I
    goto :goto_0

    #@21
    .line 182
    .end local v3    # "levelDbm":I
    :cond_2
    const/16 v5, -0x5f

    #@23
    if-lt v0, v5, :cond_3

    #@25
    const/4 v3, 0x2

    #@26
    .restart local v3    # "levelDbm":I
    goto :goto_0

    #@27
    .line 183
    .end local v3    # "levelDbm":I
    :cond_3
    const/16 v5, -0x64

    #@29
    if-lt v0, v5, :cond_4

    #@2b
    const/4 v3, 0x1

    #@2c
    .restart local v3    # "levelDbm":I
    goto :goto_0

    #@2d
    .line 184
    .end local v3    # "levelDbm":I
    :cond_4
    const/4 v3, 0x0

    #@2e
    .restart local v3    # "levelDbm":I
    goto :goto_0

    #@2f
    .line 188
    :cond_5
    const/16 v5, -0x5a

    #@31
    if-lt v1, v5, :cond_6

    #@33
    const/4 v4, 0x4

    #@34
    .restart local v4    # "levelEcio":I
    goto :goto_1

    #@35
    .line 189
    .end local v4    # "levelEcio":I
    :cond_6
    const/16 v5, -0x6e

    #@37
    if-lt v1, v5, :cond_7

    #@39
    const/4 v4, 0x3

    #@3a
    .restart local v4    # "levelEcio":I
    goto :goto_1

    #@3b
    .line 190
    .end local v4    # "levelEcio":I
    :cond_7
    const/16 v5, -0x82

    #@3d
    if-lt v1, v5, :cond_8

    #@3f
    const/4 v4, 0x2

    #@40
    .restart local v4    # "levelEcio":I
    goto :goto_1

    #@41
    .line 191
    .end local v4    # "levelEcio":I
    :cond_8
    const/16 v5, -0x96

    #@43
    if-lt v1, v5, :cond_9

    #@45
    const/4 v4, 0x1

    #@46
    .restart local v4    # "levelEcio":I
    goto :goto_1

    #@47
    .line 192
    .end local v4    # "levelEcio":I
    :cond_9
    const/4 v4, 0x0

    #@48
    .restart local v4    # "levelEcio":I
    goto :goto_1

    #@49
    :cond_a
    move v2, v4

    #@4a
    .line 194
    goto :goto_2
.end method

.method public getDbm()I
    .locals 2

    #@0
    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    #@3
    move-result v0

    #@4
    .line 233
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    #@7
    move-result v1

    #@8
    .line 236
    .local v1, "evdoDbm":I
    if-ge v0, v1, :cond_0

    #@a
    .end local v0    # "cdmaDbm":I
    :goto_0
    return v0

    #@b
    .restart local v0    # "cdmaDbm":I
    :cond_0
    move v0, v1

    #@c
    goto :goto_0
.end method

.method public getEvdoDbm()I
    .locals 1

    #@0
    .prologue
    .line 265
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@2
    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    #@0
    .prologue
    .line 276
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@2
    return v0
.end method

.method public getEvdoLevel()I
    .locals 7

    #@0
    .prologue
    const v6, 0x7fffffff

    #@3
    .line 203
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    #@6
    move-result v0

    #@7
    .line 204
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    #@a
    move-result v1

    #@b
    .line 208
    .local v1, "evdoSnr":I
    if-ne v0, v6, :cond_0

    #@d
    const/4 v3, 0x0

    #@e
    .line 215
    .local v3, "levelEvdoDbm":I
    :goto_0
    if-ne v1, v6, :cond_5

    #@10
    const/4 v4, 0x0

    #@11
    .line 222
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_a

    #@13
    move v2, v3

    #@14
    .line 224
    .local v2, "level":I
    :goto_2
    return v2

    #@15
    .line 209
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x41

    #@17
    if-lt v0, v5, :cond_1

    #@19
    const/4 v3, 0x4

    #@1a
    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    #@1b
    .line 210
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x4b

    #@1d
    if-lt v0, v5, :cond_2

    #@1f
    const/4 v3, 0x3

    #@20
    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    #@21
    .line 211
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x5a

    #@23
    if-lt v0, v5, :cond_3

    #@25
    const/4 v3, 0x2

    #@26
    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    #@27
    .line 212
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x69

    #@29
    if-lt v0, v5, :cond_4

    #@2b
    const/4 v3, 0x1

    #@2c
    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    #@2d
    .line 213
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/4 v3, 0x0

    #@2e
    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    #@2f
    .line 216
    :cond_5
    const/4 v5, 0x7

    #@30
    if-lt v1, v5, :cond_6

    #@32
    const/4 v4, 0x4

    #@33
    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    #@34
    .line 217
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x5

    #@35
    if-lt v1, v5, :cond_7

    #@37
    const/4 v4, 0x3

    #@38
    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    #@39
    .line 218
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v5, 0x3

    #@3a
    if-lt v1, v5, :cond_8

    #@3c
    const/4 v4, 0x2

    #@3d
    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    #@3e
    .line 219
    .end local v4    # "levelEvdoSnr":I
    :cond_8
    const/4 v5, 0x1

    #@3f
    if-lt v1, v5, :cond_9

    #@41
    const/4 v4, 0x1

    #@42
    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    #@43
    .line 220
    .end local v4    # "levelEvdoSnr":I
    :cond_9
    const/4 v4, 0x0

    #@44
    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    #@45
    :cond_a
    move v2, v4

    #@46
    .line 222
    goto :goto_2
.end method

.method public getEvdoSnr()I
    .locals 1

    #@0
    .prologue
    .line 287
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    #@2
    return v0
.end method

.method public getLevel()I
    .locals 3

    #@0
    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    #@3
    move-result v0

    #@4
    .line 123
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    #@7
    move-result v1

    #@8
    .line 124
    .local v1, "evdoLevel":I
    if-nez v1, :cond_0

    #@a
    .line 126
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    #@d
    move-result v2

    #@e
    .line 135
    .local v2, "level":I
    :goto_0
    return v2

    #@f
    .line 127
    .end local v2    # "level":I
    :cond_0
    if-nez v0, :cond_1

    #@11
    .line 129
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    #@14
    move-result v2

    #@15
    .restart local v2    # "level":I
    goto :goto_0

    #@16
    .line 132
    .end local v2    # "level":I
    :cond_1
    if-ge v0, v1, :cond_2

    #@18
    move v2, v0

    #@19
    .restart local v2    # "level":I
    goto :goto_0

    #@1a
    .end local v2    # "level":I
    :cond_2
    move v2, v1

    #@1b
    .restart local v2    # "level":I
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 297
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@2
    mul-int/lit8 v0, v0, 0x1f

    #@4
    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@6
    mul-int/lit8 v1, v1, 0x1f

    #@8
    add-int/2addr v0, v1

    #@9
    .line 298
    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@b
    mul-int/lit8 v1, v1, 0x1f

    #@d
    .line 297
    add-int/2addr v0, v1

    #@e
    .line 298
    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@10
    mul-int/lit8 v1, v1, 0x1f

    #@12
    .line 297
    add-int/2addr v0, v1

    #@13
    .line 298
    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    #@15
    mul-int/lit8 v1, v1, 0x1f

    #@17
    .line 297
    add-int/2addr v0, v1

    #@18
    return v0
.end method

.method public initialize(IIIII)V
    .locals 0
    .param p1, "cdmaDbm"    # I
    .param p2, "cdmaEcio"    # I
    .param p3, "evdoDbm"    # I
    .param p4, "evdoEcio"    # I
    .param p5, "evdoSnr"    # I

    #@0
    .prologue
    .line 79
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@2
    .line 80
    iput p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@4
    .line 81
    iput p3, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@6
    .line 82
    iput p4, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@8
    .line 83
    iput p5, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    #@a
    .line 78
    return-void
.end method

.method public setCdmaDbm(I)V
    .locals 0
    .param p1, "cdmaDbm"    # I

    #@0
    .prologue
    .line 247
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@2
    .line 246
    return-void
.end method

.method public setCdmaEcio(I)V
    .locals 0
    .param p1, "cdmaEcio"    # I

    #@0
    .prologue
    .line 258
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@2
    .line 257
    return-void
.end method

.method public setDefaultValues()V
    .locals 1

    #@0
    .prologue
    const v0, 0x7fffffff

    #@3
    .line 108
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@5
    .line 109
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@7
    .line 110
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@9
    .line 111
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@b
    .line 112
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    #@d
    .line 107
    return-void
.end method

.method public setEvdoDbm(I)V
    .locals 0
    .param p1, "evdoDbm"    # I

    #@0
    .prologue
    .line 269
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@2
    .line 268
    return-void
.end method

.method public setEvdoEcio(I)V
    .locals 0
    .param p1, "evdoEcio"    # I

    #@0
    .prologue
    .line 280
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@2
    .line 279
    return-void
.end method

.method public setEvdoSnr(I)V
    .locals 0
    .param p1, "evdoSnr"    # I

    #@0
    .prologue
    .line 291
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    #@2
    .line 290
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CellSignalStrengthCdma: cdmaDbm="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 328
    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@e
    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 329
    const-string/jumbo v1, " cdmaEcio="

    #@15
    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 329
    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@1b
    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 330
    const-string/jumbo v1, " evdoDbm="

    #@22
    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 330
    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@28
    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 331
    const-string/jumbo v1, " evdoEcio="

    #@2f
    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 331
    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@35
    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 332
    const-string/jumbo v1, " evdoSnr="

    #@3c
    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 332
    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    #@42
    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const v4, 0x7fffffff

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v1, -0x1

    #@5
    .line 342
    iget v3, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@7
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@9
    if-eq v0, v4, :cond_0

    #@b
    move v0, v1

    #@c
    :goto_0
    mul-int/2addr v0, v3

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 343
    iget v3, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@12
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@14
    if-eq v0, v4, :cond_1

    #@16
    move v0, v1

    #@17
    :goto_1
    mul-int/2addr v0, v3

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 344
    iget v3, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@1d
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@1f
    if-eq v0, v4, :cond_2

    #@21
    move v0, v1

    #@22
    :goto_2
    mul-int/2addr v0, v3

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 345
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@28
    iget v3, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@2a
    if-eq v3, v4, :cond_3

    #@2c
    :goto_3
    mul-int/2addr v0, v1

    #@2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 346
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    #@32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 337
    return-void

    #@36
    :cond_0
    move v0, v2

    #@37
    .line 342
    goto :goto_0

    #@38
    :cond_1
    move v0, v2

    #@39
    .line 343
    goto :goto_1

    #@3a
    :cond_2
    move v0, v2

    #@3b
    .line 344
    goto :goto_2

    #@3c
    :cond_3
    move v1, v2

    #@3d
    .line 345
    goto :goto_3
.end method
