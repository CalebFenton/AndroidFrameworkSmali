.class public Landroid/app/job/JobSnapshot;
.super Ljava/lang/Object;
.source "JobSnapshot.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/job/JobSnapshot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIsRunnable:Z

.field private final blacklist mJob:Landroid/app/job/JobInfo;

.field private final blacklist mSatisfiedConstraints:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 108
    new-instance v0, Landroid/app/job/JobSnapshot$1;

    invoke-direct {v0}, Landroid/app/job/JobSnapshot$1;-><init>()V

    sput-object v0, Landroid/app/job/JobSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/job/JobInfo;IZ)V
    .registers 4
    .param p1, "info"    # Landroid/app/job/JobInfo;
    .param p2, "satisfiedMask"    # I
    .param p3, "runnable"    # Z

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/app/job/JobSnapshot;->mJob:Landroid/app/job/JobInfo;

    .line 38
    iput p2, p0, Landroid/app/job/JobSnapshot;->mSatisfiedConstraints:I

    .line 39
    iput-boolean p3, p0, Landroid/app/job/JobSnapshot;->mIsRunnable:Z

    .line 40
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    iput-object v0, p0, Landroid/app/job/JobSnapshot;->mJob:Landroid/app/job/JobInfo;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobSnapshot;->mSatisfiedConstraints:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobSnapshot;->mIsRunnable:Z

    .line 46
    return-void
.end method

.method private blacklist satisfied(I)Z
    .registers 3
    .param p1, "flag"    # I

    .line 49
    iget v0, p0, Landroid/app/job/JobSnapshot;->mSatisfiedConstraints:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getJobInfo()Landroid/app/job/JobInfo;
    .registers 2

    .line 57
    iget-object v0, p0, Landroid/app/job/JobSnapshot;->mJob:Landroid/app/job/JobInfo;

    return-object v0
.end method

.method public blacklist isBatteryNotLowSatisfied()Z
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/app/job/JobSnapshot;->mJob:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 80
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/app/job/JobSnapshot;->satisfied(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    .line 79
    :goto_13
    return v0
.end method

.method public blacklist isChargingSatisfied()Z
    .registers 3

    .line 71
    iget-object v0, p0, Landroid/app/job/JobSnapshot;->mJob:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 72
    invoke-direct {p0, v1}, Landroid/app/job/JobSnapshot;->satisfied(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    nop

    .line 71
    :goto_13
    return v1
.end method

.method public blacklist isRequireDeviceIdleSatisfied()Z
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/app/job/JobSnapshot;->mJob:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 88
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/job/JobSnapshot;->satisfied(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    .line 87
    :goto_13
    return v0
.end method

.method public blacklist isRequireStorageNotLowSatisfied()Z
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/app/job/JobSnapshot;->mJob:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireStorageNotLow()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 93
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/app/job/JobSnapshot;->satisfied(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 92
    :goto_14
    return v0
.end method

.method public blacklist isRunnable()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Landroid/app/job/JobSnapshot;->mIsRunnable:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 103
    iget-object v0, p0, Landroid/app/job/JobSnapshot;->mJob:Landroid/app/job/JobInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 104
    iget v0, p0, Landroid/app/job/JobSnapshot;->mSatisfiedConstraints:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-boolean v0, p0, Landroid/app/job/JobSnapshot;->mIsRunnable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 106
    return-void
.end method
