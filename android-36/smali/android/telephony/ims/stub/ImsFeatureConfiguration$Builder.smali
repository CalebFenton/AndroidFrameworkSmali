.class public Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;
.super Ljava/lang/Object;
.source "ImsFeatureConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsFeatureConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field greylist-max-o mConfig:Landroid/telephony/ims/stub/ImsFeatureConfiguration;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->mConfig:Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    .line 101
    return-void
.end method


# virtual methods
.method public whitelist addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I

    .line 112
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->mConfig:Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->addFeature(II)V

    .line 113
    return-object p0
.end method

.method public whitelist build()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->mConfig:Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    return-object v0
.end method
