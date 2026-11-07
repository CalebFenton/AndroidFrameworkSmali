.class public final Landroid/telephony/CellSignalStrengthCdma;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthCdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthCdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CellSignalStrengthCdma"

.field private static final blacklist sInvalid:Landroid/telephony/CellSignalStrengthCdma;


# instance fields
.field private greylist-max-o mCdmaDbm:I

.field private greylist-max-o mCdmaEcio:I

.field private greylist-max-o mEvdoDbm:I

.field private greylist-max-o mEvdoEcio:I

.field private greylist-max-o mEvdoSnr:I

.field private blacklist mLevel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 396
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthCdma;->sInvalid:Landroid/telephony/CellSignalStrengthCdma;

    .line 475
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthCdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 46
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->setDefaultValues()V

    .line 47
    return-void
.end method

.method public constructor greylist-max-o <init>(IIIII)V
    .registers 10
    .param p1, "cdmaDbm"    # I
    .param p2, "cdmaEcio"    # I
    .param p3, "evdoDbm"    # I
    .param p4, "evdoEcio"    # I
    .param p5, "evdoSnr"    # I

    .line 71
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 72
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 73
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->setDefaultValues()V

    goto :goto_36

    .line 75
    :cond_d
    const/16 v0, -0x78

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/telephony/CellSignalStrengthCdma;->inRangeOrUnavailable(III)I

    move-result v2

    iput v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 76
    const/16 v2, -0xa0

    invoke-static {p2, v2, v1}, Landroid/telephony/CellSignalStrengthCdma;->inRangeOrUnavailable(III)I

    move-result v3

    iput v3, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 77
    invoke-static {p3, v0, v1}, Landroid/telephony/CellSignalStrengthCdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 78
    invoke-static {p4, v2, v1}, Landroid/telephony/CellSignalStrengthCdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 79
    const/16 v0, 0x8

    invoke-static {p5, v1, v0}, Landroid/telephony/CellSignalStrengthCdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/telephony/CellSignalStrengthCdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    .line 83
    :goto_36
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 449
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    .line 460
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 461
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->setDefaultValues()V

    .line 465
    :cond_30
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthCdma-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/CellSignalStrengthCdma;)V
    .registers 2
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthCdma;

    .line 86
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 87
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;->copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V

    .line 88
    return-void
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 492
    const-string v0, "CellSignalStrengthCdma"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist copy()Landroid/telephony/CellSignalStrength;
    .registers 2

    .line 32
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->copy()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o copy()Landroid/telephony/CellSignalStrengthCdma;
    .registers 2

    .line 107
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/telephony/CellSignalStrengthCdma;)V

    return-object v0
.end method

.method protected greylist-max-o copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V
    .registers 3
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthCdma;

    .line 92
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 93
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->setDefaultValues()V

    .line 94
    return-void

    .line 96
    :cond_a
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 97
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 98
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 99
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 100
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 101
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    .line 102
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 408
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthCdma;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 409
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellSignalStrengthCdma;

    .line 411
    .local v0, "s":Landroid/telephony/CellSignalStrengthCdma;
    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    if-ne v2, v3, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    return v1
.end method

