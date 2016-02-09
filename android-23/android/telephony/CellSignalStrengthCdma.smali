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
    .line 367
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthCdma$1;-><init>()V

    #@5
    .line 366
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
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 346
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    #@3
    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    mul-int/lit8 v0, v0, -0x1

    #@9
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@b
    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v0

    #@f
    mul-int/lit8 v0, v0, -0x1

    #@11
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@13
    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v0

    #@17
    mul-int/lit8 v0, v0, -0x1

    #@19
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@1b
    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    mul-int/lit8 v0, v0, -0x1

    #@21
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@23
    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v0

    #@27
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    #@29
    .line 346
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
    .line 383
    const-string/jumbo v0, "CellSignalStrengthCdma"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 382
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
    .line 361
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
    .line 300
    :try_start_0
    move-object v0, p1

    #@2
    check-cast v0, Landroid/telephony/CellSignalStrengthCdma;

    #@4
    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 305
    .local v2, "s":Landroid/telephony/CellSignalStrengthCdma;
    if-nez p1, :cond_0

    #@7
    .line 306
    return v3

    #@8
    .line 301
    .end local v2    # "s":Landroid/telephony/CellSignalStrengthCdma;
    :catch_0
    move-exception v1

    #@9
    .line 302
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    #@a
    .line 309
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/CellSignalStrengthCdma;
    :cond_0
    iget v4, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@c
    iget v5, v2, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@e
    if-ne v4, v5, :cond_1

    #@10
    .line 310
    iget v4, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@12
    iget v5, v2, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@14
    if-ne v4, v5, :cond_1

    #@16
    .line 311
    iget v4, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@18
    iget v5, v2, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@1a
    if-ne v4, v5, :cond_1

    #@1c
    .line 312
    iget v4, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@1e
    iget v5, v2, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@20
    if-ne v4, v5, :cond_1

    #@22
    .line 313
    iget v4, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    #@24
    iget v5, v2, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    #@26
    if-ne v4, v5, :cond_1

    #@28
    const/4 v3, 0x1

    #@29
    .line 309
    :cond_1
    return v3
.end method

.method public getAsuLevel()I
    .locals 8

    #@0
    .prologue
    const/16 v7, -0x5a

    #@2
    const/16 v6, -0x64

    #@4
    .line 143
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    #@7
    move-result v1

    #@8
    .line 144
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    #@b
    move-result v2

    #@c
    .line 148
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    #@e
    if-lt v1, v5, :cond_0

    #@10
    const/16 v0, 0x10

    #@12
    .line 156
    .local v0, "cdmaAsuLevel":I
    :goto_0
    if-lt v2, v7, :cond_5

    #@14
    const/16 v3, 0x10

    #@16
    .line 163
    .local v3, "ecioAsuLevel":I
    :goto_1
    if-ge v0, v3, :cond_a

    #@18
    move v4, v0

    #@19
    .line 165
    .local v4, "level":I
    :goto_2
    return v4

    #@1a
    .line 149
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
    .line 150
    .end local v0    # "cdmaAsuLevel":I
    :cond_1
    if-lt v1, v7, :cond_2

    #@23
    const/4 v0, 0x4

    #@24
    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    #@25
    .line 151
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
    .line 152
    .end local v0    # "cdmaAsuLevel":I
    :cond_3
    if-lt v1, v6, :cond_4

    #@2d
    const/4 v0, 0x1

    #@2e
    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    #@2f
    .line 153
    .end local v0    # "cdmaAsuLevel":I
    :cond_4
    const/16 v0, 0x63

    #@31
    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    #@32
    .line 157
    :cond_5
    if-lt v2, v6, :cond_6

    #@34
    const/16 v3, 0x8

    #@36
    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    #@37
    .line 158
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
    .line 159
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
    .line 160
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
    .line 161
    .end local v3    # "ecioAsuLevel":I
    :cond_9
    const/16 v3, 0x63

    #@4b
    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    #@4c
    .line 163
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
    .line 237
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@2
    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    #@0
    .prologue
    .line 248
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@2
    return v0
.end method

