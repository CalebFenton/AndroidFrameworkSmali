.class public Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
.super Landroid/telephony/ims/feature/ImsFeature$Capabilities;
.source "MmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/MmTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MmTelCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities$MmTelCapability;
    }
.end annotation


# static fields
.field public static final whitelist CAPABILITY_TYPE_CALL_COMPOSER:I = 0x10

.field public static final whitelist CAPABILITY_TYPE_CALL_COMPOSER_BUSINESS_ONLY:I = 0x20

.field public static final blacklist CAPABILITY_TYPE_MAX:I = 0x21

.field public static final blacklist CAPABILITY_TYPE_NONE:I = 0x0

.field public static final whitelist CAPABILITY_TYPE_SMS:I = 0x8

.field public static final whitelist CAPABILITY_TYPE_UT:I = 0x4

.field public static final whitelist CAPABILITY_TYPE_VIDEO:I = 0x2

.field public static final whitelist CAPABILITY_TYPE_VOICE:I = 0x1


# direct methods
.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 490
    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    .line 491
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "capabilities"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 510
    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>(I)V

    .line 511
    return-void
.end method

.method public constructor whitelist <init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .registers 3
    .param p1, "c"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 498
    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    .line 499
    iget v0, p1, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    iput v0, p0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->mCapabilities:I

    .line 500
    return-void
.end method


# virtual methods
.method public final whitelist addCapabilities(I)V
    .registers 2
    .param p1, "capabilities"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 584
    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    .line 585
    return-void
.end method

.method public final whitelist isCapable(I)Z
    .registers 3
    .param p1, "capabilities"    # I

    .line 603
    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist removeCapabilities(I)V
    .registers 2
    .param p1, "capability"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 593
    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->removeCapabilities(I)V

    .line 594
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MmTel Capabilities - ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 613
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Voice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 615
    const-string v1, " Video: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 617
    const-string v1, " UT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 619
    const-string v1, " SMS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 621
    const-string v1, " CALL_COMPOSER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 623
    const-string v1, " BUSINESS_COMPOSER_ONLY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 625
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
