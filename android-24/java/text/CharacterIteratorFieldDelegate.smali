.class Ljava/text/CharacterIteratorFieldDelegate;
.super Ljava/lang/Object;
.source "CharacterIteratorFieldDelegate.java"

# interfaces
.implements Ljava/text/Format$FieldDelegate;


# instance fields
.field private attributedStrings:Ljava/util/ArrayList;

.field private size:I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    #@a
    .line 52
    return-void
.end method


# virtual methods
.method public formatted(ILjava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V
    .locals 6
    .param p1, "fieldID"    # I
    .param p2, "attr"    # Ljava/text/Format$Field;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "start"    # I
    .param p5, "end"    # I
    .param p6, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    move-object v0, p0

    #@1
    move-object v1, p2

    #@2
    move-object v2, p3

    #@3
    move v3, p4

    #@4
    move v4, p5

    #@5
    move-object v5, p6

    #@6
    .line 97
    invoke-virtual/range {v0 .. v5}, Ljava/text/CharacterIteratorFieldDelegate;->formatted(Ljava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V

    #@9
    .line 96
    return-void
.end method

.method public formatted(Ljava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V
    .locals 10
    .param p1, "attr"    # Ljava/text/Format$Field;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 58
    if-eq p3, p4, :cond_2

    #@2
    .line 59
    iget v7, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    #@4
    if-ge p3, v7, :cond_0

    #@6
    .line 61
    iget v4, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    #@8
    .line 62
    .local v4, "index":I
    iget-object v7, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v7

    #@e
    add-int/lit8 v2, v7, -0x1

    #@10
    .local v2, "asIndex":I
    move v3, v2

    #@11
    .line 64
    .end local v2    # "asIndex":I
    .local v3, "asIndex":I
    :goto_0
    if-ge p3, v4, :cond_0

    #@13
    .line 65
    iget-object v7, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    #@15
    .line 66
    add-int/lit8 v2, v3, -0x1

    #@17
    .line 65
    .end local v3    # "asIndex":I
    .restart local v2    # "asIndex":I
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Ljava/text/AttributedString;

    #@1d
    .line 67
    .local v1, "as":Ljava/text/AttributedString;
    invoke-virtual {v1}, Ljava/text/AttributedString;->length()I

    #@20
    move-result v7

    #@21
    sub-int v5, v4, v7

    #@23
    .line 68
    .local v5, "newIndex":I
    sub-int v7, p3, v5

    #@25
    const/4 v8, 0x0

    #@26
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    #@29
    move-result v0

    #@2a
    .line 71
    .local v0, "aStart":I
    sub-int v7, p4, p3

    #@2c
    invoke-virtual {v1}, Ljava/text/AttributedString;->length()I

    #@2f
    move-result v8

    #@30
    sub-int/2addr v8, v0

    #@31
    .line 70
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    #@34
    move-result v7

    #@35
    add-int/2addr v7, v0

    #@36
    invoke-virtual {v1, p1, p2, v0, v7}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    #@39
    .line 73
    move v4, v5

    #@3a
    move v3, v2

    #@3b
    .end local v2    # "asIndex":I
    .restart local v3    # "asIndex":I
    goto :goto_0

    #@3c
    .line 76
    .end local v0    # "aStart":I
    .end local v1    # "as":Ljava/text/AttributedString;
    .end local v3    # "asIndex":I
    .end local v4    # "index":I
    .end local v5    # "newIndex":I
    :cond_0
    iget v7, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    #@3e
    if-ge v7, p3, :cond_1

    #@40
    .line 78
    iget-object v7, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    #@42
    new-instance v8, Ljava/text/AttributedString;

    #@44
    .line 79
    iget v9, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    #@46
    invoke-virtual {p5, v9, p3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    #@49
    move-result-object v9

    #@4a
    .line 78
    invoke-direct {v8, v9}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    #@4d
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@50
    .line 80
    iput p3, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    #@52
    .line 82
    :cond_1
    iget v7, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    #@54
    if-ge v7, p4, :cond_2

    #@56
    .line 84
    iget v7, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    #@58
    invoke-static {p3, v7}, Ljava/lang/Math;->max(II)I

    #@5b
    move-result v0

    #@5c
    .line 85
    .restart local v0    # "aStart":I
    new-instance v6, Ljava/text/AttributedString;

    #@5e
    .line 86
    invoke-virtual {p5, v0, p4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    #@61
    move-result-object v7

    #@62
    .line 85
    invoke-direct {v6, v7}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    #@65
    .line 88
    .local v6, "string":Ljava/text/AttributedString;
    invoke-virtual {v6, p1, p2}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    #@68
    .line 89
    iget-object v7, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    #@6a
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6d
    .line 90
    iput p4, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    #@6f
    .line 57
    .end local v0    # "aStart":I
    .end local v6    # "string":Ljava/text/AttributedString;
    :cond_2
    return-void
.end method

.method public getIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v3

    #@4
    iget v4, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    #@6
    if-le v3, v4, :cond_0

    #@8
    .line 110
    iget-object v3, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    #@a
    new-instance v4, Ljava/text/AttributedString;

    #@c
    .line 111
    iget v5, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    #@e
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    .line 110
    invoke-direct {v4, v5}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    #@15
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18
    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1b
    move-result v3

    #@1c
    iput v3, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    #@1e
    .line 114
    :cond_0
    iget-object v3, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@23
    move-result v1

    #@24
    .line 115
    .local v1, "iCount":I
    new-array v2, v1, [Ljava/text/AttributedCharacterIterator;

    #@26
    .line 118
    .local v2, "iterators":[Ljava/text/AttributedCharacterIterator;
    const/4 v0, 0x0

    #@27
    .local v0, "counter":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@29
    .line 119
    iget-object v3, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v3

    #@2f
    check-cast v3, Ljava/text/AttributedString;

    #@31
    invoke-virtual {v3}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    #@34
    move-result-object v3

    #@35
    aput-object v3, v2, v0

    #@37
    .line 118
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 122
    :cond_1
    new-instance v3, Ljava/text/AttributedString;

    #@3c
    invoke-direct {v3, v2}, Ljava/text/AttributedString;-><init>([Ljava/text/AttributedCharacterIterator;)V

    #@3f
    invoke-virtual {v3}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    #@42
    move-result-object v3

    #@43
    return-object v3
.end method