.method public whitelist getAsuLevel()I
    .registers 7

    .line 176
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    .line 177
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v1

    .line 181
    .local v1, "cdmaEcio":I
    const/16 v2, -0x64

    const/16 v3, -0x5a

    const v4, 0x7fffffff

    if-ne v0, v4, :cond_14

    const/16 v5, 0x63

    .local v5, "cdmaAsuLevel":I
    goto :goto_32

    .line 182
    .end local v5    # "cdmaAsuLevel":I
    :cond_14
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1b

    const/16 v5, 0x10

    .restart local v5    # "cdmaAsuLevel":I
    goto :goto_32

    .line 183
    .end local v5    # "cdmaAsuLevel":I
    :cond_1b
    const/16 v5, -0x52

    if-lt v0, v5, :cond_22

    const/16 v5, 0x8

    .restart local v5    # "cdmaAsuLevel":I
    goto :goto_32

    .line 184
    .end local v5    # "cdmaAsuLevel":I
    :cond_22
    if-lt v0, v3, :cond_26

    const/4 v5, 0x4

    .restart local v5    # "cdmaAsuLevel":I
    goto :goto_32

    .line 185
    .end local v5    # "cdmaAsuLevel":I
    :cond_26
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_2c

    const/4 v5, 0x2

    .restart local v5    # "cdmaAsuLevel":I
    goto :goto_32

    .line 186
    .end local v5    # "cdmaAsuLevel":I
    :cond_2c
    if-lt v0, v2, :cond_30

    const/4 v5, 0x1

    .restart local v5    # "cdmaAsuLevel":I
    goto :goto_32

    .line 187
    .end local v5    # "cdmaAsuLevel":I
    :cond_30
    const/16 v5, 0x63

    .line 190
    .restart local v5    # "cdmaAsuLevel":I
    :goto_32
    if-ne v1, v4, :cond_37

    const/16 v2, 0x63

    .local v2, "ecioAsuLevel":I
    goto :goto_55

    .line 191
    .end local v2    # "ecioAsuLevel":I
    :cond_37
    if-lt v1, v3, :cond_3c

    const/16 v2, 0x10

    .restart local v2    # "ecioAsuLevel":I
    goto :goto_55

    .line 192
    .end local v2    # "ecioAsuLevel":I
    :cond_3c
    if-lt v1, v2, :cond_41

    const/16 v2, 0x8

    .restart local v2    # "ecioAsuLevel":I
    goto :goto_55

    .line 193
    .end local v2    # "ecioAsuLevel":I
    :cond_41
    const/16 v2, -0x73

    if-lt v1, v2, :cond_47

    const/4 v2, 0x4

    .restart local v2    # "ecioAsuLevel":I
    goto :goto_55

    .line 194
    .end local v2    # "ecioAsuLevel":I
    :cond_47
    const/16 v2, -0x82

    if-lt v1, v2, :cond_4d

    const/4 v2, 0x2

    .restart local v2    # "ecioAsuLevel":I
    goto :goto_55

    .line 195
    .end local v2    # "ecioAsuLevel":I
    :cond_4d
    const/16 v2, -0x96

    if-lt v1, v2, :cond_53

    const/4 v2, 0x1

    .restart local v2    # "ecioAsuLevel":I
    goto :goto_55

    .line 196
    .end local v2    # "ecioAsuLevel":I
    :cond_53
    const/16 v2, 0x63

    .line 198
    .restart local v2    # "ecioAsuLevel":I
    :goto_55
    if-ge v5, v2, :cond_59

    move v3, v5

    goto :goto_5a

    :cond_59
    move v3, v2

    .line 200
    .local v3, "level":I
    :goto_5a
    return v3
.end method

.method public whitelist getCdmaDbm()I
    .registers 2

    .line 335
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    return v0
.end method

.method public whitelist getCdmaEcio()I
    .registers 2

    .line 347
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    return v0
.end method

.method public whitelist getCdmaLevel()I
    .registers 6

    .line 207
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    .line 208
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v1

    .line 212
    .local v1, "cdmaEcio":I
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_f

    const/4 v3, 0x0

    .local v3, "levelDbm":I
    goto :goto_28

    .line 213
    .end local v3    # "levelDbm":I
    :cond_f
    const/16 v3, -0x4b

    if-lt v0, v3, :cond_15

    const/4 v3, 0x4

    .restart local v3    # "levelDbm":I
    goto :goto_28

    .line 214
    .end local v3    # "levelDbm":I
    :cond_15
    const/16 v3, -0x55

    if-lt v0, v3, :cond_1b

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_28

    .line 215
    .end local v3    # "levelDbm":I
    :cond_1b
    const/16 v3, -0x5f

    if-lt v0, v3, :cond_21

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_28

    .line 216
    .end local v3    # "levelDbm":I
    :cond_21
    const/16 v3, -0x64

    if-lt v0, v3, :cond_27

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_28

    .line 217
    .end local v3    # "levelDbm":I
    :cond_27
    const/4 v3, 0x0

    .line 220
    .restart local v3    # "levelDbm":I
    :goto_28
    if-ne v1, v2, :cond_2c

    const/4 v2, 0x0

    .local v2, "levelEcio":I
    goto :goto_45

    .line 221
    .end local v2    # "levelEcio":I
    :cond_2c
    const/16 v2, -0x5a

    if-lt v1, v2, :cond_32

    const/4 v2, 0x4

    .restart local v2    # "levelEcio":I
    goto :goto_45

    .line 222
    .end local v2    # "levelEcio":I
    :cond_32
    const/16 v2, -0x6e

    if-lt v1, v2, :cond_38

    const/4 v2, 0x3

    .restart local v2    # "levelEcio":I
    goto :goto_45

    .line 223
    .end local v2    # "levelEcio":I
    :cond_38
    const/16 v2, -0x82

    if-lt v1, v2, :cond_3e

    const/4 v2, 0x2

    .restart local v2    # "levelEcio":I
    goto :goto_45

    .line 224
    .end local v2    # "levelEcio":I
    :cond_3e
    const/16 v2, -0x96

    if-lt v1, v2, :cond_44

    const/4 v2, 0x1

    .restart local v2    # "levelEcio":I
    goto :goto_45

    .line 225
    .end local v2    # "levelEcio":I
    :cond_44
    const/4 v2, 0x0

    .line 227
    .restart local v2    # "levelEcio":I
    :goto_45
    if-ge v3, v2, :cond_49

    move v4, v3

    goto :goto_4a

    :cond_49
    move v4, v2

    .line 229
    .local v4, "level":I
    :goto_4a
    return v4
