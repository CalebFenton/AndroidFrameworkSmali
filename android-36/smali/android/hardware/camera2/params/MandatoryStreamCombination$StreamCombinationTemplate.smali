.class final Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
.super Ljava/lang/Object;
.source "MandatoryStreamCombination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/MandatoryStreamCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamCombinationTemplate"
.end annotation


# instance fields
.field public blacklist mDescription:Ljava/lang/String;

.field public blacklist mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

.field public blacklist mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

.field public blacklist mSubstituteYUV:Z


# direct methods
.method public constructor blacklist <init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V
    .registers 4
    .param p1, "streamTemplates"    # [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .param p2, "description"    # Ljava/lang/String;

    .line 497
    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->NONE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    .line 498
    return-void
.end method

.method public constructor blacklist <init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V
    .registers 5
    .param p1, "streamTemplates"    # [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "reprocessType"    # Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    .line 502
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;Z)V

    .line 503
    return-void
.end method

.method public constructor blacklist <init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;Z)V
    .registers 6
    .param p1, "streamTemplates"    # [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "reprocessType"    # Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;
    .param p4, "substituteYUV"    # Z

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mSubstituteYUV:Z

    .line 513
    iput-object p1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    .line 514
    iput-object p3, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    .line 515
    iput-object p2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    .line 516
    iput-boolean p4, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mSubstituteYUV:Z

    .line 517
    return-void
.end method

.method public constructor blacklist <init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "streamTemplates"    # [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "substituteYUV"    # Z

    .line 507
    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->NONE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;Z)V

    .line 509
    return-void
.end method
