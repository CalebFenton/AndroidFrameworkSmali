.class public Landroid/federatedcompute/common/ScheduleFederatedComputeRequest$Builder;
.super Ljava/lang/Object;
.source "ScheduleFederatedComputeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/federatedcompute/common/ScheduleFederatedComputeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mTrainingOptions:Landroid/federatedcompute/common/TrainingOptions;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/federatedcompute/common/ScheduleFederatedComputeRequest$Builder;->mBuilderFieldsSet:J

    .line 95
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 116
    iget-wide v0, p0, Landroid/federatedcompute/common/ScheduleFederatedComputeRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 120
    return-void

    .line 117
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/federatedcompute/common/ScheduleFederatedComputeRequest;
    .registers 5

    .line 107
    invoke-direct {p0}, Landroid/federatedcompute/common/ScheduleFederatedComputeRequest$Builder;->checkNotUsed()V

    .line 108
    iget-wide v0, p0, Landroid/federatedcompute/common/ScheduleFederatedComputeRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/federatedcompute/common/ScheduleFederatedComputeRequest$Builder;->mBuilderFieldsSet:J

    .line 110
    new-instance v0, Landroid/federatedcompute/common/ScheduleFederatedComputeRequest;

    iget-object v1, p0, Landroid/federatedcompute/common/ScheduleFederatedComputeRequest$Builder;->mTrainingOptions:Landroid/federatedcompute/common/TrainingOptions;

    invoke-direct {v0, v1}, Landroid/federatedcompute/common/ScheduleFederatedComputeRequest;-><init>(Landroid/federatedcompute/common/TrainingOptions;)V

    .line 112
    .local v0, "o":Landroid/federatedcompute/common/ScheduleFederatedComputeRequest;
    return-object v0
.end method

.method public blacklist setTrainingOptions(Landroid/federatedcompute/common/TrainingOptions;)Landroid/federatedcompute/common/ScheduleFederatedComputeRequest$Builder;
    .registers 6
    .param p1, "value"    # Landroid/federatedcompute/common/TrainingOptions;

    .line 99
    invoke-direct {p0}, Landroid/federatedcompute/common/ScheduleFederatedComputeRequest$Builder;->checkNotUsed()V

    .line 100
    iget-wide v0, p0, Landroid/federatedcompute/common/ScheduleFederatedComputeRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/federatedcompute/common/ScheduleFederatedComputeRequest$Builder;->mBuilderFieldsSet:J

    .line 101
    iput-object p1, p0, Landroid/federatedcompute/common/ScheduleFederatedComputeRequest$Builder;->mTrainingOptions:Landroid/federatedcompute/common/TrainingOptions;

    .line 102
    return-object p0
.end method
