.class Landroid/app/time/UnixEpochTime$1;
.super Ljava/lang/Object;
.source "UnixEpochTime.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/time/UnixEpochTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/time/UnixEpochTime;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/time/UnixEpochTime;
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 136
    .local v0, "elapsedRealtimeMillis":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 137
    .local v2, "unixEpochTimeMillis":J
    new-instance v4, Landroid/app/time/UnixEpochTime;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    return-object v4
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

    .line 132
    invoke-virtual {p0, p1}, Landroid/app/time/UnixEpochTime$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/time/UnixEpochTime;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/time/UnixEpochTime;
    .registers 3
    .param p1, "size"    # I

    .line 142
    new-array v0, p1, [Landroid/app/time/UnixEpochTime;

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

    .line 132
    invoke-virtual {p0, p1}, Landroid/app/time/UnixEpochTime$1;->newArray(I)[Landroid/app/time/UnixEpochTime;

    move-result-object p1

    return-object p1
.end method
