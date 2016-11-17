.class public Landroid/net/NetworkQuotaInfo;
.super Ljava/lang/Object;
.source "NetworkQuotaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkQuotaInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkQuotaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_LIMIT:J = -0x1L


# instance fields
.field private final mEstimatedBytes:J

.field private final mHardLimitBytes:J

.field private final mSoftLimitBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 72
    new-instance v0, Landroid/net/NetworkQuotaInfo$1;

    #@2
    invoke-direct {v0}, Landroid/net/NetworkQuotaInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/NetworkQuotaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 1
    .param p1, "estimatedBytes"    # J
    .param p3, "softLimitBytes"    # J
    .param p5, "hardLimitBytes"    # J

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    iput-wide p1, p0, Landroid/net/NetworkQuotaInfo;->mEstimatedBytes:J

    #@5
    .line 37
    iput-wide p3, p0, Landroid/net/NetworkQuotaInfo;->mSoftLimitBytes:J

    #@7
    .line 38
    iput-wide p5, p0, Landroid/net/NetworkQuotaInfo;->mHardLimitBytes:J

    #@9
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/net/NetworkQuotaInfo;->mEstimatedBytes:J

    #@9
    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Landroid/net/NetworkQuotaInfo;->mSoftLimitBytes:J

    #@f
    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Landroid/net/NetworkQuotaInfo;->mHardLimitBytes:J

    #@15
    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 62
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getEstimatedBytes()J
    .locals 2

    #@0
    .prologue
    .line 49
    iget-wide v0, p0, Landroid/net/NetworkQuotaInfo;->mEstimatedBytes:J

    #@2
    return-wide v0
.end method

.method public getHardLimitBytes()J
    .locals 2

    #@0
    .prologue
    .line 57
    iget-wide v0, p0, Landroid/net/NetworkQuotaInfo;->mHardLimitBytes:J

    #@2
    return-wide v0
.end method

.method public getSoftLimitBytes()J
    .locals 2

    #@0
    .prologue
    .line 53
    iget-wide v0, p0, Landroid/net/NetworkQuotaInfo;->mSoftLimitBytes:J

    #@2
    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 67
    iget-wide v0, p0, Landroid/net/NetworkQuotaInfo;->mEstimatedBytes:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 68
    iget-wide v0, p0, Landroid/net/NetworkQuotaInfo;->mSoftLimitBytes:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 69
    iget-wide v0, p0, Landroid/net/NetworkQuotaInfo;->mHardLimitBytes:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 66
    return-void
.end method
