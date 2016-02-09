.class public Landroid/location/FusedBatchOptions;
.super Ljava/lang/Object;
.source "FusedBatchOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/FusedBatchOptions$SourceTechnologies;,
        Landroid/location/FusedBatchOptions$BatchFlags;,
        Landroid/location/FusedBatchOptions$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/FusedBatchOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mFlags:I

.field private volatile mMaxPowerAllocationInMW:D

.field private volatile mPeriodInNS:J

.field private volatile mSmallestDisplacementMeters:F

.field private volatile mSourcesToUse:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 117
    new-instance v0, Landroid/location/FusedBatchOptions$1;

    #@2
    invoke-direct {v0}, Landroid/location/FusedBatchOptions$1;-><init>()V

    #@5
    .line 116
    sput-object v0, Landroid/location/FusedBatchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 27
    const-wide/16 v0, 0x0

    #@6
    iput-wide v0, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    #@8
    .line 28
    iput v2, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    #@a
    .line 29
    iput v2, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    #@c
    .line 32
    const-wide/16 v0, 0x0

    #@e
    iput-wide v0, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    #@10
    .line 34
    const/4 v0, 0x0

    #@11
    iput v0, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    #@13
    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 137
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 92
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    #@2
    return v0
.end method

.method public getMaxPowerAllocationInMW()D
    .locals 2

    #@0
    .prologue
    .line 44
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    #@2
    return-wide v0
.end method

.method public getPeriodInNS()J
    .locals 2

    #@0
    .prologue
    .line 52
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    #@2
    return-wide v0
.end method

.method public getSmallestDisplacementMeters()F
    .locals 1

    #@0
    .prologue
    .line 60
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    #@2
    return v0
.end method

.method public getSourcesToUse()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    #@2
    return v0
.end method

.method public isFlagSet(I)Z
    .locals 2
    .param p1, "flag"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 88
    iget v1, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    #@3
    and-int/2addr v1, p1

    #@4
    if-eqz v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method public isSourceToUseSet(I)Z
    .locals 2
    .param p1, "source"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 72
    iget v1, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    #@3
    and-int/2addr v1, p1

    #@4
    if-eqz v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method public resetFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    #@0
    .prologue
    .line 84
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    #@2
    not-int v1, p1

    #@3
    and-int/2addr v0, v1

    #@4
    iput v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    #@6
    .line 83
    return-void
.end method

.method public resetSourceToUse(I)V
    .locals 2
    .param p1, "source"    # I

    #@0
    .prologue
    .line 68
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    #@2
    not-int v1, p1

    #@3
    and-int/2addr v0, v1

    #@4
    iput v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    #@6
    .line 67
    return-void
.end method

.method public setFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    #@0
    .prologue
    .line 80
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    #@2
    or-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    #@5
    .line 79
    return-void
.end method

.method public setMaxPowerAllocationInMW(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 40
    iput-wide p1, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    #@2
    .line 39
    return-void
.end method

.method public setPeriodInNS(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 48
    iput-wide p1, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    #@2
    .line 47
    return-void
.end method

.method public setSmallestDisplacementMeters(F)V
    .locals 0
    .param p1, "value"    # F

    #@0
    .prologue
    .line 56
    iput p1, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    #@2
    .line 55
    return-void
.end method

.method public setSourceToUse(I)V
    .locals 1
    .param p1, "source"    # I

    #@0
    .prologue
    .line 64
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    #@2
    or-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    #@5
    .line 63
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 142
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@5
    .line 143
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 144
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 145
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 146
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@19
    .line 141
    return-void
.end method
