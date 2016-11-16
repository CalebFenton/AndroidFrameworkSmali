.class final Landroid/app/usage/ConfigurationStats$1;
.super Ljava/lang/Object;
.source "ConfigurationStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/ConfigurationStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/app/usage/ConfigurationStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/ConfigurationStats;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 144
    new-instance v0, Landroid/app/usage/ConfigurationStats;

    #@2
    invoke-direct {v0}, Landroid/app/usage/ConfigurationStats;-><init>()V

    #@5
    .line 145
    .local v0, "stats":Landroid/app/usage/ConfigurationStats;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 146
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/content/res/Configuration;

    #@13
    iput-object v1, v0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    #@15
    .line 148
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@18
    move-result-wide v2

    #@19
    iput-wide v2, v0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    #@1b
    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@1e
    move-result-wide v2

    #@1f
    iput-wide v2, v0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    #@21
    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@24
    move-result-wide v2

    #@25
    iput-wide v2, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    #@27
    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@2a
    move-result-wide v2

    #@2b
    iput-wide v2, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    #@2d
    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v1

    #@31
    iput v1, v0, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    #@33
    .line 153
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 143
    invoke-virtual {p0, p1}, Landroid/app/usage/ConfigurationStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/ConfigurationStats;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/app/usage/ConfigurationStats;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 158
    new-array v0, p1, [Landroid/app/usage/ConfigurationStats;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 157
    invoke-virtual {p0, p1}, Landroid/app/usage/ConfigurationStats$1;->newArray(I)[Landroid/app/usage/ConfigurationStats;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
