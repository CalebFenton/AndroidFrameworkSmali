.class public final Landroid/os/health/TimerStat;
.super Ljava/lang/Object;
.source "TimerStat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCount:I

.field private greylist-max-o mTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Landroid/os/health/TimerStat$1;

    invoke-direct {v0}, Landroid/os/health/TimerStat$1;-><init>()V

    sput-object v0, Landroid/os/health/TimerStat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor whitelist <init>(IJ)V
    .registers 4
    .param p1, "count"    # I
    .param p2, "time"    # J

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Landroid/os/health/TimerStat;->mCount:I

    .line 62
    iput-wide p2, p0, Landroid/os/health/TimerStat;->mTime:J

    .line 63
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/health/TimerStat;->mCount:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/health/TimerStat;->mTime:J

    .line 72
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCount()I
    .registers 2

    .line 100
    iget v0, p0, Landroid/os/health/TimerStat;->mCount:I

    return v0
.end method

.method public whitelist getTime()J
    .registers 3

    .line 114
    iget-wide v0, p0, Landroid/os/health/TimerStat;->mTime:J

    return-wide v0
.end method

.method public whitelist setCount(I)V
    .registers 2
    .param p1, "count"    # I

    .line 93
    iput p1, p0, Landroid/os/health/TimerStat;->mCount:I

    .line 94
    return-void
.end method

.method public whitelist setTime(J)V
    .registers 3
    .param p1, "time"    # J

    .line 107
    iput-wide p1, p0, Landroid/os/health/TimerStat;->mTime:J

    .line 108
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 85
    iget v0, p0, Landroid/os/health/TimerStat;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-wide v0, p0, Landroid/os/health/TimerStat;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    return-void
.end method
