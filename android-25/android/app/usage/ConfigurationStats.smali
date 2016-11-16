.class public final Landroid/app/usage/ConfigurationStats;
.super Ljava/lang/Object;
.source "ConfigurationStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/ConfigurationStats$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mActivationCount:I

.field public mBeginTimeStamp:J

.field public mConfiguration:Landroid/content/res/Configuration;

.field public mEndTimeStamp:J

.field public mLastTimeActive:J

.field public mTotalTimeActive:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 141
    new-instance v0, Landroid/app/usage/ConfigurationStats$1;

    #@2
    invoke-direct {v0}, Landroid/app/usage/ConfigurationStats$1;-><init>()V

    #@5
    sput-object v0, Landroid/app/usage/ConfigurationStats;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/app/usage/ConfigurationStats;)V
    .locals 2
    .param p1, "stats"    # Landroid/app/usage/ConfigurationStats;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    iget-object v0, p1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    #@5
    iput-object v0, p0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    #@7
    .line 66
    iget-wide v0, p1, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    #@9
    iput-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    #@b
    .line 67
    iget-wide v0, p1, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    #@d
    iput-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    #@f
    .line 68
    iget-wide v0, p1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    #@11
    iput-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    #@13
    .line 69
    iget-wide v0, p1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    #@15
    iput-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    #@17
    .line 70
    iget v0, p1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    #@19
    iput v0, p0, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    #@1b
    .line 64
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 122
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getActivationCount()I
    .locals 1

    #@0
    .prologue
    .line 117
    iget v0, p0, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    #@2
    return v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    #@2
    return-object v0
.end method

.method public getFirstTimeStamp()J
    .locals 2

    #@0
    .prologue
    .line 84
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    #@2
    return-wide v0
.end method

.method public getLastTimeActive()J
    .locals 2

    #@0
    .prologue
    .line 103
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    #@2
    return-wide v0
.end method

.method public getLastTimeStamp()J
    .locals 2

    #@0
    .prologue
    .line 94
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    #@2
    return-wide v0
.end method

.method public getTotalTimeActive()J
    .locals 2

    #@0
    .prologue
    .line 110
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    #@2
    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 128
    const/4 v0, 0x1

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 129
    iget-object v0, p0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    #@a
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@d
    .line 134
    :goto_0
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    #@f
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@12
    .line 135
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    #@14
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@17
    .line 136
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    #@19
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@1c
    .line 137
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    #@1e
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@21
    .line 138
    iget v0, p0, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 126
    return-void

    #@27
    .line 131
    :cond_0
    const/4 v0, 0x0

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    goto :goto_0
.end method
