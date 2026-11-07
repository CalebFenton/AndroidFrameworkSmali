.class public final Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;
.super Ljava/lang/Object;
.source "TrainingExampleRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mResumptionToken:[B

.field private blacklist mTrainingExample:[B


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;->mBuilderFieldsSet:J

    .line 147
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 193
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 197
    return-void

    .line 194
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;
    .registers 9

    .line 177
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;->checkNotUsed()V

    .line 178
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;->mBuilderFieldsSet:J

    .line 180
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 181
    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;->mTrainingExample:[B

    .line 183
    :cond_18
    iget-wide v4, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x2

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_23

    .line 184
    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;->mResumptionToken:[B

    .line 186
    :cond_23
    new-instance v0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;->mTrainingExample:[B

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;->mResumptionToken:[B

    invoke-direct {v0, v1, v2}, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;-><init>([B[B)V

    .line 189
    .local v0, "o":Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;
    return-object v0
.end method

.method public varargs whitelist setResumptionToken([B)Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;
    .registers 6
    .param p1, "value"    # [B

    .line 169
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;->checkNotUsed()V

    .line 170
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;->mBuilderFieldsSet:J

    .line 171
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;->mResumptionToken:[B

    .line 172
    return-object p0
.end method

.method public varargs whitelist setTrainingExample([B)Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;
    .registers 6
    .param p1, "value"    # [B

    .line 156
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;->checkNotUsed()V

    .line 157
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;->mBuilderFieldsSet:J

    .line 158
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;->mTrainingExample:[B

    .line 159
    return-object p0
.end method
