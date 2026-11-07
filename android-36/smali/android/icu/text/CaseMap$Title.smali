.class public final Landroid/icu/text/CaseMap$Title;
.super Landroid/icu/text/CaseMap;
.source "CaseMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CaseMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Title"
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT:Landroid/icu/text/CaseMap$Title;

.field private static final greylist-max-o OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Title;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT()Landroid/icu/text/CaseMap$Title;
    .registers 1

    sget-object v0, Landroid/icu/text/CaseMap$Title;->DEFAULT:Landroid/icu/text/CaseMap$Title;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 180
    new-instance v0, Landroid/icu/text/CaseMap$Title;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Title;-><init>(I)V

    sput-object v0, Landroid/icu/text/CaseMap$Title;->DEFAULT:Landroid/icu/text/CaseMap$Title;

    .line 181
    new-instance v0, Landroid/icu/text/CaseMap$Title;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Title;-><init>(I)V

    sput-object v0, Landroid/icu/text/CaseMap$Title;->OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Title;

    return-void
.end method

.method private constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "opt"    # I

    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/CaseMap;-><init>(ILandroid/icu/text/CaseMap-IA;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api adjustToCased()Landroid/icu/text/CaseMap$Title;
    .registers 4

    .line 282
    new-instance v0, Landroid/icu/text/CaseMap$Title;

    iget v1, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    const/16 v2, 0x400

    invoke-static {v1, v2}, Landroid/icu/impl/CaseMapImpl;->addTitleAdjustmentOption(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Title;-><init>(I)V

    return-object v0
.end method

.method public whitelist test-api apply(Ljava/util/Locale;Landroid/icu/text/BreakIterator;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;
    .registers 13
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "iter"    # Landroid/icu/text/BreakIterator;
    .param p3, "src"    # Ljava/lang/CharSequence;
    .param p5, "edits"    # Landroid/icu/text/Edits;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Locale;",
            "Landroid/icu/text/BreakIterator;",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Landroid/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    .line 343
    .local p4, "dest":Ljava/lang/Appendable;, "TA;"
    if-nez p2, :cond_8

    if-nez p1, :cond_8

    .line 344
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 346
    :cond_8
    iget v0, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    invoke-static {p1, v0, p2}, Landroid/icu/impl/CaseMapImpl;->getTitleBreakIterator(Ljava/util/Locale;ILandroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;

    move-result-object v3

    .line 347
    .end local p2    # "iter":Landroid/icu/text/BreakIterator;
    .local v3, "iter":Landroid/icu/text/BreakIterator;
    invoke-virtual {v3, p3}, Landroid/icu/text/BreakIterator;->setText(Ljava/lang/CharSequence;)V

    .line 348
    nop

    .line 349
    invoke-static {p1}, Landroid/icu/text/CaseMap;->-$$Nest$smgetCaseLocale(Ljava/util/Locale;)I

    move-result v1

    iget v2, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    .line 348
    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p3    # "src":Ljava/lang/CharSequence;
    .end local p4    # "dest":Ljava/lang/Appendable;, "TA;"
    .end local p5    # "edits":Landroid/icu/text/Edits;
    .local v4, "src":Ljava/lang/CharSequence;
    .local v5, "dest":Ljava/lang/Appendable;, "TA;"
    .local v6, "edits":Landroid/icu/text/Edits;
    invoke-static/range {v1 .. v6}, Landroid/icu/impl/CaseMapImpl;->toTitle(IILandroid/icu/text/BreakIterator;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p2

    return-object p2
.end method

.method public whitelist test-api apply(Ljava/util/Locale;Landroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "iter"    # Landroid/icu/text/BreakIterator;
    .param p3, "src"    # Ljava/lang/CharSequence;

    .line 308
    if-nez p2, :cond_8

    if-nez p1, :cond_8

    .line 309
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 311
    :cond_8
    iget v0, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    invoke-static {p1, v0, p2}, Landroid/icu/impl/CaseMapImpl;->getTitleBreakIterator(Ljava/util/Locale;ILandroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;

    move-result-object p2

    .line 312
    invoke-virtual {p2, p3}, Landroid/icu/text/BreakIterator;->setText(Ljava/lang/CharSequence;)V

    .line 313
    invoke-static {p1}, Landroid/icu/text/CaseMap;->-$$Nest$smgetCaseLocale(Ljava/util/Locale;)I

    move-result v0

    iget v1, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    invoke-static {v0, v1, p2, p3}, Landroid/icu/impl/CaseMapImpl;->toTitle(IILandroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api noBreakAdjustment()Landroid/icu/text/CaseMap$Title;
    .registers 4

    .line 259
    new-instance v0, Landroid/icu/text/CaseMap$Title;

    iget v1, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    const/16 v2, 0x200

    invoke-static {v1, v2}, Landroid/icu/impl/CaseMapImpl;->addTitleAdjustmentOption(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Title;-><init>(I)V

    return-object v0
.end method

.method public whitelist test-api noLowercase()Landroid/icu/text/CaseMap$Title;
    .registers 3

    .line 241
    new-instance v0, Landroid/icu/text/CaseMap$Title;

    iget v1, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    or-int/lit16 v1, v1, 0x100

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Title;-><init>(I)V

    return-object v0
.end method

.method public whitelist test-api omitUnchangedText()Landroid/icu/text/CaseMap$Title;
    .registers 4

    .line 221
    iget v0, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    if-eqz v0, :cond_14

    iget v0, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_b

    goto :goto_14

    .line 224
    :cond_b
    new-instance v0, Landroid/icu/text/CaseMap$Title;

    iget v2, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Title;-><init>(I)V

    return-object v0

    .line 222
    :cond_14
    :goto_14
    sget-object v0, Landroid/icu/text/CaseMap$Title;->OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Title;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api omitUnchangedText()Landroid/icu/text/CaseMap;
    .registers 2

    .line 179
    invoke-virtual {p0}, Landroid/icu/text/CaseMap$Title;->omitUnchangedText()Landroid/icu/text/CaseMap$Title;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api sentences()Landroid/icu/text/CaseMap$Title;
    .registers 4

    .line 212
    new-instance v0, Landroid/icu/text/CaseMap$Title;

    iget v1, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    const/16 v2, 0x40

    invoke-static {v1, v2}, Landroid/icu/impl/CaseMapImpl;->addTitleIteratorOption(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Title;-><init>(I)V

    return-object v0
.end method

.method public whitelist test-api wholeString()Landroid/icu/text/CaseMap$Title;
    .registers 4

    .line 196
    new-instance v0, Landroid/icu/text/CaseMap$Title;

    iget v1, p0, Landroid/icu/text/CaseMap$Title;->internalOptions:I

    const/16 v2, 0x20

    invoke-static {v1, v2}, Landroid/icu/impl/CaseMapImpl;->addTitleIteratorOption(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Title;-><init>(I)V

    return-object v0
.end method
