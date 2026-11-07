.class public final Landroid/service/voice/VisualQueryDetectedResult$Builder;
.super Ljava/lang/Object;
.source "VisualQueryDetectedResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VisualQueryDetectedResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAccessibilityDetectionData:[B

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mPartialQuery:Ljava/lang/String;

.field private blacklist mSpeakerId:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 284
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 349
    iget-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 353
    return-void

    .line 350
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/service/voice/VisualQueryDetectedResult;
    .registers 7

    .line 329
    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetectedResult$Builder;->checkNotUsed()V

    .line 330
    iget-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 332
    iget-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 333
    invoke-static {}, Landroid/service/voice/VisualQueryDetectedResult;->-$$Nest$smdefaultPartialQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mPartialQuery:Ljava/lang/String;

    .line 335
    :cond_1b
    iget-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    .line 336
    invoke-static {}, Landroid/service/voice/VisualQueryDetectedResult;->-$$Nest$smdefaultSpeakerId()I

    move-result v0

    iput v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mSpeakerId:I

    .line 338
    :cond_2a
    iget-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_39

    .line 339
    invoke-static {}, Landroid/service/voice/VisualQueryDetectedResult;->-$$Nest$smdefaultAccessibilityDetectionData()[B

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mAccessibilityDetectionData:[B

    .line 341
    :cond_39
    new-instance v0, Landroid/service/voice/VisualQueryDetectedResult;

    iget-object v1, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mPartialQuery:Ljava/lang/String;

    iget v2, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mSpeakerId:I

    iget-object v3, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mAccessibilityDetectionData:[B

    invoke-direct {v0, v1, v2, v3}, Landroid/service/voice/VisualQueryDetectedResult;-><init>(Ljava/lang/String;I[B)V

    .line 345
    .local v0, "o":Landroid/service/voice/VisualQueryDetectedResult;
    return-object v0
.end method

.method public varargs whitelist setAccessibilityDetectionData([B)Landroid/service/voice/VisualQueryDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # [B

    .line 320
    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetectedResult$Builder;->checkNotUsed()V

    .line 321
    iget-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 322
    iput-object p1, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mAccessibilityDetectionData:[B

    .line 323
    return-object p0
.end method

.method public whitelist setPartialQuery(Ljava/lang/String;)Landroid/service/voice/VisualQueryDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 292
    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetectedResult$Builder;->checkNotUsed()V

    .line 293
    iget-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 294
    iput-object p1, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mPartialQuery:Ljava/lang/String;

    .line 295
    return-object p0
.end method

.method public whitelist setSpeakerId(I)Landroid/service/voice/VisualQueryDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 306
    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetectedResult$Builder;->checkNotUsed()V

    .line 307
    iget-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 308
    iput p1, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mSpeakerId:I

    .line 309
    return-object p0
.end method
