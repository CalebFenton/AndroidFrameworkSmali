.class public final Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;
.super Ljava/lang/Object;
.source "TrainingExamplesOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

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
.method public constructor whitelist <init>()V
    .registers 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;->mBuilderFieldsSet:J

    .line 107
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 147
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 151
    return-void

    .line 148
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addTrainingExampleRecord(Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;)Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;
    .registers 3
    .param p1, "value"    # Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;

    .line 128
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;->mTrainingExampleRecords:Ljava/util/List;

    if-nez v0, :cond_c

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;->setTrainingExampleRecords(Ljava/util/List;)Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;

    .line 130
    :cond_c
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;->mTrainingExampleRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-object p0
.end method

.method public whitelist build()Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;
    .registers 5

    .line 136
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;->checkNotUsed()V

    .line 137
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;->mBuilderFieldsSet:J

    .line 139
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 140
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;->mTrainingExampleRecords:Ljava/util/List;

    .line 142
    :cond_1b
    new-instance v0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;->mTrainingExampleRecords:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;-><init>(Ljava/util/List;)V

    .line 143
    .local v0, "o":Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput;
    return-object v0
.end method

.method public whitelist setTrainingExampleRecords(Ljava/util/List;)Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;",
            ">;)",
            "Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;"
        }
    .end annotation

    .line 117
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;>;"
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;->checkNotUsed()V

    .line 118
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;->mBuilderFieldsSet:J

    .line 119
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutput$Builder;->mTrainingExampleRecords:Ljava/util/List;

    .line 120
    return-object p0
.end method
