.class public final Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;
.super Ljava/lang/Object;
.source "TrainingExamplesOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;
    }
.end annotation


# instance fields
.field private blacklist mTrainingExampleRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p1, "trainingExampleRecords":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    nop

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;->mTrainingExampleRecords:Ljava/util/List;

    .line 55
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;->mTrainingExampleRecords:Ljava/util/List;

    .line 56
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;->mTrainingExampleRecords:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 78
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 79
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 81
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;

    .line 83
    .local v0, "that":Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;->mTrainingExampleRecords:Ljava/util/List;

    iget-object v2, v0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;->mTrainingExampleRecords:Ljava/util/List;

    .line 84
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 83
    return v1

    .line 79
    .end local v0    # "that":Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTrainingExampleRecords()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;->mTrainingExampleRecords:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 93
    const/4 v0, 0x1

    .line 94
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;->mTrainingExampleRecords:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 95
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    return v1
.end method
