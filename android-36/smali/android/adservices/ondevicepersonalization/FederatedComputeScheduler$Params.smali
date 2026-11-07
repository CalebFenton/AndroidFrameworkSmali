.class public Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$Params;
.super Ljava/lang/Object;
.source "FederatedComputeScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field private final blacklist mTrainingInterval:Landroid/adservices/ondevicepersonalization/TrainingInterval;


# direct methods
.method public constructor whitelist <init>(Landroid/adservices/ondevicepersonalization/TrainingInterval;)V
    .registers 2
    .param p1, "trainingInterval"    # Landroid/adservices/ondevicepersonalization/TrainingInterval;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$Params;->mTrainingInterval:Landroid/adservices/ondevicepersonalization/TrainingInterval;

    .line 337
    return-void
.end method


# virtual methods
.method public whitelist getTrainingInterval()Landroid/adservices/ondevicepersonalization/TrainingInterval;
    .registers 2

    .line 341
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$Params;->mTrainingInterval:Landroid/adservices/ondevicepersonalization/TrainingInterval;

    return-object v0
.end method
