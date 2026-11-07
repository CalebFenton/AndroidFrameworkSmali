.class Landroid/icu/impl/UCharacterProperty$11;
.super Landroid/icu/impl/UCharacterProperty$BinaryProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/UCharacterProperty;I)V
    .registers 3
    .param p1, "this$0"    # Landroid/icu/impl/UCharacterProperty;
    .param p2, "source"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 592
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method blacklist contains(I)Z
    .registers 7
    .param p1, "c"    # I

    .line 595
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "nfd":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    .line 599
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_20

    .line 601
    const/4 p1, -0x1

    goto :goto_20

    .line 603
    :cond_1d
    if-gez p1, :cond_20

    .line 604
    return v1

    .line 606
    :cond_20
    :goto_20
    const/4 v2, 0x1

    if-ltz p1, :cond_34

    .line 608
    sget-object v3, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    .line 609
    .local v3, "csp":Landroid/icu/impl/UCaseProps;
    sget-object v4, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 610
    sget-object v4, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, v4, v1}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result v4

    if-ltz v4, :cond_33

    move v1, v2

    :cond_33
    return v1

    .line 613
    .end local v3    # "csp":Landroid/icu/impl/UCaseProps;
    :cond_34
    invoke-static {v0, v2}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, "folded":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v2, v3

    return v2
.end method
