.class public final Landroid/app/usage/ConfigurationStats;
.super Ljava/lang/Object;
.source "ConfigurationStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-p mActivationCount:I

.field public greylist-max-p mBeginTimeStamp:J

.field public greylist-max-p mConfiguration:Landroid/content/res/Configuration;

.field public greylist-max-p mEndTimeStamp:J

.field public greylist-max-p mLastTimeActive:J

.field public greylist-max-p mTotalTimeActive:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 149
    new-instance v0, Landroid/app/usage/ConfigurationStats$1;

    invoke-direct {v0}, Landroid/app/usage/ConfigurationStats$1;-><init>()V

    sput-object v0, Landroid/app/usage/ConfigurationStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/usage/ConfigurationStats;)V
    .registers 4
    .param p1, "stats"    # Landroid/app/usage/ConfigurationStats;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iget-object v0, p1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    .line 74
    iget-wide v0, p1, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    iput-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    .line 75
    iget-wide v0, p1, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    iput-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    .line 76
    iget-wide v0, p1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iput-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 77
    iget-wide v0, p1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iput-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 78
    iget v0, p1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    iput v0, p0, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 79
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getActivationCount()I
    .registers 2

    .line 125
    iget v0, p0, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    return v0
.end method

.method public whitelist getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public whitelist getFirstTimeStamp()J
    .registers 3

    .line 92
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    return-wide v0
.end method

.method public whitelist getLastTimeActive()J
    .registers 3

    .line 111
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    return-wide v0
.end method

.method public whitelist getLastTimeStamp()J
    .registers 3

    .line 102
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    return-wide v0
.end method

.method public whitelist getTotalTimeActive()J
    .registers 3

    .line 118
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 135
    iget-object v0, p0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_e

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v0, p0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 139
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    :goto_12
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 143
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 145
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    iget v0, p0, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    return-void
.end method
