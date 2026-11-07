.class public final Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;
.super Ljava/lang/Object;
.source "FederatedComputeScheduleRequest.java"


# instance fields
.field private blacklist mParams:Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$Params;

.field private blacklist mPopulationName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$Params;Ljava/lang/String;)V
    .registers 6
    .param p1, "params"    # Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$Params;
    .param p2, "populationName"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;->mParams:Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$Params;

    .line 60
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;->mParams:Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$Params;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 61
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;->mPopulationName:Ljava/lang/String;

    .line 62
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;->mPopulationName:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 89
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 90
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 92
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;

    .line 94
    .local v2, "that":Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;
    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;->mParams:Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$Params;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;->mParams:Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$Params;

    .line 95
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;->mPopulationName:Ljava/lang/String;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;->mPopulationName:Ljava/lang/String;

    .line 96
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 94
    :goto_2b
    return v0

    .line 90
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public blacklist getParams()Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$Params;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;->mParams:Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$Params;

    return-object v0
.end method

.method public blacklist getPopulationName()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;->mPopulationName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 105
    const/4 v0, 0x1

    .line 106
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;->mParams:Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$Params;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 107
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;->mPopulationName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 108
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method
