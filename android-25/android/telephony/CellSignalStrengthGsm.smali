.class public final Landroid/telephony/CellSignalStrengthGsm;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthGsm.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellSignalStrengthGsm$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellSignalStrengthGsm;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final GSM_SIGNAL_STRENGTH_GOOD:I = 0x8

.field private static final GSM_SIGNAL_STRENGTH_GREAT:I = 0xc

.field private static final GSM_SIGNAL_STRENGTH_MODERATE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthGsm"


# instance fields
.field private mBitErrorRate:I

.field private mSignalStrength:I

.field private mTimingAdvance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 240
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthGsm$1;-><init>()V

    #@5
    .line 239
    sput-object v0, Landroid/telephony/CellSignalStrengthGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    #@3
    .line 45
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->setDefaultValues()V

    #@6
    .line 44
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "ss"    # I
    .param p2, "ber"    # I

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    #@3
    .line 54
    invoke-virtual {p0, p1, p2}, Landroid/telephony/CellSignalStrengthGsm;->initialize(II)V

    #@6
    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 224
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    #@3
    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    #@9
    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    #@f
    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    #@15
    .line 224
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthGsm;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthGsm;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthGsm;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    #@3
    .line 65
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthGsm;->copyFrom(Landroid/telephony/CellSignalStrengthGsm;)V

    #@6
    .line 64
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 256
    const-string/jumbo v0, "CellSignalStrengthGsm"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 255
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .locals 1

    #@0
    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->copy()Landroid/telephony/CellSignalStrengthGsm;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthGsm;
    .locals 1

    #@0
    .prologue
    .line 111
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    #@2
    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/telephony/CellSignalStrengthGsm;)V

    #@5
    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthGsm;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthGsm;

    #@0
    .prologue
    .line 101
    iget v0, p1, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    #@2
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    #@4
    .line 102
    iget v0, p1, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    #@6
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    #@8
    .line 103
    iget v0, p1, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    #@a
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    #@c
    .line 100
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 234
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
    .line 187
    :try_start_0
    move-object v0, p1

    #@2
    check-cast v0, Landroid/telephony/CellSignalStrengthGsm;

    #@4
    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 192
    .local v2, "s":Landroid/telephony/CellSignalStrengthGsm;
    if-nez p1, :cond_0

    #@7
    .line 193
    return v3

    #@8
    .line 188
    .end local v2    # "s":Landroid/telephony/CellSignalStrengthGsm;
    :catch_0
    move-exception v1

    #@9
    .line 189
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    #@a
    .line 196
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/CellSignalStrengthGsm;
    :cond_0
    iget v4, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    #@c
    iget v5, v2, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    #@e
    if-ne v4, v5, :cond_1

    #@10
    iget v4, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    #@12
    iget v5, v2, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    #@14
    if-ne v4, v5, :cond_1

    #@16
    .line 197
    iget v4, v2, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    #@18
    iget v5, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    #@1a
    if-ne v4, v5, :cond_1

    #@1c
    const/4 v3, 0x1

    #@1d
    .line 196
    :cond_1
    return v3
.end method

.method public getAsuLevel()I
    .locals 1

    #@0
    .prologue
    .line 171
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    #@2
    .line 173
    .local v0, "level":I
    return v0
.end method

.method public getDbm()I
    .locals 5

    #@0
    .prologue
    const v3, 0x7fffffff

    #@3
    .line 150
    iget v2, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    #@5
    .line 151
    .local v2, "level":I
    const/16 v4, 0x63

    #@7
    if-ne v2, v4, :cond_0

    #@9
    move v0, v3

    #@a
    .line 152
    .local v0, "asu":I
    :goto_0
    if-eq v0, v3, :cond_1

    #@c
    .line 153
    mul-int/lit8 v3, v0, 0x2

    #@e
    add-int/lit8 v1, v3, -0x71

    #@10
    .line 158
    .local v1, "dBm":I
    :goto_1
    return v1

    #@11
    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_0
    move v0, v2

    #@12
    .line 151
    goto :goto_0

    #@13
    .line 155
    .restart local v0    # "asu":I
    :cond_1
    const v1, 0x7fffffff

    #@16
    .restart local v1    # "dBm":I
    goto :goto_1
.end method

.method public getLevel()I
    .locals 3

    #@0
    .prologue
    .line 133
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    #@2
    .line 134
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
    .line 140
    .local v1, "level":I
    :goto_0
    return v1

    #@b
    .line 135
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
    .line 136
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
    .line 137
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
    .line 138
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
    .line 179
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    #@2
    mul-int/lit8 v0, v0, 0x1f

    #@4
    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    #@6
    mul-int/lit8 v1, v1, 0x1f

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public initialize(II)V
    .locals 1
    .param p1, "ss"    # I
    .param p2, "ber"    # I

    #@0
    .prologue
    .line 77
    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    #@2
    .line 78
    iput p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    #@4
    .line 79
    const v0, 0x7fffffff

    #@7
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    #@9
    .line 76
    return-void
.end method

.method public initialize(III)V
    .locals 0
    .param p1, "ss"    # I
    .param p2, "ber"    # I
    .param p3, "ta"    # I

    #@0
    .prologue
    .line 92
    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    #@2
    .line 93
    iput p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    #@4
    .line 94
    iput p3, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    #@6
    .line 91
    return-void
.end method

.method public setDefaultValues()V
    .locals 1

    #@0
    .prologue
    const v0, 0x7fffffff

    #@3
    .line 117
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    #@5
    .line 118
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    #@7
    .line 119
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    #@9
    .line 116
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CellSignalStrengthGsm: ss="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 206
    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    #@e
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 207
    const-string/jumbo v1, " ber="

    #@15
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 207
    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    #@1b
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 208
    const-string/jumbo v1, " mTa="

    #@22
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 208
    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    #@28
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 215
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 216
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 217
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 213
    return-void
.end method
