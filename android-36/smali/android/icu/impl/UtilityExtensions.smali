.class public Landroid/icu/impl/UtilityExtensions;
.super Ljava/lang/Object;
.source "UtilityExtensions.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist appendToRule(Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V
    .registers 6
    .param p0, "rule"    # Ljava/lang/StringBuffer;
    .param p1, "matcher"    # Landroid/icu/text/UnicodeMatcher;
    .param p2, "escapeUnprintable"    # Z
    .param p3, "quoteBuf"    # Ljava/lang/StringBuffer;

    .line 47
    if-eqz p1, :cond_a

    .line 48
    invoke-interface {p1, p2}, Landroid/icu/text/UnicodeMatcher;->toPattern(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2, p3}, Landroid/icu/impl/UtilityExtensions;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 51
    :cond_a
    return-void
.end method

.method public static blacklist appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V
    .registers 7
    .param p0, "rule"    # Ljava/lang/StringBuffer;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isLiteral"    # Z
    .param p3, "escapeUnprintable"    # Z
    .param p4, "quoteBuf"    # Ljava/lang/StringBuffer;

    .line 32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {p0, v1, p2, p3, p4}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 36
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public static blacklist formatInput(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;)Ljava/lang/String;
    .registers 3
    .param p0, "input"    # Landroid/icu/text/Replaceable;
    .param p1, "pos"    # Landroid/icu/text/Transliterator$Position;

    .line 104
    move-object v0, p0

    check-cast v0, Landroid/icu/text/ReplaceableString;

    invoke-static {v0, p1}, Landroid/icu/impl/UtilityExtensions;->formatInput(Landroid/icu/text/ReplaceableString;Landroid/icu/text/Transliterator$Position;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist formatInput(Landroid/icu/text/ReplaceableString;Landroid/icu/text/Transliterator$Position;)Ljava/lang/String;
    .registers 4
    .param p0, "input"    # Landroid/icu/text/ReplaceableString;
    .param p1, "pos"    # Landroid/icu/text/Transliterator$Position;

    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    .local v0, "appendTo":Ljava/lang/StringBuffer;
    invoke-static {v0, p0, p1}, Landroid/icu/impl/UtilityExtensions;->formatInput(Ljava/lang/StringBuffer;Landroid/icu/text/ReplaceableString;Landroid/icu/text/Transliterator$Position;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/Utility;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist formatInput(Ljava/lang/StringBuffer;Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;)Ljava/lang/StringBuffer;
    .registers 4
    .param p0, "appendTo"    # Ljava/lang/StringBuffer;
    .param p1, "input"    # Landroid/icu/text/Replaceable;
    .param p2, "pos"    # Landroid/icu/text/Transliterator$Position;

    .line 113
    move-object v0, p1

    check-cast v0, Landroid/icu/text/ReplaceableString;

    invoke-static {p0, v0, p2}, Landroid/icu/impl/UtilityExtensions;->formatInput(Ljava/lang/StringBuffer;Landroid/icu/text/ReplaceableString;Landroid/icu/text/Transliterator$Position;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist formatInput(Ljava/lang/StringBuffer;Landroid/icu/text/ReplaceableString;Landroid/icu/text/Transliterator$Position;)Ljava/lang/StringBuffer;
    .registers 8
    .param p0, "appendTo"    # Ljava/lang/StringBuffer;
    .param p1, "input"    # Landroid/icu/text/ReplaceableString;
    .param p2, "pos"    # Landroid/icu/text/Transliterator$Position;

    .line 72
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    if-ltz v0, :cond_59

    iget v0, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    if-gt v0, v1, :cond_59

    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-gt v0, v1, :cond_59

    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    if-gt v0, v1, :cond_59

    iget v0, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 76
    invoke-virtual {p1}, Landroid/icu/text/ReplaceableString;->length()I

    move-result v1

    if-gt v0, v1, :cond_59

    .line 80
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-virtual {p1, v0, v1}, Landroid/icu/text/ReplaceableString;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "b":Ljava/lang/String;
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {p1, v1, v2}, Landroid/icu/text/ReplaceableString;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "c":Ljava/lang/String;
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {p1, v2, v3}, Landroid/icu/text/ReplaceableString;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "d":Ljava/lang/String;
    nop

    .line 85
    const/16 v3, 0x7b

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 86
    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 87
    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    .end local v0    # "b":Ljava/lang/String;
    .end local v1    # "c":Ljava/lang/String;
    .end local v2    # "d":Ljava/lang/String;
    goto :goto_9f

    .line 91
    :cond_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID Position {cs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :goto_9f
    return-object p0
.end method
