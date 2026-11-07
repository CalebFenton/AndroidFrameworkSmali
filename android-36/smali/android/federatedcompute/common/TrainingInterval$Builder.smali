.class public final Landroid/federatedcompute/common/TrainingInterval$Builder;
.super Ljava/lang/Object;
.source "TrainingInterval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/federatedcompute/common/TrainingInterval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mMinimumIntervalMillis:J

.field private blacklist mSchedulingMode:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/federatedcompute/common/TrainingInterval$Builder;->mBuilderFieldsSet:J

    .line 218
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 249
    iget-wide v0, p0, Landroid/federatedcompute/common/TrainingInterval$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 253
    return-void

    .line 250
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/federatedcompute/common/TrainingInterval;
    .registers 5

    .line 238
    invoke-direct {p0}, Landroid/federatedcompute/common/TrainingInterval$Builder;->checkNotUsed()V

    .line 239
    iget-wide v0, p0, Landroid/federatedcompute/common/TrainingInterval$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/federatedcompute/common/TrainingInterval$Builder;->mBuilderFieldsSet:J

    .line 241
    iget-wide v0, p0, Landroid/federatedcompute/common/TrainingInterval$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    .line 242
    iput-wide v2, p0, Landroid/federatedcompute/common/TrainingInterval$Builder;->mMinimumIntervalMillis:J

    .line 244
    :cond_17
    new-instance v0, Landroid/federatedcompute/common/TrainingInterval;

    iget v1, p0, Landroid/federatedcompute/common/TrainingInterval$Builder;->mSchedulingMode:I

    iget-wide v2, p0, Landroid/federatedcompute/common/TrainingInterval$Builder;->mMinimumIntervalMillis:J

    invoke-direct {v0, v1, v2, v3}, Landroid/federatedcompute/common/TrainingInterval;-><init>(IJ)V

    .line 245
    .local v0, "o":Landroid/federatedcompute/common/TrainingInterval;
    return-object v0
.end method

.method public blacklist setMinimumIntervalMillis(J)Landroid/federatedcompute/common/TrainingInterval$Builder;
    .registers 7
    .param p1, "value"    # J

    .line 230
    invoke-direct {p0}, Landroid/federatedcompute/common/TrainingInterval$Builder;->checkNotUsed()V

    .line 231
    iget-wide v0, p0, Landroid/federatedcompute/common/TrainingInterval$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/federatedcompute/common/TrainingInterval$Builder;->mBuilderFieldsSet:J

    .line 232
    iput-wide p1, p0, Landroid/federatedcompute/common/TrainingInterval$Builder;->mMinimumIntervalMillis:J

    .line 233
    return-object p0
.end method

.method public blacklist setSchedulingMode(I)Landroid/federatedcompute/common/TrainingInterval$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 222
    invoke-direct {p0}, Landroid/federatedcompute/common/TrainingInterval$Builder;->checkNotUsed()V

    .line 223
    iget-wide v0, p0, Landroid/federatedcompute/common/TrainingInterval$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/federatedcompute/common/TrainingInterval$Builder;->mBuilderFieldsSet:J

    .line 224
    iput p1, p0, Landroid/federatedcompute/common/TrainingInterval$Builder;->mSchedulingMode:I

    .line 225
    return-object p0
.end method
