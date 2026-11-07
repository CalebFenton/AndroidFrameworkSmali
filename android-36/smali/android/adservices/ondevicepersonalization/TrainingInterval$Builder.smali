.class public final Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;
.super Ljava/lang/Object;
.source "TrainingInterval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/TrainingInterval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mMinimumInterval:Ljava/time/Duration;

.field private blacklist mSchedulingMode:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;->mBuilderFieldsSet:J

    .line 180
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 231
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 235
    return-void

    .line 232
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/ondevicepersonalization/TrainingInterval;
    .registers 7

    .line 217
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;->checkNotUsed()V

    .line 218
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;->mBuilderFieldsSet:J

    .line 220
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 221
    const/4 v0, 0x1

    iput v0, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;->mSchedulingMode:I

    .line 223
    :cond_18
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_25

    .line 224
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;->mMinimumInterval:Ljava/time/Duration;

    .line 226
    :cond_25
    new-instance v0, Landroid/adservices/ondevicepersonalization/TrainingInterval;

    iget v1, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;->mSchedulingMode:I

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;->mMinimumInterval:Ljava/time/Duration;

    invoke-direct {v0, v1, v2}, Landroid/adservices/ondevicepersonalization/TrainingInterval;-><init>(ILjava/time/Duration;)V

    .line 227
    .local v0, "o":Landroid/adservices/ondevicepersonalization/TrainingInterval;
    return-object v0
.end method

.method public whitelist setMinimumInterval(Ljava/time/Duration;)Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;
    .registers 6
    .param p1, "value"    # Ljava/time/Duration;

    .line 209
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;->checkNotUsed()V

    .line 210
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;->mBuilderFieldsSet:J

    .line 211
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;->mMinimumInterval:Ljava/time/Duration;

    .line 212
    return-object p0
.end method

.method public whitelist setSchedulingMode(I)Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 189
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;->checkNotUsed()V

    .line 190
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;->mBuilderFieldsSet:J

    .line 191
    iput p1, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;->mSchedulingMode:I

    .line 192
    return-object p0
.end method
