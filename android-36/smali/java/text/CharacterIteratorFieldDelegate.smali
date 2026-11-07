.class Ljava/text/CharacterIteratorFieldDelegate;
.super Ljava/lang/Object;
.source "CharacterIteratorFieldDelegate.java"

# interfaces
.implements Ljava/text/Format$FieldDelegate;


# instance fields
.field private blacklist attributedStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/text/AttributedString;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist size:I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    .line 54
    return-void
.end method


# virtual methods
.method public blacklist formatted(ILjava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V
    .registers 13
    .param p1, "fieldID"    # I
    .param p2, "attr"    # Ljava/text/Format$Field;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "start"    # I
    .param p5, "end"    # I
    .param p6, "buffer"    # Ljava/lang/StringBuffer;

    .line 97
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .end local p2    # "attr":Ljava/text/Format$Field;
    .end local p3    # "value":Ljava/lang/Object;
    .end local p4    # "start":I
    .end local p5    # "end":I
    .end local p6    # "buffer":Ljava/lang/StringBuffer;
    .local v1, "attr":Ljava/text/Format$Field;
    .local v2, "value":Ljava/lang/Object;
    .local v3, "start":I
    .local v4, "end":I
    .local v5, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual/range {v0 .. v5}, Ljava/text/CharacterIteratorFieldDelegate;->formatted(Ljava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V

    .line 98
    return-void
.end method

.method public blacklist formatted(Ljava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V
    .registers 13
    .param p1, "attr"    # Ljava/text/Format$Field;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "buffer"    # Ljava/lang/StringBuffer;

    .line 58
    if-eq p3, p4, :cond_6e

    .line 59
    iget v0, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    if-ge p3, v0, :cond_3b

    .line 61
    iget v0, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    .line 62
    .local v0, "index":I
    iget-object v1, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 64
    .local v1, "asIndex":I
    :goto_10
    if-ge p3, v0, :cond_3b

    .line 65
    iget-object v2, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    .line 66
    .end local v1    # "asIndex":I
    .local v3, "asIndex":I
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedString;

    .line 67
    .local v1, "as":Ljava/text/AttributedString;
    invoke-virtual {v1}, Ljava/text/AttributedString;->length()I

    move-result v2

    sub-int v2, v0, v2

    .line 68
    .local v2, "newIndex":I
    const/4 v4, 0x0

    sub-int v5, p3, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 70
    .local v4, "aStart":I
    sub-int v5, p4, p3

    .line 71
    invoke-virtual {v1}, Ljava/text/AttributedString;->length()I

    move-result v6

    sub-int/2addr v6, v4

    .line 70
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, p1, p2, v4, v5}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 73
    move v0, v2

    .line 74
    .end local v1    # "as":Ljava/text/AttributedString;
    .end local v2    # "newIndex":I
    .end local v4    # "aStart":I
    move v1, v3

    goto :goto_10

    .line 76
    .end local v0    # "index":I
    .end local v3    # "asIndex":I
    :cond_3b
    iget v0, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    if-ge v0, p3, :cond_51

    .line 78
    iget-object v0, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    new-instance v1, Ljava/text/AttributedString;

    iget v2, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    .line 79
    invoke-virtual {p5, v2, p3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iput p3, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    .line 82
    :cond_51
    iget v0, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    if-ge v0, p4, :cond_6e

    .line 84
    iget v0, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 85
    .local v0, "aStart":I
    new-instance v1, Ljava/text/AttributedString;

    .line 86
    invoke-virtual {p5, v0, p4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "string":Ljava/text/AttributedString;
    invoke-virtual {v1, p1, p2}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 89
    iget-object v2, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iput p4, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    .line 93
    .end local v0    # "aStart":I
    .end local v1    # "string":Ljava/text/AttributedString;
    :cond_6e
    return-void
.end method

.method public blacklist getIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;
    .registers 6
    .param p1, "string"    # Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    if-le v0, v1, :cond_1e

    .line 110
    iget-object v0, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    new-instance v1, Ljava/text/AttributedString;

    iget v2, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    .line 111
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    .line 114
    :cond_1e
    iget-object v0, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 115
    .local v0, "iCount":I
    new-array v1, v0, [Ljava/text/AttributedCharacterIterator;

    .line 118
    .local v1, "iterators":[Ljava/text/AttributedCharacterIterator;
    const/4 v2, 0x0

    .local v2, "counter":I
    :goto_27
    if-ge v2, v0, :cond_3a

    .line 119
    iget-object v3, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    .line 120
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/AttributedString;

    invoke-virtual {v3}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 122
    .end local v2    # "counter":I
    :cond_3a
    new-instance v2, Ljava/text/AttributedString;

    invoke-direct {v2, v1}, Ljava/text/AttributedString;-><init>([Ljava/text/AttributedCharacterIterator;)V

    invoke-virtual {v2}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    return-object v2
.end method
