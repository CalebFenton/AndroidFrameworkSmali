.class public Landroid/icu/impl/UtilityExtensions;
.super Ljava/lang/Object;
.source "UtilityExtensions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static appendToRule(Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V
    .locals 2
    .param p0, "rule"    # Ljava/lang/StringBuffer;
    .param p1, "matcher"    # Landroid/icu/text/UnicodeMatcher;
    .param p2, "escapeUnprintable"    # Z
    .param p3, "quoteBuf"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 45
    if-eqz p1, :cond_0

    #@2
    .line 46
    invoke-interface {p1, p2}, Landroid/icu/text/UnicodeMatcher;->toPattern(Z)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 47
    const/4 v1, 0x1

    #@7
    .line 46
    invoke-static {p0, v0, v1, p2, p3}, Landroid/icu/impl/UtilityExtensions;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    #@a
    .line 44
    :cond_0
    return-void
.end method

.method public static appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V
    .locals 2
    .param p0, "rule"    # Ljava/lang/StringBuffer;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isLiteral"    # Z
    .param p3, "escapeUnprintable"    # Z
    .param p4, "quoteBuf"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 30
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v1

    #@b
    invoke-static {p0, v1, p2, p3, p4}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    #@e
    .line 30
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 29
    :cond_0
    return-void
.end method

.method public static formatInput(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Landroid/icu/text/Replaceable;
    .param p1, "pos"    # Landroid/icu/text/Transliterator$Position;

    #@0
    .prologue
    .line 102
    check-cast p0, Landroid/icu/text/ReplaceableString;

    #@2
    .end local p0    # "input":Landroid/icu/text/Replaceable;
    invoke-static {p0, p1}, Landroid/icu/impl/UtilityExtensions;->formatInput(Landroid/icu/text/ReplaceableString;Landroid/icu/text/Transliterator$Position;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static formatInput(Landroid/icu/text/ReplaceableString;Landroid/icu/text/Transliterator$Position;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Landroid/icu/text/ReplaceableString;
    .param p1, "pos"    # Landroid/icu/text/Transliterator$Position;

    #@0
    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 58
    .local v0, "appendTo":Ljava/lang/StringBuffer;
    invoke-static {v0, p0, p1}, Landroid/icu/impl/UtilityExtensions;->formatInput(Ljava/lang/StringBuffer;Landroid/icu/text/ReplaceableString;Landroid/icu/text/Transliterator$Position;)Ljava/lang/StringBuffer;

    #@8
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-static {v1}, Landroid/icu/impl/Utility;->escape(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public static formatInput(Ljava/lang/StringBuffer;Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "appendTo"    # Ljava/lang/StringBuffer;
    .param p1, "input"    # Landroid/icu/text/Replaceable;
    .param p2, "pos"    # Landroid/icu/text/Transliterator$Position;

    #@0
    .prologue
    .line 111
    check-cast p1, Landroid/icu/text/ReplaceableString;

    #@2
    .end local p1    # "input":Landroid/icu/text/Replaceable;
    invoke-static {p0, p1, p2}, Landroid/icu/impl/UtilityExtensions;->formatInput(Ljava/lang/StringBuffer;Landroid/icu/text/ReplaceableString;Landroid/icu/text/Transliterator$Position;)Ljava/lang/StringBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static formatInput(Ljava/lang/StringBuffer;Landroid/icu/text/ReplaceableString;Landroid/icu/text/Transliterator$Position;)Ljava/lang/StringBuffer;
    .locals 6
    .param p0, "appendTo"    # Ljava/lang/StringBuffer;
    .param p1, "input"    # Landroid/icu/text/ReplaceableString;
    .param p2, "pos"    # Landroid/icu/text/Transliterator$Position;

    #@0
    .prologue
    const/16 v5, 0x7c

    #@2
    .line 70
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    #@4
    if-ltz v3, :cond_0

    #@6
    .line 71
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    #@8
    iget v4, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@a
    if-gt v3, v4, :cond_0

    #@c
    .line 72
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@e
    iget v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@10
    if-gt v3, v4, :cond_0

    #@12
    .line 73
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@14
    iget v4, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@16
    if-gt v3, v4, :cond_0

    #@18
    .line 74
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@1a
    invoke-virtual {p1}, Landroid/icu/text/ReplaceableString;->length()I

    #@1d
    move-result v4

    #@1e
    if-gt v3, v4, :cond_0

    #@20
    .line 78
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    #@22
    iget v4, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@24
    invoke-virtual {p1, v3, v4}, Landroid/icu/text/ReplaceableString;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 79
    .local v0, "b":Ljava/lang/String;
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@2a
    iget v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@2c
    invoke-virtual {p1, v3, v4}, Landroid/icu/text/ReplaceableString;->substring(II)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 80
    .local v1, "c":Ljava/lang/String;
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@32
    iget v4, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@34
    invoke-virtual {p1, v3, v4}, Landroid/icu/text/ReplaceableString;->substring(II)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 83
    .local v2, "d":Ljava/lang/String;
    const/16 v3, 0x7b

    #@3a
    .line 82
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@51
    move-result-object v3

    #@52
    .line 85
    const/16 v4, 0x7d

    #@54
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@57
    .line 94
    .end local v0    # "b":Ljava/lang/String;
    .end local v1    # "c":Ljava/lang/String;
    .end local v2    # "d":Ljava/lang/String;
    :goto_0
    return-object p0

    #@58
    .line 89
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v4, "INVALID Position {cs="

    #@60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    .line 90
    iget v4, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    #@66
    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    .line 90
    const-string/jumbo v4, ", s="

    #@6d
    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    .line 90
    iget v4, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@73
    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v3

    #@77
    .line 90
    const-string/jumbo v4, ", l="

    #@7a
    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v3

    #@7e
    .line 91
    iget v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@80
    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@83
    move-result-object v3

    #@84
    .line 91
    const-string/jumbo v4, ", cl="

    #@87
    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v3

    #@8b
    .line 91
    iget v4, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@8d
    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@90
    move-result-object v3

    #@91
    .line 91
    const-string/jumbo v4, "} on "

    #@94
    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v3

    #@98
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v3

    #@9c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v3

    #@a0
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a3
    goto :goto_0
.end method
