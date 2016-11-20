.class public final Landroid/os/health/TimerStat;
.super Ljava/lang/Object;
.source "TimerStat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/health/TimerStat$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCount:I

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 38
    new-instance v0, Landroid/os/health/TimerStat$1;

    #@2
    invoke-direct {v0}, Landroid/os/health/TimerStat$1;-><init>()V

    #@5
    .line 37
    sput-object v0, Landroid/os/health/TimerStat;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "time"    # J

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    iput p1, p0, Landroid/os/health/TimerStat;->mCount:I

    #@5
    .line 62
    iput-wide p2, p0, Landroid/os/health/TimerStat;->mTime:J

    #@7
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/os/health/TimerStat;->mCount:I

    #@9
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Landroid/os/health/TimerStat;->mTime:J

    #@f
    .line 69
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 78
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 100
    iget v0, p0, Landroid/os/health/TimerStat;->mCount:I

    #@2
    return v0
.end method

.method public getTime()J
    .locals 2

    #@0
    .prologue
    .line 114
    iget-wide v0, p0, Landroid/os/health/TimerStat;->mTime:J

    #@2
    return-wide v0
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    #@0
    .prologue
    .line 93
    iput p1, p0, Landroid/os/health/TimerStat;->mCount:I

    #@2
    .line 92
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    .line 107
    iput-wide p1, p0, Landroid/os/health/TimerStat;->mTime:J

    #@2
    .line 106
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 85
    iget v0, p0, Landroid/os/health/TimerStat;->mCount:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 86
    iget-wide v0, p0, Landroid/os/health/TimerStat;->mTime:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 84
    return-void
.end method
