.class public Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
.super Landroid/telephony/ims/feature/ImsFeature$Capabilities;
.source "RcsFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/RcsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RcsImsCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities$RcsImsCapabilityFlag;
    }
.end annotation


# static fields
.field public static final blacklist CAPABILITY_TYPE_MAX:I = 0x3

.field public static final whitelist CAPABILITY_TYPE_NONE:I = 0x0

.field public static final whitelist CAPABILITY_TYPE_OPTIONS_UCE:I = 0x1

.field public static final whitelist CAPABILITY_TYPE_PRESENCE_UCE:I = 0x2


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "capabilities"    # I

    .line 247
    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>(I)V

    .line 248
    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .registers 3
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 255
    invoke-virtual {p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->getMask()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>(I)V

    .line 256
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;Landroid/telephony/ims/feature/RcsFeature-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    return-void
.end method


# virtual methods
.method public whitelist addCapabilities(I)V
    .registers 2
    .param p1, "capabilities"    # I

    .line 260
    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    .line 261
    return-void
.end method

.method public whitelist isCapable(I)Z
    .registers 3
    .param p1, "capabilities"    # I

    .line 270
    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v0

    return v0
.end method

.method public whitelist removeCapabilities(I)V
    .registers 2
    .param p1, "capabilities"    # I

    .line 265
    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->removeCapabilities(I)V

    .line 266
    return-void
.end method
