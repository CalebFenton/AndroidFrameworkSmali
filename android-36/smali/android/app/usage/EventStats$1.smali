.class Landroid/app/usage/EventStats$1;
.super Ljava/lang/Object;
.source "EventStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/EventStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/usage/EventStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/EventStats;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 166
    new-instance v0, Landroid/app/usage/EventStats;

    invoke-direct {v0}, Landroid/app/usage/EventStats;-><init>()V

    .line 167
    .local v0, "stats":Landroid/app/usage/EventStats;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/app/usage/EventStats;->mEventType:I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/EventStats;->mBeginTimeStamp:J

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/EventStats;->mEndTimeStamp:J

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/EventStats;->mLastEventTime:J

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/EventStats;->mTotalTime:J

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/app/usage/EventStats;->mCount:I

    .line 173
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

    .line 163
    invoke-virtual {p0, p1}, Landroid/app/usage/EventStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/EventStats;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/usage/EventStats;
    .registers 3
    .param p1, "size"    # I

    .line 178
    new-array v0, p1, [Landroid/app/usage/EventStats;

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

    .line 163
    invoke-virtual {p0, p1}, Landroid/app/usage/EventStats$1;->newArray(I)[Landroid/app/usage/EventStats;

    move-result-object p1

    return-object p1
.end method
