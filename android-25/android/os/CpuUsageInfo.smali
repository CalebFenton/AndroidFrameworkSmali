.class public final Landroid/os/CpuUsageInfo;
.super Ljava/lang/Object;
.source "CpuUsageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CpuUsageInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/CpuUsageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActive:J

.field private mTotal:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 26
    new-instance v0, Landroid/os/CpuUsageInfo$1;

    #@2
    invoke-direct {v0}, Landroid/os/CpuUsageInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/os/CpuUsageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 22
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "activeTime"    # J
    .param p3, "totalTime"    # J

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    iput-wide p1, p0, Landroid/os/CpuUsageInfo;->mActive:J

    #@5
    .line 40
    iput-wide p3, p0, Landroid/os/CpuUsageInfo;->mTotal:J

    #@7
    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    invoke-direct {p0, p1}, Landroid/os/CpuUsageInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 43
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/CpuUsageInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/os/CpuUsageInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Landroid/os/CpuUsageInfo;->mActive:J

    #@6
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Landroid/os/CpuUsageInfo;->mTotal:J

    #@c
    .line 77
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 68
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getActive()J
    .locals 2

    #@0
    .prologue
    .line 53
    iget-wide v0, p0, Landroid/os/CpuUsageInfo;->mActive:J

    #@2
    return-wide v0
.end method

.method public getTotal()J
    .locals 2

    #@0
    .prologue
    .line 63
    iget-wide v0, p0, Landroid/os/CpuUsageInfo;->mTotal:J

    #@2
    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 73
    iget-wide v0, p0, Landroid/os/CpuUsageInfo;->mActive:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 74
    iget-wide v0, p0, Landroid/os/CpuUsageInfo;->mTotal:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 72
    return-void
.end method
