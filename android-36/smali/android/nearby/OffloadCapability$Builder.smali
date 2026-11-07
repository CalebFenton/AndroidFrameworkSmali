.class public final Landroid/nearby/OffloadCapability$Builder;
.super Ljava/lang/Object;
.source "OffloadCapability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/OffloadCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFastPairSupported:Z

.field private blacklist mNearbyShareSupported:Z

.field private blacklist mVersion:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/nearby/OffloadCapability;
    .registers 7

    .line 159
    new-instance v0, Landroid/nearby/OffloadCapability;

    iget-boolean v1, p0, Landroid/nearby/OffloadCapability$Builder;->mFastPairSupported:Z

    iget-boolean v2, p0, Landroid/nearby/OffloadCapability$Builder;->mNearbyShareSupported:Z

    iget-wide v3, p0, Landroid/nearby/OffloadCapability$Builder;->mVersion:J

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/nearby/OffloadCapability;-><init>(ZZJLandroid/nearby/OffloadCapability-IA;)V

    return-object v0
.end method

.method public whitelist setFastPairSupported(Z)Landroid/nearby/OffloadCapability$Builder;
    .registers 2
    .param p1, "fastPairSupported"    # Z

    .line 128
    iput-boolean p1, p0, Landroid/nearby/OffloadCapability$Builder;->mFastPairSupported:Z

    .line 129
    return-object p0
.end method

.method public whitelist setNearbyShareSupported(Z)Landroid/nearby/OffloadCapability$Builder;
    .registers 2
    .param p1, "nearbyShareSupported"    # Z

    .line 139
    iput-boolean p1, p0, Landroid/nearby/OffloadCapability$Builder;->mNearbyShareSupported:Z

    .line 140
    return-object p0
.end method

.method public whitelist setVersion(J)Landroid/nearby/OffloadCapability$Builder;
    .registers 3
    .param p1, "version"    # J

    .line 150
    iput-wide p1, p0, Landroid/nearby/OffloadCapability$Builder;->mVersion:J

    .line 151
    return-object p0
.end method
