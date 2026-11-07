.class public final Landroid/location/GalileoIonosphericModel$Builder;
.super Ljava/lang/Object;
.source "GalileoIonosphericModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GalileoIonosphericModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAi0:D

.field private blacklist mAi1:D

.field private blacklist mAi2:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAi0(Landroid/location/GalileoIonosphericModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GalileoIonosphericModel$Builder;->mAi0:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAi1(Landroid/location/GalileoIonosphericModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GalileoIonosphericModel$Builder;->mAi1:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAi2(Landroid/location/GalileoIonosphericModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GalileoIonosphericModel$Builder;->mAi2:D

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/GalileoIonosphericModel;
    .registers 3

    .line 145
    new-instance v0, Landroid/location/GalileoIonosphericModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GalileoIonosphericModel;-><init>(Landroid/location/GalileoIonosphericModel$Builder;Landroid/location/GalileoIonosphericModel-IA;)V

    return-object v0
.end method

.method public blacklist setAi0(D)Landroid/location/GalileoIonosphericModel$Builder;
    .registers 3
    .param p1, "ai0"    # D

    .line 124
    iput-wide p1, p0, Landroid/location/GalileoIonosphericModel$Builder;->mAi0:D

    .line 125
    return-object p0
.end method

.method public blacklist setAi1(D)Landroid/location/GalileoIonosphericModel$Builder;
    .registers 3
    .param p1, "ai1"    # D

    .line 131
    iput-wide p1, p0, Landroid/location/GalileoIonosphericModel$Builder;->mAi1:D

    .line 132
    return-object p0
.end method

.method public blacklist setAi2(D)Landroid/location/GalileoIonosphericModel$Builder;
    .registers 3
    .param p1, "ai2"    # D

    .line 138
    iput-wide p1, p0, Landroid/location/GalileoIonosphericModel$Builder;->mAi2:D

    .line 139
    return-object p0
.end method
