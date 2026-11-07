.class public Landroid/federatedcompute/common/ScheduleFederatedComputeRequest;
.super Ljava/lang/Object;
.source "ScheduleFederatedComputeRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/federatedcompute/common/ScheduleFederatedComputeRequest$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mTrainingOptions:Landroid/federatedcompute/common/TrainingOptions;


# direct methods
.method constructor blacklist <init>(Landroid/federatedcompute/common/TrainingOptions;)V
    .registers 5
    .param p1, "trainingOptions"    # Landroid/federatedcompute/common/TrainingOptions;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/federatedcompute/common/ScheduleFederatedComputeRequest;->mTrainingOptions:Landroid/federatedcompute/common/TrainingOptions;

    .line 50
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/federatedcompute/common/ScheduleFederatedComputeRequest;->mTrainingOptions:Landroid/federatedcompute/common/TrainingOptions;

    invoke-static {v0, v1, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 67
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 68
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 70
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/federatedcompute/common/ScheduleFederatedComputeRequest;

    .line 72
    .local v0, "that":Landroid/federatedcompute/common/ScheduleFederatedComputeRequest;
    iget-object v1, p0, Landroid/federatedcompute/common/ScheduleFederatedComputeRequest;->mTrainingOptions:Landroid/federatedcompute/common/TrainingOptions;

    iget-object v2, v0, Landroid/federatedcompute/common/ScheduleFederatedComputeRequest;->mTrainingOptions:Landroid/federatedcompute/common/TrainingOptions;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 68
    .end local v0    # "that":Landroid/federatedcompute/common/ScheduleFederatedComputeRequest;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTrainingOptions()Landroid/federatedcompute/common/TrainingOptions;
    .registers 2

    .line 57
    iget-object v0, p0, Landroid/federatedcompute/common/ScheduleFederatedComputeRequest;->mTrainingOptions:Landroid/federatedcompute/common/TrainingOptions;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 81
    const/4 v0, 0x1

    .line 82
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/federatedcompute/common/ScheduleFederatedComputeRequest;->mTrainingOptions:Landroid/federatedcompute/common/TrainingOptions;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 83
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    return v1
.end method
