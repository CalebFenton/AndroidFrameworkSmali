.class public Landroid/location/FusedBatchOptions;
.super Ljava/lang/Object;
.source "FusedBatchOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/FusedBatchOptions$BatchFlags;,
        Landroid/location/FusedBatchOptions$SourceTechnologies;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/FusedBatchOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile greylist-max-o mFlags:I

.field private volatile greylist-max-o mMaxPowerAllocationInMW:D

.field private volatile greylist-max-o mPeriodInNS:J

.field private volatile greylist-max-o mSmallestDisplacementMeters:F

.field private volatile greylist-max-o mSourcesToUse:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 116
    new-instance v0, Landroid/location/FusedBatchOptions$1;

    invoke-direct {v0}, Landroid/location/FusedBatchOptions$1;-><init>()V

    sput-object v0, Landroid/location/FusedBatchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    .line 29
    iput v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getFlags()I
    .registers 2

    .line 92
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    return v0
.end method

.method public greylist-max-o getMaxPowerAllocationInMW()D
    .registers 3

    .line 44
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    return-wide v0
.end method

.method public greylist-max-o getPeriodInNS()J
    .registers 3

    .line 52
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    return-wide v0
.end method

.method public greylist-max-o getSmallestDisplacementMeters()F
    .registers 2

    .line 60
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    return v0
.end method

.method public greylist-max-o getSourcesToUse()I
    .registers 2

    .line 76
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    return v0
.end method

.method public greylist-max-o isFlagSet(I)Z
    .registers 3
    .param p1, "flag"    # I

    .line 88
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist-max-o isSourceToUseSet(I)Z
    .registers 3
    .param p1, "source"    # I

    .line 72
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist-max-o resetFlag(I)V
    .registers 4
    .param p1, "flag"    # I

    .line 84
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    .line 85
    return-void
.end method

.method public greylist-max-o resetSourceToUse(I)V
    .registers 4
    .param p1, "source"    # I

    .line 68
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    .line 69
    return-void
.end method

.method public greylist-max-o setFlag(I)V
    .registers 3
    .param p1, "flag"    # I

    .line 80
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    .line 81
    return-void
.end method

.method public greylist-max-o setMaxPowerAllocationInMW(D)V
    .registers 3
    .param p1, "value"    # D

    .line 40
    iput-wide p1, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    .line 41
    return-void
.end method

.method public greylist-max-o setPeriodInNS(J)V
    .registers 3
    .param p1, "value"    # J

    .line 48
    iput-wide p1, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    .line 49
    return-void
.end method

.method public greylist-max-o setSmallestDisplacementMeters(F)V
    .registers 2
    .param p1, "value"    # F

    .line 56
    iput p1, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    .line 57
    return-void
.end method

.method public greylist-max-o setSourceToUse(I)V
    .registers 3
    .param p1, "source"    # I

    .line 64
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    .line 65
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 142
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 143
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSmallestDisplacementMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 147
    return-void
.end method
