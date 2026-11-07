.class Landroid/app/usage/ConfigurationStats$1;
.super Ljava/lang/Object;
.source "ConfigurationStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/ConfigurationStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/usage/ConfigurationStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/ConfigurationStats;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 152
    new-instance v0, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v0}, Landroid/app/usage/ConfigurationStats;-><init>()V

    .line 153
    .local v0, "stats":Landroid/app/usage/ConfigurationStats;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    .line 154
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    iput-object v1, v0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    .line 156
    :cond_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 161
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 149
    invoke-virtual {p0, p1}, Landroid/app/usage/ConfigurationStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/ConfigurationStats;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/usage/ConfigurationStats;
    .registers 3
    .param p1, "size"    # I

    .line 166
    new-array v0, p1, [Landroid/app/usage/ConfigurationStats;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 149
    invoke-virtual {p0, p1}, Landroid/app/usage/ConfigurationStats$1;->newArray(I)[Landroid/app/usage/ConfigurationStats;

    move-result-object p1

    return-object p1
.end method
