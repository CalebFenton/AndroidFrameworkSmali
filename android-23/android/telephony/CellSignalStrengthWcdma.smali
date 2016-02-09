.class public final Landroid/telephony/CellSignalStrengthWcdma;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthWcdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellSignalStrengthWcdma$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellSignalStrengthWcdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthWcdma"

.field private static final WCDMA_SIGNAL_STRENGTH_GOOD:I = 0x8

.field private static final WCDMA_SIGNAL_STRENGTH_GREAT:I = 0xc

.field private static final WCDMA_SIGNAL_STRENGTH_MODERATE:I = 0x5


# instance fields
.field private mBitErrorRate:I

.field private mSignalStrength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 217
    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthWcdma$1;-><init>()V

    #@5
    .line 216
    sput-object v0, Landroid/telephony/CellSignalStrengthWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->setDefaultValues()V

    #@6
    .line 43
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "ss"    # I
    .param p2, "ber"    # I

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    #@3
    .line 53
    invoke-virtual {p0, p1, p2}, Landroid/telephony/CellSignalStrengthWcdma;->initialize(II)V

    #@6
    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 202
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    #@3
    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    #@9
    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    #@f
    .line 202
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthWcdma;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthWcdma;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthWcdma;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    #@3
    .line 64
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthWcdma;->copyFrom(Landroid/telephony/CellSignalStrengthWcdma;)V

    #@6
    .line 63
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 233
    const-string/jumbo v0, "CellSignalStrengthWcdma"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 232
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .locals 1

    #@0
    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->copy()Landroid/telephony/CellSignalStrengthWcdma;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthWcdma;
    .locals 1

    #@0
    .prologue
    .line 93
    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma;

    #@2
    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(Landroid/telephony/CellSignalStrengthWcdma;)V

    #@5
    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthWcdma;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthWcdma;

    #@0
    .prologue
    .line 84
    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    #@2
    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    #@4
    .line 85
    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    #@6
    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    #@8
    .line 83
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 211
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
    .line 168
    :try_start_0
    move-object v0, p1

    #@2
    check-cast v0, Landroid/telephony/CellSignalStrengthWcdma;

    #@4
    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 173
    .local v2, "s":Landroid/telephony/CellSignalStrengthWcdma;
    if-nez p1, :cond_0

    #@7
    .line 174
    return v3

    #@8
    .line 169
    .end local v2    # "s":Landroid/telephony/CellSignalStrengthWcdma;
    :catch_0
    move-exception v1

    #@9
    .line 170
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    #@a
    .line 177
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/CellSignalStrengthWcdma;
    :cond_0
    iget v4, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    #@c
    iget v5, v2, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    #@e
    if-ne v4, v5, :cond_1

    #@10
    iget v4, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    #@12
    iget v5, v2, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    #@14
    if-ne v4, v5, :cond_1

    #@16
    const/4 v3, 0x1

    #@17
    :cond_1
    return v3
.end method

.method public getAsuLevel()I
    .locals 1

    #@0
    .prologue
    .line 152
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    #@2
    .line 154
    .local v0, "level":I
    return v0
.end method

.method public getDbm()I
    .locals 4

    #@0
    .prologue
    .line 131
    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    #@2
    .line 132
    .local v2, "level":I
    const/16 v3, 0x63

    #@4
    if-ne v2, v3, :cond_0

    #@6
    const v0, 0x7fffffff

    #@9
    .line 133
    .local v0, "asu":I
    :goto_0
    const v3, 0x7fffffff

    #@c
    if-eq v0, v3, :cond_1

    #@e
    .line 134
    mul-int/lit8 v3, v0, 0x2

    #@10
    add-int/lit8 v1, v3, -0x71

    #@12
    .line 139
    .local v1, "dBm":I
    :goto_1
    return v1

    #@13
    .line 132
    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_0
    move v0, v2

    #@14
    .restart local v0    # "asu":I
    goto :goto_0

    #@15
    .line 136
    :cond_1
    const v1, 0x7fffffff

    #@18
    .restart local v1    # "dBm":I
    goto :goto_1
.end method

.method public getLevel()I
    .locals 3

    #@0
    .prologue
    .line 114
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    #@2
    .line 115
    .local v0, "asu":I
    const/4 v2, 0x2

    #@3
    if-le v0, v2, :cond_0

    #@5
    const/16 v2, 0x63

    #@7
    if-ne v0, v2, :cond_1

    #@9
    :cond_0
    const/4 v1, 0x0

    #@a
    .line 121
    .local v1, "level":I
    :goto_0
    return v1

    #@b
    .line 116
    .end local v1    # "level":I
    :cond_1
    const/16 v2, 0xc

    #@d
    if-lt v0, v2, :cond_2

    #@f
    const/4 v1, 0x4

    #@10
    .restart local v1    # "level":I
    goto :goto_0

    #@11
    .line 117
    .end local v1    # "level":I
    :cond_2
    const/16 v2, 0x8

    #@13
    if-lt v0, v2, :cond_3

    #@15
    const/4 v1, 0x3

    #@16
    .restart local v1    # "level":I
    goto :goto_0

    #@17
    .line 118
    .end local v1    # "level":I
    :cond_3
    const/4 v2, 0x5

    #@18
    if-lt v0, v2, :cond_4

    #@1a
    const/4 v1, 0x2

    #@1b
    .restart local v1    # "level":I
    goto :goto_0

    #@1c
    .line 119
    .end local v1    # "level":I
    :cond_4
    const/4 v1, 0x1

    #@1d
    .restart local v1    # "level":I
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 160
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    #@2
    mul-int/lit8 v0, v0, 0x1f

    #@4
    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    #@6
    mul-int/lit8 v1, v1, 0x1f

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public initialize(II)V
    .locals 0
    .param p1, "ss"    # I
    .param p2, "ber"    # I

    #@0
    .prologue
    .line 76
    iput p1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    #@2
    .line 77
    iput p2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    #@4
    .line 75
    return-void
.end method

.method public setDefaultValues()V
    .locals 1

    #@0
    .prologue
    const v0, 0x7fffffff

    #@3
    .line 99
    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    #@5
    .line 100
    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    #@7
    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CellSignalStrengthWcdma: ss="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 186
    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    #@e
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 187
    const-string/jumbo v1, " ber="

    #@15
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 187
    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    #@1b
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 194
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 195
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 192
    return-void
.end method
