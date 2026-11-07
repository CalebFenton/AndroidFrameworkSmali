.class public final Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;
.super Ljava/lang/Object;
.source "SatelliteSubscriberProvisionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mProvisioned:Z

.field private blacklist mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmProvisioned(Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;->mProvisioned:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscriberInfo(Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;)Landroid/telephony/satellite/SatelliteSubscriberInfo;
    .registers 1

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;
    .registers 2

    .line 82
    new-instance v0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;-><init>(Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;)V

    return-object v0
.end method

.method public blacklist setProvisioned(Z)Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;
    .registers 2
    .param p1, "provisioned"    # Z

    .line 73
    iput-boolean p1, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;->mProvisioned:Z

    .line 74
    return-object p0
.end method

.method public blacklist setSatelliteSubscriberInfo(Landroid/telephony/satellite/SatelliteSubscriberInfo;)Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;
    .registers 2
    .param p1, "satelliteSubscriberInfo"    # Landroid/telephony/satellite/SatelliteSubscriberInfo;

    .line 64
    iput-object p1, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    .line 65
    return-object p0
.end method
