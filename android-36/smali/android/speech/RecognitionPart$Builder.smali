.class public final Landroid/speech/RecognitionPart$Builder;
.super Landroid/speech/RecognitionPart$BaseBuilder;
.source "RecognitionPart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mConfidenceLevel:I

.field private blacklist mFormattedText:Ljava/lang/String;

.field private blacklist mRawText:Ljava/lang/String;

.field private blacklist mTimestampMillis:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBuilderFieldsSet(Landroid/speech/RecognitionPart$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBuilderFieldsSet(Landroid/speech/RecognitionPart$Builder;J)V
    .registers 3

    iput-wide p1, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFormattedText(Landroid/speech/RecognitionPart$Builder;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/speech/RecognitionPart$Builder;->mFormattedText:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckNotUsed(Landroid/speech/RecognitionPart$Builder;)V
    .registers 1

    invoke-direct {p0}, Landroid/speech/RecognitionPart$Builder;->checkNotUsed()V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "rawText"    # Ljava/lang/String;

    .line 400
    invoke-direct {p0}, Landroid/speech/RecognitionPart$BaseBuilder;-><init>()V

    .line 391
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    .line 401
    iput-object p1, p0, Landroid/speech/RecognitionPart$Builder;->mRawText:Ljava/lang/String;

    .line 402
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/speech/RecognitionPart$Builder;->mRawText:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 404
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 469
    iget-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 473
    return-void

    .line 470
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/speech/RecognitionPart;
    .registers 8

    .line 448
    invoke-direct {p0}, Landroid/speech/RecognitionPart$Builder;->checkNotUsed()V

    .line 449
    iget-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    .line 451
    iget-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 452
    invoke-static {}, Landroid/speech/RecognitionPart;->-$$Nest$smdefaultFormattedText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/RecognitionPart$Builder;->mFormattedText:Ljava/lang/String;

    .line 454
    :cond_1b
    iget-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    .line 455
    invoke-static {}, Landroid/speech/RecognitionPart;->-$$Nest$smdefaultTimestampMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mTimestampMillis:J

    .line 457
    :cond_2a
    iget-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_39

    .line 458
    invoke-static {}, Landroid/speech/RecognitionPart;->-$$Nest$smdefaultConfidenceLevel()I

    move-result v0

    iput v0, p0, Landroid/speech/RecognitionPart$Builder;->mConfidenceLevel:I

    .line 460
    :cond_39
    new-instance v1, Landroid/speech/RecognitionPart;

    iget-object v2, p0, Landroid/speech/RecognitionPart$Builder;->mRawText:Ljava/lang/String;

    iget-object v3, p0, Landroid/speech/RecognitionPart$Builder;->mFormattedText:Ljava/lang/String;

    iget-wide v4, p0, Landroid/speech/RecognitionPart$Builder;->mTimestampMillis:J

    iget v6, p0, Landroid/speech/RecognitionPart$Builder;->mConfidenceLevel:I

    invoke-direct/range {v1 .. v6}, Landroid/speech/RecognitionPart;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 465
    .local v1, "o":Landroid/speech/RecognitionPart;
    return-object v1
.end method

.method public whitelist setConfidenceLevel(I)Landroid/speech/RecognitionPart$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 440
    invoke-direct {p0}, Landroid/speech/RecognitionPart$Builder;->checkNotUsed()V

    .line 441
    iget-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    .line 442
    iput p1, p0, Landroid/speech/RecognitionPart$Builder;->mConfidenceLevel:I

    .line 443
    return-object p0
.end method

.method public bridge synthetic whitelist setFormattedText(Ljava/lang/String;)Landroid/speech/RecognitionPart$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 382
    invoke-super {p0, p1}, Landroid/speech/RecognitionPart$BaseBuilder;->setFormattedText(Ljava/lang/String;)Landroid/speech/RecognitionPart$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setRawText(Ljava/lang/String;)Landroid/speech/RecognitionPart$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 411
    invoke-direct {p0}, Landroid/speech/RecognitionPart$Builder;->checkNotUsed()V

    .line 412
    iget-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    .line 413
    iput-object p1, p0, Landroid/speech/RecognitionPart$Builder;->mRawText:Ljava/lang/String;

    .line 414
    return-object p0
.end method

.method public whitelist setTimestampMillis(J)Landroid/speech/RecognitionPart$Builder;
    .registers 7
    .param p1, "value"    # J

    .line 426
    invoke-direct {p0}, Landroid/speech/RecognitionPart$Builder;->checkNotUsed()V

    .line 427
    iget-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    .line 428
    iput-wide p1, p0, Landroid/speech/RecognitionPart$Builder;->mTimestampMillis:J

    .line 429
    return-object p0
.end method
