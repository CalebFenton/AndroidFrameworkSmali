.class public final Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleResponse;
.super Ljava/lang/Object;
.source "FederatedComputeScheduleResponse.java"


# instance fields
.field private blacklist mFederatedComputeScheduleRequest:Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;


# direct methods
.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;)V
    .registers 5
    .param p1, "federatedComputeScheduleRequest"    # Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleResponse;->mFederatedComputeScheduleRequest:Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;

    .line 53
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleResponse;->mFederatedComputeScheduleRequest:Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;

    invoke-static {v0, v1, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 71
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 72
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 74
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleResponse;

    .line 76
    .local v0, "that":Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleResponse;
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleResponse;->mFederatedComputeScheduleRequest:Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;

    iget-object v2, v0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleResponse;->mFederatedComputeScheduleRequest:Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;

    .line 77
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 76
    return v1

    .line 72
    .end local v0    # "that":Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleResponse;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFederatedComputeScheduleRequest()Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleResponse;->mFederatedComputeScheduleRequest:Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 87
    const/4 v0, 0x1

    .line 88
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleResponse;->mFederatedComputeScheduleRequest:Landroid/adservices/ondevicepersonalization/FederatedComputeScheduleRequest;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 89
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    return v1
.end method