.method public getCdmaLevel()I
    .locals 6

    #@0
    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    #@3
    move-result v0

    #@4
    .line 173
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    #@7
    move-result v1

    #@8
    .line 177
    .local v1, "cdmaEcio":I
    const/16 v5, -0x4b

    #@a
    if-lt v0, v5, :cond_0

    #@c
    const/4 v3, 0x4

    #@d
    .line 184
    .local v3, "levelDbm":I
    :goto_0
    const/16 v5, -0x5a

    #@f
    if-lt v1, v5, :cond_4

    #@11
    const/4 v4, 0x4

    #@12
    .line 190
    .local v4, "levelEcio":I
    :goto_1
    if-ge v3, v4, :cond_8

    #@14
    move v2, v3

    #@15
    .line 192
    .local v2, "level":I
    :goto_2
    return v2

    #@16
    .line 178
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
    .line 179
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
    .line 180
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
    .line 181
    .end local v3    # "levelDbm":I
    :cond_3
    const/4 v3, 0x0

    #@29
    .restart local v3    # "levelDbm":I
    goto :goto_0

    #@2a
    .line 185
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
    .line 186
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
    .line 187
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
    .line 188
    .end local v4    # "levelEcio":I
    :cond_7
    const/4 v4, 0x0

    #@3d
    .restart local v4    # "levelEcio":I
    goto :goto_1

    #@3e
    .line 190
    :cond_8
    move v2, v4

    #@3f
    .restart local v2    # "level":I
    goto :goto_2
.end method

.method public getDbm()I
    .locals 2

    #@0
    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    #@3
    move-result v0

    #@4
    .line 227
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    #@7
    move-result v1

    #@8
    .line 230
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
    .line 259
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@2
    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    #@0
    .prologue
    .line 270
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@2
    return v0
.end method

.method public getEvdoLevel()I
    .locals 6

    #@0
    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    #@3
    move-result v0

    #@4
    .line 200
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    #@7
    move-result v1

    #@8
    .line 204
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    #@a
    if-lt v0, v5, :cond_0

    #@c
    const/4 v3, 0x4

    #@d
    .line 210
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    #@e
    if-lt v1, v5, :cond_4

    #@10
    const/4 v4, 0x4

    #@11
    .line 216
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_8

    #@13
    move v2, v3

    #@14
    .line 218
    .local v2, "level":I
    :goto_2
    return v2

    #@15
    .line 205
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
    .line 206
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
    .line 207
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
    .line 208
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/4 v3, 0x0

    #@28
    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    #@29
    .line 211
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
    .line 212
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
    .line 213
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
    .line 214
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v4, 0x0

    #@39
    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    #@3a
    .line 216
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
    .line 281
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
    .line 291
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
    .line 292
    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@b
    mul-int/lit8 v1, v1, 0x1f

    #@d
    .line 291
    add-int/2addr v0, v1

    #@e
    .line 292
    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@10
    mul-int/lit8 v1, v1, 0x1f

    #@12
    .line 291
    add-int/2addr v0, v1

    #@13
    .line 292
    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    #@15
    mul-int/lit8 v1, v1, 0x1f

    #@17
    .line 291
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
    .line 241
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@2
    .line 240
    return-void
.end method

.method public setCdmaEcio(I)V
    .locals 0
    .param p1, "cdmaEcio"    # I

    #@0
    .prologue
    .line 252
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@2
    .line 251
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
    .line 263
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@2
    .line 262
    return-void
.end method

.method public setEvdoEcio(I)V
    .locals 0
    .param p1, "evdoEcio"    # I

    #@0
    .prologue
    .line 274
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@2
    .line 273
    return-void
.end method

.method public setEvdoSnr(I)V
    .locals 0
    .param p1, "evdoSnr"    # I

    #@0
    .prologue
    .line 285
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    #@2
    .line 284
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 321
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
    .line 322
    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@e
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 323
    const-string/jumbo v1, " cdmaEcio="

    #@15
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 323
    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@1b
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 324
    const-string/jumbo v1, " evdoDbm="

    #@22
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 324
    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@28
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 325
    const-string/jumbo v1, " evdoEcio="

    #@2f
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 325
    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@35
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 326
    const-string/jumbo v1, " evdoSnr="

    #@3c
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 326
    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    #@42
    .line 321
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
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 335
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    #@2
    mul-int/lit8 v0, v0, -0x1

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 336
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    #@9
    mul-int/lit8 v0, v0, -0x1

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 337
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    #@10
    mul-int/lit8 v0, v0, -0x1

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 338
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    #@17
    mul-int/lit8 v0, v0, -0x1

    #@19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 339
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 331
    return-void
.end method
