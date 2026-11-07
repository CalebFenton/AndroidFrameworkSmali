.class public final Landroid/federatedcompute/common/TrainingOptions$Builder;
.super Ljava/lang/Object;
.source "TrainingOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/federatedcompute/common/TrainingOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mContextData:[B

.field private blacklist mOwnerComponentName:Landroid/content/ComponentName;

.field private blacklist mPopulationName:Ljava/lang/String;

.field private blacklist mServerAddress:Ljava/lang/String;

.field private blacklist mTrainingInterval:Landroid/federatedcompute/common/TrainingInterval;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mBuilderFieldsSet:J

    .line 247
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 335
    iget-wide v0, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 339
    return-void

    .line 336
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/federatedcompute/common/TrainingOptions;
    .registers 9

    .line 309
    invoke-direct {p0}, Landroid/federatedcompute/common/TrainingOptions$Builder;->checkNotUsed()V

    .line 310
    iget-wide v0, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mBuilderFieldsSet:J

    .line 312
    iget-wide v0, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, ""

    if-nez v0, :cond_19

    .line 313
    iput-object v1, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mPopulationName:Ljava/lang/String;

    .line 315
    :cond_19
    iget-wide v4, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x2

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_24

    .line 316
    iput-object v1, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mServerAddress:Ljava/lang/String;

    .line 318
    :cond_24
    iget-wide v0, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_30

    .line 319
    iput-object v1, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mOwnerComponentName:Landroid/content/ComponentName;

    .line 321
    :cond_30
    iget-wide v4, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_3b

    .line 322
    iput-object v1, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mTrainingInterval:Landroid/federatedcompute/common/TrainingInterval;

    .line 324
    :cond_3b
    new-instance v2, Landroid/federatedcompute/common/TrainingOptions;

    iget-object v3, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mPopulationName:Ljava/lang/String;

    iget-object v4, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mServerAddress:Ljava/lang/String;

    iget-object v5, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mOwnerComponentName:Landroid/content/ComponentName;

    iget-object v6, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mTrainingInterval:Landroid/federatedcompute/common/TrainingInterval;

    iget-object v7, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mContextData:[B

    invoke-direct/range {v2 .. v7}, Landroid/federatedcompute/common/TrainingOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/federatedcompute/common/TrainingInterval;[B)V

    .line 331
    .local v2, "o":Landroid/federatedcompute/common/TrainingOptions;
    return-object v2
.end method

.method public varargs blacklist setContextData([B)Landroid/federatedcompute/common/TrainingOptions$Builder;
    .registers 6
    .param p1, "value"    # [B

    .line 301
    invoke-direct {p0}, Landroid/federatedcompute/common/TrainingOptions$Builder;->checkNotUsed()V

    .line 302
    iget-wide v0, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mBuilderFieldsSet:J

    .line 303
    iput-object p1, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mContextData:[B

    .line 304
    return-object p0
.end method

.method public blacklist setOwnerComponentName(Landroid/content/ComponentName;)Landroid/federatedcompute/common/TrainingOptions$Builder;
    .registers 6
    .param p1, "value"    # Landroid/content/ComponentName;

    .line 281
    invoke-direct {p0}, Landroid/federatedcompute/common/TrainingOptions$Builder;->checkNotUsed()V

    .line 282
    iget-wide v0, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mBuilderFieldsSet:J

    .line 283
    iput-object p1, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mOwnerComponentName:Landroid/content/ComponentName;

    .line 284
    return-object p0
.end method

.method public blacklist setPopulationName(Ljava/lang/String;)Landroid/federatedcompute/common/TrainingOptions$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 255
    invoke-direct {p0}, Landroid/federatedcompute/common/TrainingOptions$Builder;->checkNotUsed()V

    .line 256
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 257
    iget-wide v0, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mBuilderFieldsSet:J

    .line 258
    iput-object p1, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mPopulationName:Ljava/lang/String;

    .line 259
    return-object p0
.end method

.method public blacklist setServerAddress(Ljava/lang/String;)Landroid/federatedcompute/common/TrainingOptions$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 268
    invoke-direct {p0}, Landroid/federatedcompute/common/TrainingOptions$Builder;->checkNotUsed()V

    .line 269
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 270
    iget-wide v0, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mBuilderFieldsSet:J

    .line 271
    iput-object p1, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mServerAddress:Ljava/lang/String;

    .line 272
    return-object p0
.end method

.method public blacklist setTrainingInterval(Landroid/federatedcompute/common/TrainingInterval;)Landroid/federatedcompute/common/TrainingOptions$Builder;
    .registers 6
    .param p1, "value"    # Landroid/federatedcompute/common/TrainingInterval;

    .line 289
    invoke-direct {p0}, Landroid/federatedcompute/common/TrainingOptions$Builder;->checkNotUsed()V

    .line 290
    iget-wide v0, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mBuilderFieldsSet:J

    .line 291
    iput-object p1, p0, Landroid/federatedcompute/common/TrainingOptions$Builder;->mTrainingInterval:Landroid/federatedcompute/common/TrainingInterval;

    .line 292
    return-object p0
.end method
