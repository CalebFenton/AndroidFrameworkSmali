.class public final Landroid/view/translation/TranslationResponseValue$Builder;
.super Landroid/view/translation/TranslationResponseValue$BaseBuilder;
.source "TranslationResponseValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/TranslationResponseValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mStatusCode:I

.field private blacklist mText:Ljava/lang/CharSequence;

.field private blacklist mTransliteration:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 6
    .param p1, "statusCode"    # I

    .line 373
    invoke-direct {p0}, Landroid/view/translation/TranslationResponseValue$BaseBuilder;-><init>()V

    .line 361
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    .line 374
    iput p1, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mStatusCode:I

    .line 376
    iget v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mStatusCode:I

    if-eqz v0, :cond_4a

    iget v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mStatusCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    goto :goto_4a

    .line 378
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "statusCode was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mStatusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but must be one of: STATUS_SUCCESS("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), STATUS_ERROR("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_4a
    :goto_4a
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 447
    iget-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 451
    return-void

    .line 448
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/view/translation/TranslationResponseValue;
    .registers 7

    .line 426
    invoke-direct {p0}, Landroid/view/translation/TranslationResponseValue$Builder;->checkNotUsed()V

    .line 427
    iget-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    .line 429
    iget-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 430
    invoke-static {}, Landroid/view/translation/TranslationResponseValue;->-$$Nest$smdefaultText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mText:Ljava/lang/CharSequence;

    .line 432
    :cond_1b
    iget-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    .line 433
    invoke-static {}, Landroid/view/translation/TranslationResponseValue;->-$$Nest$smdefaultExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mExtras:Landroid/os/Bundle;

    .line 435
    :cond_2a
    iget-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_39

    .line 436
    invoke-static {}, Landroid/view/translation/TranslationResponseValue;->-$$Nest$smdefaultTransliteration()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mTransliteration:Ljava/lang/CharSequence;

    .line 438
    :cond_39
    new-instance v0, Landroid/view/translation/TranslationResponseValue;

    iget v1, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mStatusCode:I

    iget-object v2, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mExtras:Landroid/os/Bundle;

    iget-object v4, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mTransliteration:Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/translation/TranslationResponseValue;-><init>(ILjava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 443
    .local v0, "o":Landroid/view/translation/TranslationResponseValue;
    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/translation/TranslationResponseValue$Builder;
    .registers 6
    .param p1, "value"    # Landroid/os/Bundle;

    .line 405
    invoke-direct {p0}, Landroid/view/translation/TranslationResponseValue$Builder;->checkNotUsed()V

    .line 406
    iget-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    .line 407
    iput-object p1, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mExtras:Landroid/os/Bundle;

    .line 408
    return-object p0
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)Landroid/view/translation/TranslationResponseValue$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 391
    invoke-direct {p0}, Landroid/view/translation/TranslationResponseValue$Builder;->checkNotUsed()V

    .line 392
    iget-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    .line 393
    iput-object p1, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mText:Ljava/lang/CharSequence;

    .line 394
    return-object p0
.end method

.method public whitelist setTransliteration(Ljava/lang/CharSequence;)Landroid/view/translation/TranslationResponseValue$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 418
    invoke-direct {p0}, Landroid/view/translation/TranslationResponseValue$Builder;->checkNotUsed()V

    .line 419
    iget-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    .line 420
    iput-object p1, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mTransliteration:Ljava/lang/CharSequence;

    .line 421
    return-object p0
.end method
