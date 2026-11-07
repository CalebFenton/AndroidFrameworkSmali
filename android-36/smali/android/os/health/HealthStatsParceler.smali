.class public Landroid/os/health/HealthStatsParceler;
.super Ljava/lang/Object;
.source "HealthStatsParceler.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-r CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/health/HealthStatsParceler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mHealthStats:Landroid/os/health/HealthStats;

.field private greylist-max-o mWriter:Landroid/os/health/HealthStatsWriter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Landroid/os/health/HealthStatsParceler$1;

    invoke-direct {v0}, Landroid/os/health/HealthStatsParceler$1;-><init>()V

    sput-object v0, Landroid/os/health/HealthStatsParceler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/os/health/HealthStats;

    invoke-direct {v0, p1}, Landroid/os/health/HealthStats;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/os/health/HealthStatsParceler;->mHealthStats:Landroid/os/health/HealthStats;

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/health/HealthStatsWriter;)V
    .registers 2
    .param p1, "writer"    # Landroid/os/health/HealthStatsWriter;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/os/health/HealthStatsParceler;->mWriter:Landroid/os/health/HealthStatsWriter;

    .line 56
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHealthStats()Landroid/os/health/HealthStats;
    .registers 3

    .line 77
    iget-object v0, p0, Landroid/os/health/HealthStatsParceler;->mWriter:Landroid/os/health/HealthStatsWriter;

    if-eqz v0, :cond_1b

    .line 78
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 79
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v1, p0, Landroid/os/health/HealthStatsParceler;->mWriter:Landroid/os/health/HealthStatsWriter;

    invoke-virtual {v1, v0}, Landroid/os/health/HealthStatsWriter;->flattenToParcel(Landroid/os/Parcel;)V

    .line 80
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    new-instance v1, Landroid/os/health/HealthStats;

    invoke-direct {v1, v0}, Landroid/os/health/HealthStats;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/os/health/HealthStatsParceler;->mHealthStats:Landroid/os/health/HealthStats;

    .line 82
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 85
    .end local v0    # "parcel":Landroid/os/Parcel;
    :cond_1b
    iget-object v0, p0, Landroid/os/health/HealthStatsParceler;->mHealthStats:Landroid/os/health/HealthStats;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 68
    iget-object v0, p0, Landroid/os/health/HealthStatsParceler;->mWriter:Landroid/os/health/HealthStatsWriter;

    if-eqz v0, :cond_a

    .line 69
    iget-object v0, p0, Landroid/os/health/HealthStatsParceler;->mWriter:Landroid/os/health/HealthStatsWriter;

    invoke-virtual {v0, p1}, Landroid/os/health/HealthStatsWriter;->flattenToParcel(Landroid/os/Parcel;)V

    .line 74
    return-void

    .line 71
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can not re-parcel HealthStatsParceler that was constructed from a Parcel"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
