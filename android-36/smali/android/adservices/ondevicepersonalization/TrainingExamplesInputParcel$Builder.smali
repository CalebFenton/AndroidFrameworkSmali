.class public final Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;
.super Ljava/lang/Object;
.source "TrainingExamplesInputParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mCollectionName:Ljava/lang/String;

.field private blacklist mPopulationName:Ljava/lang/String;

.field private blacklist mResumptionToken:[B

.field private blacklist mTaskName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mBuilderFieldsSet:J

    .line 180
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 246
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 250
    return-void

    .line 247
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;
    .registers 9

    .line 227
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->checkNotUsed()V

    .line 228
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mBuilderFieldsSet:J

    .line 230
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, ""

    if-nez v0, :cond_19

    .line 231
    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mPopulationName:Ljava/lang/String;

    .line 233
    :cond_19
    iget-wide v4, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x2

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_24

    .line 234
    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mTaskName:Ljava/lang/String;

    .line 236
    :cond_24
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mResumptionToken:[B

    .line 239
    :cond_30
    new-instance v0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mPopulationName:Ljava/lang/String;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mTaskName:Ljava/lang/String;

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mResumptionToken:[B

    iget-object v4, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mCollectionName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 242
    .local v0, "o":Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;
    return-object v0
.end method

.method public blacklist setCollectionName(Ljava/lang/String;)Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 219
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->checkNotUsed()V

    .line 220
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mBuilderFieldsSet:J

    .line 221
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mCollectionName:Ljava/lang/String;

    .line 222
    return-object p0
.end method

.method public blacklist setPopulationName(Ljava/lang/String;)Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 187
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->checkNotUsed()V

    .line 188
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mBuilderFieldsSet:J

    .line 189
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mPopulationName:Ljava/lang/String;

    .line 190
    return-object p0
.end method

.method public varargs blacklist setResumptionToken([B)Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;
    .registers 6
    .param p1, "value"    # [B

    .line 210
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->checkNotUsed()V

    .line 211
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mBuilderFieldsSet:J

    .line 212
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mResumptionToken:[B

    .line 213
    return-object p0
.end method

.method public blacklist setTaskName(Ljava/lang/String;)Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 199
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->checkNotUsed()V

    .line 200
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mBuilderFieldsSet:J

    .line 201
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;->mTaskName:Ljava/lang/String;

    .line 202
    return-object p0
.end method
