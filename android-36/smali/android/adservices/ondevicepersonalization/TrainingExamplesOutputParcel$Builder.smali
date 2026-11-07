.class public Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$Builder;
.super Ljava/lang/Object;
.source "TrainingExamplesOutputParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mTrainingExampleRecords:Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<",
            "Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$Builder;->mBuilderFieldsSet:J

    .line 154
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 180
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 184
    return-void

    .line 181
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;
    .registers 5

    .line 168
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$Builder;->checkNotUsed()V

    .line 169
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$Builder;->mBuilderFieldsSet:J

    .line 171
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$Builder;->mTrainingExampleRecords:Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;

    .line 174
    :cond_18
    new-instance v0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$Builder;->mTrainingExampleRecords:Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;

    invoke-direct {v0, v1}, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;-><init>(Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;)V

    .line 176
    .local v0, "o":Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;
    return-object v0
.end method

.method public blacklist setTrainingExampleRecords(Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;)Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<",
            "Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;",
            ">;)",
            "Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$Builder;"
        }
    .end annotation

    .line 160
    .local p1, "value":Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;>;"
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$Builder;->checkNotUsed()V

    .line 161
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$Builder;->mBuilderFieldsSet:J

    .line 162
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$Builder;->mTrainingExampleRecords:Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;

    .line 163
    return-object p0
.end method
