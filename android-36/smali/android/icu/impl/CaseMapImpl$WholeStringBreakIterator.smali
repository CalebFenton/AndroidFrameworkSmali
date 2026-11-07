.class final Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;
.super Landroid/icu/text/BreakIterator;
.source "CaseMapImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CaseMapImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WholeStringBreakIterator"
.end annotation


# instance fields
.field private blacklist length:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 299
    invoke-direct {p0}, Landroid/icu/text/BreakIterator;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/CaseMapImpl-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;-><init>()V

    return-void
.end method

.method private static blacklist notImplemented()V
    .registers 2

    .line 303
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "should not occur"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api current()I
    .registers 2

    .line 342
    invoke-static {}, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;->notImplemented()V

    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api first()I
    .registers 2

    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api following(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 336
    invoke-static {}, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;->notImplemented()V

    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getText()Ljava/text/CharacterIterator;
    .registers 2

    .line 348
    invoke-static {}, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;->notImplemented()V

    .line 349
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api last()I
    .registers 2

    .line 313
    invoke-static {}, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;->notImplemented()V

    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api next()I
    .registers 2

    .line 325
    iget v0, p0, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;->length:I

    return v0
.end method

.method public whitelist test-api next(I)I
    .registers 3
    .param p1, "n"    # I

    .line 319
    invoke-static {}, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;->notImplemented()V

    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api previous()I
    .registers 2

    .line 330
    invoke-static {}, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;->notImplemented()V

    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api setText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .line 359
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;->length:I

    .line 360
    return-void
.end method

.method public whitelist test-api setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "newText"    # Ljava/lang/String;

    .line 364
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;->length:I

    .line 365
    return-void
.end method

.method public whitelist test-api setText(Ljava/text/CharacterIterator;)V
    .registers 3
    .param p1, "newText"    # Ljava/text/CharacterIterator;

    .line 354
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/CaseMapImpl$WholeStringBreakIterator;->length:I

    .line 355
    return-void
.end method
