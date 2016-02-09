.class public final Landroid/app/usage/UsageStats;
.super Ljava/lang/Object;
.source "UsageStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageStats$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBeginIdleTime:J

.field public mBeginTimeStamp:J

.field public mEndTimeStamp:J

.field public mLastEvent:I

.field public mLastTimeSystemUsed:J

.field public mLastTimeUsed:J

.field public mLaunchCount:I

.field public mPackageName:Ljava/lang/String;

.field public mTotalTimeInForeground:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 198
    new-instance v0, Landroid/app/usage/UsageStats$1;

    #@2
    invoke-direct {v0}, Landroid/app/usage/UsageStats$1;-><init>()V

    #@5
    sput-object v0, Landroid/app/usage/UsageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/app/usage/UsageStats;)V
    .locals 2
    .param p1, "stats"    # Landroid/app/usage/UsageStats;

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    #@5
    iput-object v0, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    #@7
    .line 86
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    #@9
    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    #@b
    .line 87
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    #@d
    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    #@f
    .line 88
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    #@11
    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    #@13
    .line 89
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    #@15
    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    #@17
    .line 90
    iget v0, p1, Landroid/app/usage/UsageStats;->mLaunchCount:I

    #@19
    iput v0, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    #@1b
    .line 91
    iget v0, p1, Landroid/app/usage/UsageStats;->mLastEvent:I

    #@1d
    iput v0, p0, Landroid/app/usage/UsageStats;->mLastEvent:I

    #@1f
    .line 92
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    #@21
    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    #@23
    .line 93
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mLastTimeSystemUsed:J

    #@25
    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeSystemUsed:J

    #@27
    .line 84
    return-void
.end method


# virtual methods
.method public add(Landroid/app/usage/UsageStats;)V
    .locals 4
    .param p1, "right"    # Landroid/app/usage/UsageStats;

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    #@2
    iget-object v1, p1, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Can\'t merge UsageStats for package \'"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 165
    iget-object v2, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    #@1a
    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 165
    const-string/jumbo v2, "\' with UsageStats for package \'"

    #@21
    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 165
    iget-object v2, p1, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    #@27
    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 165
    const-string/jumbo v2, "\'."

    #@2e
    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 168
    :cond_0
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    #@3c
    iget-wide v2, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    #@3e
    cmp-long v0, v0, v2

    #@40
    if-lez v0, :cond_1

    #@42
    .line 169
    iget v0, p1, Landroid/app/usage/UsageStats;->mLastEvent:I

    #@44
    iput v0, p0, Landroid/app/usage/UsageStats;->mLastEvent:I

    #@46
    .line 170
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    #@48
    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    #@4a
    .line 171
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    #@4c
    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    #@4e
    .line 172
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    #@50
    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    #@52
    .line 173
    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mLastTimeSystemUsed:J

    #@54
    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeSystemUsed:J

    #@56
    .line 175
    :cond_1
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    #@58
    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    #@5a
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@5d
    move-result-wide v0

    #@5e
    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    #@60
    .line 176
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    #@62
    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    #@64
    add-long/2addr v0, v2

    #@65
    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    #@67
    .line 177
    iget v0, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    #@69
    iget v1, p1, Landroid/app/usage/UsageStats;->mLaunchCount:I

    #@6b
    add-int/2addr v0, v1

    #@6c
    iput v0, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    #@6e
    .line 162
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 182
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getBeginIdleTime()J
    .locals 2

    #@0
    .prologue
    .line 145
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    #@2
    return-wide v0
.end method

.method public getFirstTimeStamp()J
    .locals 2

    #@0
    .prologue
    .line 107
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    #@2
    return-wide v0
.end method

.method public getLastTimeStamp()J
    .locals 2

    #@0
    .prologue
    .line 117
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    #@2
    return-wide v0
.end method

.method public getLastTimeSystemUsed()J
    .locals 2

    #@0
    .prologue
    .line 136
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeSystemUsed:J

    #@2
    return-wide v0
.end method

.method public getLastTimeUsed()J
    .locals 2

    #@0
    .prologue
    .line 126
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    #@2
    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTotalTimeInForeground()J
    .locals 2

    #@0
    .prologue
    .line 152
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    #@2
    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 188
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 189
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 190
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 191
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    .line 192
    iget v0, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 193
    iget v0, p0, Landroid/app/usage/UsageStats;->mLastEvent:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 194
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    #@25
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@28
    .line 195
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeSystemUsed:J

    #@2a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@2d
    .line 186
    return-void
.end method
