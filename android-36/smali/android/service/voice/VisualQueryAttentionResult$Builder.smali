.class public final Landroid/service/voice/VisualQueryAttentionResult$Builder;
.super Ljava/lang/Object;
.source "VisualQueryAttentionResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VisualQueryAttentionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mEngagementLevel:I

.field private blacklist mInteractionIntention:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mBuilderFieldsSet:J

    .line 310
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 365
    iget-wide v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 369
    return-void

    .line 366
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/service/voice/VisualQueryAttentionResult;
    .registers 7

    .line 349
    invoke-direct {p0}, Landroid/service/voice/VisualQueryAttentionResult$Builder;->checkNotUsed()V

    .line 350
    iget-wide v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mBuilderFieldsSet:J

    .line 352
    iget-wide v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 353
    invoke-static {}, Landroid/service/voice/VisualQueryAttentionResult;->-$$Nest$smdefaultInteractionIntention()I

    move-result v0

    iput v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mInteractionIntention:I

    .line 355
    :cond_1b
    iget-wide v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    .line 356
    invoke-static {}, Landroid/service/voice/VisualQueryAttentionResult;->-$$Nest$smdefaultEngagementLevel()I

    move-result v0

    iput v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mEngagementLevel:I

    .line 358
    :cond_2a
    new-instance v0, Landroid/service/voice/VisualQueryAttentionResult;

    iget v1, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mInteractionIntention:I

    iget v2, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mEngagementLevel:I

    invoke-direct {v0, v1, v2}, Landroid/service/voice/VisualQueryAttentionResult;-><init>(II)V

    .line 361
    .local v0, "o":Landroid/service/voice/VisualQueryAttentionResult;
    return-object v0
.end method

.method public whitelist setEngagementLevel(I)Landroid/service/voice/VisualQueryAttentionResult$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 340
    invoke-direct {p0}, Landroid/service/voice/VisualQueryAttentionResult$Builder;->checkNotUsed()V

    .line 341
    iget-wide v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mBuilderFieldsSet:J

    .line 342
    iput p1, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mEngagementLevel:I

    .line 343
    return-object p0
.end method

.method public whitelist setInteractionIntention(I)Landroid/service/voice/VisualQueryAttentionResult$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 319
    invoke-direct {p0}, Landroid/service/voice/VisualQueryAttentionResult$Builder;->checkNotUsed()V

    .line 320
    iget-wide v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mBuilderFieldsSet:J

    .line 321
    iput p1, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mInteractionIntention:I

    .line 322
    return-object p0
.end method