.end method

.method public whitelist getDbm()I
    .registers 4

    .line 324
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    .line 325
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v1

    .line 328
    .local v1, "evdoDbm":I
    if-ge v0, v1, :cond_c

    move v2, v0

    goto :goto_d

    :cond_c
    move v2, v1

    :goto_d
    return v2
.end method

.method public blacklist getEvdoAsuLevel()I
    .registers 6

    .line 293
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v0

    .line 294
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v1

    .line 298
    .local v1, "evdoSnr":I
    const/16 v2, -0x41

    if-lt v0, v2, :cond_f

    const/16 v2, 0x10

    .local v2, "levelEvdoDbm":I
    goto :goto_2a

    .line 299
    .end local v2    # "levelEvdoDbm":I
    :cond_f
    const/16 v2, -0x4b

    if-lt v0, v2, :cond_16

    const/16 v2, 0x8

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_2a

    .line 300
    .end local v2    # "levelEvdoDbm":I
    :cond_16
    const/16 v2, -0x55

    if-lt v0, v2, :cond_1c

    const/4 v2, 0x4

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_2a

    .line 301
    .end local v2    # "levelEvdoDbm":I
    :cond_1c
    const/16 v2, -0x5f

    if-lt v0, v2, :cond_22

    const/4 v2, 0x2

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_2a

    .line 302
    .end local v2    # "levelEvdoDbm":I
    :cond_22
    const/16 v2, -0x69

    if-lt v0, v2, :cond_28

    const/4 v2, 0x1

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_2a

    .line 303
    .end local v2    # "levelEvdoDbm":I
    :cond_28
    const/16 v2, 0x63

    .line 305
    .restart local v2    # "levelEvdoDbm":I
    :goto_2a
    const/4 v3, 0x7

    if-lt v1, v3, :cond_30

    const/16 v3, 0x10

    .local v3, "levelEvdoSnr":I
    goto :goto_47

    .line 306
    .end local v3    # "levelEvdoSnr":I
    :cond_30
    const/4 v3, 0x6

    if-lt v1, v3, :cond_36

    const/16 v3, 0x8

    .restart local v3    # "levelEvdoSnr":I
    goto :goto_47

    .line 307
    .end local v3    # "levelEvdoSnr":I
    :cond_36
    const/4 v3, 0x5

    if-lt v1, v3, :cond_3b

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoSnr":I
    goto :goto_47

    .line 308
    .end local v3    # "levelEvdoSnr":I
    :cond_3b
    const/4 v3, 0x3

    if-lt v1, v3, :cond_40

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoSnr":I
    goto :goto_47

    .line 309
    .end local v3    # "levelEvdoSnr":I
    :cond_40
    const/4 v3, 0x1

    if-lt v1, v3, :cond_45

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoSnr":I
    goto :goto_47

    .line 310
    .end local v3    # "levelEvdoSnr":I
    :cond_45
    const/16 v3, 0x63

    .line 312
    .restart local v3    # "levelEvdoSnr":I
    :goto_47
    if-ge v2, v3, :cond_4b

    move v4, v2

    goto :goto_4c

    :cond_4b
    move v4, v3

    .line 314
    .local v4, "level":I
    :goto_4c
    return v4
.end method

.method public whitelist getEvdoDbm()I
    .registers 2

    .line 359
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    return v0
.end method

.method public whitelist getEvdoEcio()I
    .registers 2

    .line 371
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    return v0
.end method

