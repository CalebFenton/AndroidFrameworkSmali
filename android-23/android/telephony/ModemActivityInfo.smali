.class public Landroid/telephony/ModemActivityInfo;
.super Ljava/lang/Object;
.source "ModemActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ModemActivityInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/ModemActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TX_POWER_LEVELS:I = 0x5


# instance fields
.field private final mEnergyUsed:I

.field private final mIdleTimeMs:I

.field private final mRxTimeMs:I

.field private final mSleepTimeMs:I

.field private final mTimestamp:J

.field private final mTxTimeMs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 72
    new-instance v0, Landroid/telephony/ModemActivityInfo$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/ModemActivityInfo$1;-><init>()V

    #@5
    .line 71
    sput-object v0, Landroid/telephony/ModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>(JII[III)V
    .locals 5
    .param p1, "timestamp"    # J
    .param p3, "sleepTimeMs"    # I
    .param p4, "idleTimeMs"    # I
    .param p5, "txTimeMs"    # [I
    .param p6, "rxTimeMs"    # I
    .param p7, "energyUsed"    # I

    #@0
    .prologue
    const/4 v3, 0x5

    #@1
    const/4 v2, 0x0

    #@2
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 42
    new-array v0, v3, [I

    #@7
    iput-object v0, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    #@9
    .line 48
    iput-wide p1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    #@b
    .line 49
    iput p3, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    #@d
    .line 50
    iput p4, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    #@f
    .line 51
    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    #@11
    array-length v1, p5

    #@12
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    #@15
    move-result v1

    #@16
    invoke-static {p5, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@19
    .line 52
    iput p6, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    #@1b
    .line 53
    iput p7, p0, Landroid/telephony/ModemActivityInfo;->mEnergyUsed:I

    #@1d
    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 68
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getEnergyUsed()I
    .locals 1

    #@0
    .prologue
    .line 144
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mEnergyUsed:I

    #@2
    return v0
.end method

.method public getIdleTimeMillis()I
    .locals 1

    #@0
    .prologue
    .line 129
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    #@2
    return v0
.end method

.method public getRxTimeMillis()I
    .locals 1

    #@0
    .prologue
    .line 136
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    #@2
    return v0
.end method

.method public getSleepTimeMillis()I
    .locals 1

    #@0
    .prologue
    .line 122
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    #@2
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    #@0
    .prologue
    .line 107
    iget-wide v0, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    #@2
    return-wide v0
.end method

.method public getTxTimeMillis()[I
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    #@2
    return-object v0
.end method

.method public isValid()Z
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 151
    const/4 v1, 0x0

    #@3
    .line 152
    .local v1, "totalTxTimeMs":I
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    #@6
    move-result-object v2

    #@7
    .line 153
    .local v2, "txTime":[I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    const/4 v5, 0x5

    #@9
    if-ge v0, v5, :cond_0

    #@b
    .line 154
    aget v5, v2, v0

    #@d
    add-int/2addr v1, v5

    #@e
    .line 153
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()I

    #@14
    move-result v5

    #@15
    if-nez v5, :cond_1

    #@17
    if-eqz v1, :cond_2

    #@19
    :cond_1
    :goto_1
    return v3

    #@1a
    .line 157
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()I

    #@1d
    move-result v5

    #@1e
    if-nez v5, :cond_1

    #@20
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()I

    #@23
    move-result v5

    #@24
    if-nez v5, :cond_1

    #@26
    move v3, v4

    #@27
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ModemActivityInfo{ mTimestamp="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 59
    iget-wide v2, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    #@e
    .line 58
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 60
    const-string/jumbo v1, " mSleepTimeMs="

    #@15
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 60
    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    #@1b
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 61
    const-string/jumbo v1, " mTxTimeMs[]="

    #@22
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 61
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    #@28
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 62
    const-string/jumbo v1, " mRxTimeMs="

    #@33
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 62
    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    #@39
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 63
    const-string/jumbo v1, " mEnergyUsed="

    #@40
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    .line 63
    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mEnergyUsed:I

    #@46
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    .line 64
    const-string/jumbo v1, "}"

    #@4d
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 93
    iget-wide v2, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    #@2
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 94
    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    #@7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 95
    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    #@c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 96
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    #@11
    if-ge v0, v1, :cond_0

    #@13
    .line 97
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    #@15
    aget v1, v1, v0

    #@17
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 96
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 99
    :cond_0
    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    #@1f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 100
    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mEnergyUsed:I

    #@24
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 92
    return-void
.end method
