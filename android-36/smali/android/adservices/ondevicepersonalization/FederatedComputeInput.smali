.class public final Landroid/adservices/ondevicepersonalization/FederatedComputeInput;
.super Ljava/lang/Object;
.source "FederatedComputeInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/FederatedComputeInput$Builder;
    }
.end annotation


# instance fields
.field private blacklist mPopulationName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "populationName"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeInput;->mPopulationName:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeInput;->mPopulationName:Ljava/lang/String;

    .line 50
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeInput;->mPopulationName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
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

    check-cast v0, Landroid/adservices/ondevicepersonalization/FederatedComputeInput;

    .line 76
    .local v0, "that":Landroid/adservices/ondevicepersonalization/FederatedComputeInput;
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeInput;->mPopulationName:Ljava/lang/String;

    iget-object v2, v0, Landroid/adservices/ondevicepersonalization/FederatedComputeInput;->mPopulationName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 72
    .end local v0    # "that":Landroid/adservices/ondevicepersonalization/FederatedComputeInput;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPopulationName()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeInput;->mPopulationName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 85
    const/4 v0, 0x1

    .line 86
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeInput;->mPopulationName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 87
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    return v1
.end method
