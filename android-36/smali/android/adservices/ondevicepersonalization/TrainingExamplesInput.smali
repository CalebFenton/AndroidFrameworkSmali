.class public final Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;
.super Ljava/lang/Object;
.source "TrainingExamplesInput.java"


# instance fields
.field private blacklist mCollectionName:Ljava/lang/String;

.field private blacklist mPopulationName:Ljava/lang/String;

.field private blacklist mResumptionToken:[B

.field private blacklist mTaskName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;

    .line 57
    nop

    .line 58
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->getPopulationName()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->getTaskName()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->getResumptionToken()[B

    move-result-object v2

    .line 61
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->getCollectionName()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .registers 6
    .param p1, "populationName"    # Ljava/lang/String;
    .param p2, "taskName"    # Ljava/lang/String;
    .param p3, "resumptionToken"    # [B
    .param p4, "collectionName"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mPopulationName:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mTaskName:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mResumptionToken:[B

    .line 85
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mPopulationName:Ljava/lang/String;

    .line 86
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mTaskName:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mResumptionToken:[B

    .line 88
    iput-object p4, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mCollectionName:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 126
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 127
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_40

    .line 129
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;

    .line 131
    .local v2, "that":Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;
    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mPopulationName:Ljava/lang/String;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mPopulationName:Ljava/lang/String;

    .line 132
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mTaskName:Ljava/lang/String;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mTaskName:Ljava/lang/String;

    .line 133
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mResumptionToken:[B

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mResumptionToken:[B

    .line 134
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mCollectionName:Ljava/lang/String;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mCollectionName:Ljava/lang/String;

    .line 135
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v1

    .line 131
    :goto_3f
    return v0

    .line 127
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;
    :cond_40
    :goto_40
    return v1
.end method

.method public whitelist getCollectionName()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mCollectionName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPopulationName()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mPopulationName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getResumptionToken()[B
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mResumptionToken:[B

    return-object v0
.end method

.method public whitelist getTaskName()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mTaskName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 140
    const/4 v0, 0x1

    .line 141
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mPopulationName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 142
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mTaskName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 143
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mResumptionToken:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 144
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInput;->mCollectionName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 145
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method