.method public whitelist getEvdoLevel()I
    .registers 6

    .line 236
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v0

    .line 237
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v1

    .line 241
    .local v1, "evdoSnr":I
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_f

    const/4 v3, 0x0

    .local v3, "levelEvdoDbm":I
    goto :goto_28

    .line 242
    .end local v3    # "levelEvdoDbm":I
    :cond_f
    const/16 v3, -0x41

    if-lt v0, v3, :cond_15

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_28

    .line 243
    .end local v3    # "levelEvdoDbm":I
    :cond_15
    const/16 v3, -0x4b

    if-lt v0, v3, :cond_1b

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_28

    .line 244
    .end local v3    # "levelEvdoDbm":I
    :cond_1b
    const/16 v3, -0x5a

    if-lt v0, v3, :cond_21

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_28

    .line 245
    .end local v3    # "levelEvdoDbm":I
    :cond_21
    const/16 v3, -0x69

    if-lt v0, v3, :cond_27

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_28

    .line 246
    .end local v3    # "levelEvdoDbm":I
    :cond_27
    const/4 v3, 0x0

    .line 248
    .restart local v3    # "levelEvdoDbm":I
    :goto_28
    if-ne v1, v2, :cond_2c

    const/4 v2, 0x0

    .local v2, "levelEvdoSnr":I
    goto :goto_41

    .line 249
    .end local v2    # "levelEvdoSnr":I
    :cond_2c
    const/4 v2, 0x7

    if-lt v1, v2, :cond_31

    const/4 v2, 0x4

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_41

    .line 250
    .end local v2    # "levelEvdoSnr":I
    :cond_31
    const/4 v2, 0x5

    if-lt v1, v2, :cond_36

    const/4 v2, 0x3

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_41

    .line 251
    .end local v2    # "levelEvdoSnr":I
    :cond_36
    const/4 v2, 0x3

    if-lt v1, v2, :cond_3b

    const/4 v2, 0x2

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_41

    .line 252
    .end local v2    # "levelEvdoSnr":I
    :cond_3b
    const/4 v2, 0x1

    if-lt v1, v2, :cond_40

    const/4 v2, 0x1

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_41

    .line 253
    .end local v2    # "levelEvdoSnr":I
    :cond_40
    const/4 v2, 0x0

    .line 255
    .restart local v2    # "levelEvdoSnr":I
    :goto_41
    if-ge v3, v2, :cond_45

    move v4, v3

    goto :goto_46

    :cond_45
    move v4, v2

    .line 257
    .local v4, "level":I
    :goto_46
    return v4
.end method

.method public whitelist getEvdoSnr()I
    .registers 2

    .line 383
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return v0
.end method

.method public whitelist getLevel()I
    .registers 2

    .line 125
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 393
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isValid()Z
    .registers 2

    .line 401
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 402
    :cond_8
    sget-object v0, Landroid/telephony/CellSignalStrengthCdma;->sInvalid:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0, v0}, Landroid/telephony/CellSignalStrengthCdma;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist-max-o setCdmaDbm(I)V
    .registers 2
    .param p1, "cdmaDbm"    # I

    .line 340
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 341
    return-void
.end method

.method public greylist-max-o setCdmaEcio(I)V
    .registers 2
    .param p1, "cdmaEcio"    # I

    .line 352
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 353
    return-void
.end method

.method public greylist-max-o setDefaultValues()V
    .registers 2

    .line 113
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 114
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 115
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 116
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 117
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    .line 119
    return-void
.end method

.method public greylist-max-o setEvdoDbm(I)V
    .registers 2
    .param p1, "evdoDbm"    # I

    .line 364
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 365
    return-void
.end method

.method public greylist-max-o setEvdoEcio(I)V
    .registers 2
    .param p1, "evdoEcio"    # I

    .line 376
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 377
    return-void
.end method

.method public greylist-max-o setEvdoSnr(I)V
    .registers 2
    .param p1, "evdoSnr"    # I

    .line 388
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 389
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthCdma: cdmaDbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cdmaEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " evdoDbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " evdoEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " evdoSnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .registers 6
    .param p1, "cc"    # Landroid/os/PersistableBundle;
    .param p2, "ss"    # Landroid/telephony/ServiceState;

    .line 131
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result v0

    .line 132
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result v1

    .line 133
    .local v1, "evdoLevel":I
    if-nez v1, :cond_11

    .line 135
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result v2

    iput v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    goto :goto_21

    .line 136
    :cond_11
    if-nez v0, :cond_1a

    .line 138
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result v2

    iput v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    goto :goto_21

    .line 141
    :cond_1a
    if-ge v0, v1, :cond_1e

    move v2, v0

    goto :goto_1f

    :cond_1e
    move v2, v1

    :goto_1f
    iput v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    .line 143
    :goto_21
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 437
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    return-void
.end method
