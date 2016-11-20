.class public Landroid/os/health/HealthStatsParceler;
.super Ljava/lang/Object;
.source "HealthStatsParceler.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/health/HealthStatsParceler$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/health/HealthStatsParceler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHealthStats:Landroid/os/health/HealthStats;

.field private mWriter:Landroid/os/health/HealthStatsWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 43
    new-instance v0, Landroid/os/health/HealthStatsParceler$1;

    #@2
    invoke-direct {v0}, Landroid/os/health/HealthStatsParceler$1;-><init>()V

    #@5
    .line 42
    sput-object v0, Landroid/os/health/HealthStatsParceler;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    new-instance v0, Landroid/os/health/HealthStats;

    #@5
    invoke-direct {v0, p1}, Landroid/os/health/HealthStats;-><init>(Landroid/os/Parcel;)V

    #@8
    iput-object v0, p0, Landroid/os/health/HealthStatsParceler;->mHealthStats:Landroid/os/health/HealthStats;

    #@a
    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/os/health/HealthStatsWriter;)V
    .locals 0
    .param p1, "writer"    # Landroid/os/health/HealthStatsWriter;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    iput-object p1, p0, Landroid/os/health/HealthStatsParceler;->mWriter:Landroid/os/health/HealthStatsWriter;

    #@5
    .line 53
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

.method public getHealthStats()Landroid/os/health/HealthStats;
    .locals 2

    #@0
    .prologue
    .line 76
    iget-object v1, p0, Landroid/os/health/HealthStatsParceler;->mWriter:Landroid/os/health/HealthStatsWriter;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 77
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v0

    #@8
    .line 78
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v1, p0, Landroid/os/health/HealthStatsParceler;->mWriter:Landroid/os/health/HealthStatsWriter;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/health/HealthStatsWriter;->flattenToParcel(Landroid/os/Parcel;)V

    #@d
    .line 79
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@11
    .line 80
    new-instance v1, Landroid/os/health/HealthStats;

    #@13
    invoke-direct {v1, v0}, Landroid/os/health/HealthStats;-><init>(Landroid/os/Parcel;)V

    #@16
    iput-object v1, p0, Landroid/os/health/HealthStatsParceler;->mHealthStats:Landroid/os/health/HealthStats;

    #@18
    .line 81
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 84
    .end local v0    # "parcel":Landroid/os/Parcel;
    :cond_0
    iget-object v1, p0, Landroid/os/health/HealthStatsParceler;->mHealthStats:Landroid/os/health/HealthStats;

    #@1d
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Landroid/os/health/HealthStatsParceler;->mWriter:Landroid/os/health/HealthStatsWriter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 68
    iget-object v0, p0, Landroid/os/health/HealthStatsParceler;->mWriter:Landroid/os/health/HealthStatsWriter;

    #@6
    invoke-virtual {v0, p1}, Landroid/os/health/HealthStatsWriter;->flattenToParcel(Landroid/os/Parcel;)V

    #@9
    .line 65
    return-void

    #@a
    .line 70
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v1, "Can not re-parcel HealthStatsParceler that was constructed from a Parcel"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
.end method
