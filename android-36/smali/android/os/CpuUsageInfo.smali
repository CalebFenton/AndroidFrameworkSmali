.class public final Landroid/os/CpuUsageInfo;
.super Ljava/lang/Object;
.source "CpuUsageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/CpuUsageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mActive:J

.field private greylist-max-o mTotal:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Landroid/os/CpuUsageInfo$1;

    invoke-direct {v0}, Landroid/os/CpuUsageInfo$1;-><init>()V

    sput-object v0, Landroid/os/CpuUsageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(JJ)V
    .registers 5
    .param p1, "activeTime"    # J
    .param p3, "totalTime"    # J

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Landroid/os/CpuUsageInfo;->mActive:J

    .line 40
    iput-wide p3, p0, Landroid/os/CpuUsageInfo;->mTotal:J

    .line 41
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-direct {p0, p1}, Landroid/os/CpuUsageInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 45
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/CpuUsageInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/CpuUsageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/CpuUsageInfo;->mActive:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/CpuUsageInfo;->mTotal:J

    .line 80
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getActive()J
    .registers 3

    .line 53
    iget-wide v0, p0, Landroid/os/CpuUsageInfo;->mActive:J

    return-wide v0
.end method

.method public whitelist getTotal()J
    .registers 3

    .line 63
    iget-wide v0, p0, Landroid/os/CpuUsageInfo;->mTotal:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 73
    iget-wide v0, p0, Landroid/os/CpuUsageInfo;->mActive:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    iget-wide v0, p0, Landroid/os/CpuUsageInfo;->mTotal:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    return-void
.end method
