.class public final Landroid/location/LocationTime;
.super Ljava/lang/Object;
.source "LocationTime.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/LocationTime;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mElapsedRealtimeNanos:J

.field private final blacklist mUnixEpochTimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Landroid/location/LocationTime$1;

    invoke-direct {v0}, Landroid/location/LocationTime$1;-><init>()V

    sput-object v0, Landroid/location/LocationTime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJ)V
    .registers 5
    .param p1, "unixEpochTimeMillis"    # J
    .param p3, "elapsedRealtimeNanos"    # J

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Landroid/location/LocationTime;->mUnixEpochTimeMillis:J

    .line 37
    iput-wide p3, p0, Landroid/location/LocationTime;->mElapsedRealtimeNanos:J

    .line 38
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getElapsedRealtimeNanos()J
    .registers 3

    .line 51
    iget-wide v0, p0, Landroid/location/LocationTime;->mElapsedRealtimeNanos:J

    return-wide v0
.end method

.method public blacklist getUnixEpochTimeMillis()J
    .registers 3

    .line 44
    iget-wide v0, p0, Landroid/location/LocationTime;->mUnixEpochTimeMillis:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationTime{mUnixEpochTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/LocationTime;->mUnixEpochTimeMillis:J

    .line 68
    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/location/LocationTime;->mUnixEpochTimeMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), mElapsedRealtimeNanos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/location/LocationTime;->mElapsedRealtimeNanos:J

    .line 70
    invoke-static {v2, v3}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/LocationTime;->mElapsedRealtimeNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 56
    iget-wide v0, p0, Landroid/location/LocationTime;->mUnixEpochTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    iget-wide v0, p0, Landroid/location/LocationTime;->mElapsedRealtimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    return-void
.end method
