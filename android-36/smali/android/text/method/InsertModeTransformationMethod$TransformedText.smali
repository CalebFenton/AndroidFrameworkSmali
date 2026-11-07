.class public Landroid/text/method/InsertModeTransformationMethod$TransformedText;
.super Ljava/lang/Object;
.source "InsertModeTransformationMethod.java"

# interfaces
.implements Landroid/text/method/OffsetMapping;
.implements Landroid/text/Spanned;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/InsertModeTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransformedText"
.end annotation


# instance fields
.field private final blacklist mOriginal:Ljava/lang/CharSequence;

.field private final blacklist mPlaceholder:Ljava/lang/CharSequence;

.field private final blacklist mSpannedOriginal:Landroid/text/Spanned;

.field private final blacklist mSpannedPlaceholder:Landroid/text/Spanned;

.field final synthetic blacklist this$0:Landroid/text/method/InsertModeTransformationMethod;


# direct methods
.method public static synthetic blacklist $r8$lambda$phgDzRUXrz8jvNiuhYcA1J1pMBE(Landroid/text/method/InsertModeTransformationMethod$TransformedText;IILjava/lang/Object;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->lambda$getSpans$1(IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Landroid/text/method/InsertModeTransformationMethod;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "this$0"    # Landroid/text/method/InsertModeTransformationMethod;
    .param p2, "original"    # Ljava/lang/CharSequence;
    .param p3, "placeholder"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 216
    iput-object p1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    .line 218
    instance-of v0, p2, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 219
    move-object v0, p2

    check-cast v0, Landroid/text/Spanned;

    iput-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    goto :goto_14

    .line 221
    :cond_12
    iput-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    .line 223
    :goto_14
    iput-object p3, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    .line 224
    instance-of v0, p3, Landroid/text/Spanned;

    if-eqz v0, :cond_20

    .line 225
    move-object v0, p3

    check-cast v0, Landroid/text/Spanned;

    iput-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    goto :goto_22

    .line 227
    :cond_20
    iput-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    .line 229
    :goto_22
    return-void
.end method

.method static synthetic blacklist lambda$getSpans$0(Ljava/lang/Class;I)[Ljava/lang/Object;
    .registers 3
    .param p0, "type"    # Ljava/lang/Class;
    .param p1, "size"    # I

    .line 362
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private synthetic blacklist lambda$getSpans$1(IILjava/lang/Object;)Z
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "span"    # Ljava/lang/Object;

    .line 363
    invoke-virtual {p0, p3}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p3}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1, p1, p2}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$smintersect(IIII)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .registers 5
    .param p1, "index"    # I

    .line 278
    invoke-virtual {p0}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 279
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    if-ge p1, v0, :cond_1b

    .line 280
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0

    .line 282
    :cond_1b
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_39

    .line 283
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0

    .line 285
    :cond_39
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public blacklist getHighlightEnd()I
    .registers 3

    .line 470
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getHighlightStart()I
    .registers 2

    .line 463
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmStart(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    return v0
.end method

.method public whitelist getSpanEnd(Ljava/lang/Object;)I
    .registers 4
    .param p1, "tag"    # Ljava/lang/Object;

    .line 407
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    if-eqz v0, :cond_1d

    .line 408
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 409
    .local v0, "index":I
    if-ltz v0, :cond_1d

    .line 410
    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    if-gt v0, v1, :cond_15

    .line 411
    return v0

    .line 413
    :cond_15
    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 418
    .end local v0    # "index":I
    :cond_1d
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    if-eqz v0, :cond_31

    .line 419
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 420
    .restart local v0    # "index":I
    if-ltz v0, :cond_31

    .line 422
    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 425
    .end local v0    # "index":I
    :cond_31
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getSpanFlags(Ljava/lang/Object;)I
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    if-eqz v0, :cond_d

    .line 431
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 432
    .local v0, "flags":I
    if-eqz v0, :cond_d

    .line 433
    return v0

    .line 436
    .end local v0    # "flags":I
    :cond_d
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    if-eqz v0, :cond_18

    .line 437
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 439
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSpanStart(Ljava/lang/Object;)I
    .registers 4
    .param p1, "tag"    # Ljava/lang/Object;

    .line 381
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    if-eqz v0, :cond_2e

    .line 382
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 383
    .local v0, "index":I
    if-ltz v0, :cond_2e

    .line 386
    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    if-lt v0, v1, :cond_2d

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    if-ne v0, v1, :cond_25

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    .line 387
    invoke-interface {v1, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v0, :cond_25

    goto :goto_2d

    .line 390
    :cond_25
    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 388
    :cond_2d
    :goto_2d
    return v0

    .line 395
    .end local v0    # "index":I
    :cond_2e
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    if-eqz v0, :cond_42

    .line 396
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 397
    .restart local v0    # "index":I
    if-ltz v0, :cond_42

    .line 399
    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 402
    .end local v0    # "index":I
    :cond_42
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 324
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-ge p2, p1, :cond_7

    .line 325
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 328
    :cond_7
    const/4 v0, 0x0

    .line 329
    .local v0, "spansOriginal":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    if-eqz v1, :cond_2b

    .line 330
    nop

    .line 331
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->transformedToOriginal(II)I

    move-result v2

    .line 332
    .local v2, "originalStart":I
    nop

    .line 333
    invoke-virtual {p0, p2, v1}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->transformedToOriginal(II)I

    move-result v1

    .line 360
    .local v1, "originalEnd":I
    iget-object v3, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    invoke-interface {v3, v2, v1, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 361
    new-instance v3, Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda0;

    invoke-direct {v3, p3}, Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    new-instance v4, Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1, p2}, Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda1;-><init>(Landroid/text/method/InsertModeTransformationMethod$TransformedText;II)V

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    move-result-object v0

    .line 366
    .end local v1    # "originalEnd":I
    .end local v2    # "originalStart":I
    :cond_2b
    const/4 v1, 0x0

    .line 367
    .local v1, "spansPlaceholder":[Ljava/lang/Object;, "[TT;"
    iget-object v2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    if-eqz v2, :cond_6e

    iget-object v2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v2}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v2

    iget-object v3, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v3}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v3

    iget-object v4, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    .line 368
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p1, p2, v2, v3}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$smintersect(IIII)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 369
    iget-object v2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v2}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v2

    sub-int v2, p1, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 370
    .local v2, "placeholderStart":I
    iget-object v3, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v3}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v3

    sub-int v3, p2, v3

    iget-object v4, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 371
    .local v3, "placeholderEnd":I
    iget-object v4, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    .line 372
    invoke-interface {v4, v2, v3, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 376
    .end local v2    # "placeholderStart":I
    .end local v3    # "placeholderEnd":I
    :cond_6e
    filled-new-array {v0, v1}, [[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/android/internal/util/ArrayUtils;->concat(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api length()I
    .registers 3

    .line 273
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist nextSpanTransition(IILjava/lang/Class;)I
    .registers 8
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "type"    # Ljava/lang/Class;

    .line 444
    if-gt p2, p1, :cond_3

    return p2

    .line 445
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 446
    .local v0, "spans":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_24

    .line 447
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 448
    .local v2, "spanStart":I
    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 449
    .local v3, "spanEnd":I
    if-ge p1, v2, :cond_1c

    if-ge v2, p2, :cond_1c

    .line 450
    move p2, v2

    .line 452
    :cond_1c
    if-ge p1, v3, :cond_21

    if-ge v3, p2, :cond_21

    .line 453
    move p2, v3

    .line 446
    .end local v2    # "spanStart":I
    .end local v3    # "spanEnd":I
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 456
    .end local v1    # "i":I
    :cond_24
    return p2
.end method

.method public blacklist originalToTransformed(II)I
    .registers 6
    .param p1, "offset"    # I
    .param p2, "strategy"    # I

    .line 233
    if-gez p1, :cond_3

    return p1

    .line 234
    :cond_3
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-string v1, "offset"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 235
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    if-ne p1, v0, :cond_1b

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1b

    .line 238
    return p1

    .line 240
    :cond_1b
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    if-ge p1, v0, :cond_24

    .line 241
    return p1

    .line 243
    :cond_24
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public blacklist originalToTransformed(Landroid/text/method/OffsetMapping$TextUpdate;)V
    .registers 4
    .param p1, "textUpdate"    # Landroid/text/method/OffsetMapping$TextUpdate;

    .line 262
    iget v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    if-le v0, v1, :cond_16

    .line 263
    iget v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    goto :goto_39

    .line 264
    :cond_16
    iget v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    iget v1, p1, Landroid/text/method/OffsetMapping$TextUpdate;->before:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    if-le v0, v1, :cond_39

    .line 266
    iget v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->before:I

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->before:I

    .line 267
    iget v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->after:I

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->after:I

    .line 269
    :cond_39
    :goto_39
    return-void
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 13
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 290
    if-lt p2, p1, :cond_7c

    if-ltz p1, :cond_7c

    invoke-virtual {p0}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->length()I

    move-result v0

    if-gt p2, v0, :cond_7c

    .line 293
    if-ne p1, p2, :cond_f

    .line 294
    const-string v0, ""

    return-object v0

    .line 297
    :cond_f
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 299
    .local v0, "placeholderLength":I
    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 300
    .local v1, "seg1Start":I
    iget-object v2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v2}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 302
    .local v2, "seg1End":I
    iget-object v3, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v3}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v3

    sub-int v3, p1, v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    .line 303
    .local v3, "seg2Start":I
    iget-object v5, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v5}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v5

    sub-int v5, p2, v5

    invoke-static {v5, v4, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    .line 305
    .local v5, "seg2End":I
    sub-int v6, p1, v0

    iget-object v7, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v7}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 306
    .local v6, "seg3Start":I
    sub-int v7, p2, v0

    iget-object v8, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v8}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 308
    .local v7, "seg3End":I
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/CharSequence;

    iget-object v9, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    .line 309
    invoke-interface {v9, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v4

    iget-object v4, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    .line 310
    invoke-interface {v4, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v8, v9

    iget-object v4, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    .line 311
    invoke-interface {v4, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v9, 0x2

    aput-object v4, v8, v9

    .line 308
    invoke-static {v8}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .line 291
    .end local v0    # "placeholderLength":I
    .end local v1    # "seg1Start":I
    .end local v2    # "seg1End":I
    .end local v3    # "seg2Start":I
    .end local v5    # "seg2End":I
    .end local v6    # "seg3Start":I
    .end local v7    # "seg3End":I
    :cond_7c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v2}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v2}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v2

    iget-object v3, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    .line 318
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    return-object v0
.end method

.method public blacklist transformedToOriginal(II)I
    .registers 6
    .param p1, "offset"    # I
    .param p2, "strategy"    # I

    .line 248
    if-gez p1, :cond_3

    return p1

    .line 249
    :cond_3
    invoke-virtual {p0}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->length()I

    move-result v0

    const-string v1, "offset"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 253
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    if-ge p1, v0, :cond_16

    return p1

    .line 254
    :cond_16
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2c

    .line 255
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    return v0

    .line 257
    :cond_2c
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method
