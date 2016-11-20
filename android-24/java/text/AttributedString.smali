.class public Ljava/text/AttributedString;
.super Ljava/lang/Object;
.source "AttributedString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/AttributedString$AttributeMap;,
        Ljava/text/AttributedString$AttributedStringIterator;
    }
.end annotation


# static fields
.field private static final ARRAY_SIZE_INCREMENT:I = 0xa


# instance fields
.field runArraySize:I

.field runAttributeValues:[Ljava/util/Vector;

.field runAttributes:[Ljava/util/Vector;

.field runCount:I

.field runStarts:[I

.field text:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Ljava/text/AttributedString;Ljava/util/Set;II)Z
    .locals 1
    .param p1, "attributes"    # Ljava/util/Set;
    .param p2, "runIndex1"    # I
    .param p3, "runIndex2"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/text/AttributedString;->attributeValuesMatch(Ljava/util/Set;II)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value1"    # Ljava/lang/Object;
    .param p1, "value2"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-static {p0, p1}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Ljava/text/AttributedString;I)C
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/text/AttributedString;->charAt(I)C

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;
    .locals 1
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "runIndex"    # I
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/text/AttributedString;->getAttributeCheckRange(Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;
    .locals 1
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "runIndex"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 126
    if-nez p1, :cond_0

    #@5
    .line 127
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 129
    :cond_0
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@d
    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    const/4 v6, 0x0

    #@1
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 145
    if-eqz p1, :cond_0

    #@6
    if-nez p2, :cond_1

    #@8
    .line 146
    :cond_0
    new-instance v5, Ljava/lang/NullPointerException;

    #@a
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@d
    throw v5

    #@e
    .line 148
    :cond_1
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@10
    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@13
    move-result v5

    #@14
    if-nez v5, :cond_3

    #@16
    .line 151
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_2

    #@1c
    .line 152
    return-void

    #@1d
    .line 153
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v6, "Can\'t add attribute to 0-length text"

    #@22
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v5

    #@26
    .line 156
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->size()I

    #@29
    move-result v0

    #@2a
    .line 157
    .local v0, "attributeCount":I
    if-lez v0, :cond_4

    #@2c
    .line 158
    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    #@2f
    .line 159
    new-instance v4, Ljava/util/Vector;

    #@31
    invoke-direct {v4, v0}, Ljava/util/Vector;-><init>(I)V

    #@34
    .line 160
    .local v4, "newRunAttributes":Ljava/util/Vector;
    new-instance v3, Ljava/util/Vector;

    #@36
    invoke-direct {v3, v0}, Ljava/util/Vector;-><init>(I)V

    #@39
    .line 161
    .local v3, "newRunAttributeValues":Ljava/util/Vector;
    iget-object v5, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@3b
    aput-object v4, v5, v6

    #@3d
    .line 162
    iget-object v5, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    #@3f
    aput-object v3, v5, v6

    #@41
    .line 163
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@44
    move-result-object v5

    #@45
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@48
    move-result-object v2

    #@49
    .line 164
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@4c
    move-result v5

    #@4d
    if-eqz v5, :cond_4

    #@4f
    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@52
    move-result-object v1

    #@53
    check-cast v1, Ljava/util/Map$Entry;

    #@55
    .line 166
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@5c
    .line 167
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@5f
    move-result-object v5

    #@60
    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@63
    goto :goto_0

    #@64
    .line 143
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "newRunAttributeValues":Ljava/util/Vector;
    .end local v4    # "newRunAttributes":Ljava/util/Vector;
    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;)V
    .locals 3
    .param p1, "text"    # Ljava/text/AttributedCharacterIterator;

    #@0
    .prologue
    .line 182
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    #@3
    move-result v0

    #@4
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-direct {p0, p1, v0, v1, v2}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V

    #@c
    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;II)V
    .locals 1
    .param p1, "text"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    #@0
    .prologue
    .line 205
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V

    #@4
    .line 204
    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V
    .locals 15
    .param p1, "text"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;

    #@0
    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 234
    if-nez p1, :cond_0

    #@5
    .line 235
    new-instance v13, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v13

    #@b
    .line 239
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    #@e
    move-result v9

    #@f
    .line 240
    .local v9, "textBeginIndex":I
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    #@12
    move-result v11

    #@13
    .line 241
    .local v11, "textEndIndex":I
    move/from16 v0, p2

    #@15
    if-lt v0, v9, :cond_1

    #@17
    move/from16 v0, p3

    #@19
    if-le v0, v11, :cond_2

    #@1b
    .line 242
    :cond_1
    new-instance v13, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v14, "Invalid substring range"

    #@20
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v13

    #@24
    .line 241
    :cond_2
    move/from16 v0, p2

    #@26
    move/from16 v1, p3

    #@28
    if-gt v0, v1, :cond_1

    #@2a
    .line 245
    new-instance v10, Ljava/lang/StringBuffer;

    #@2c
    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    #@2f
    .line 246
    .local v10, "textBuffer":Ljava/lang/StringBuffer;
    invoke-interface/range {p1 .. p2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    #@32
    .line 247
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->current()C

    #@35
    move-result v3

    #@36
    .local v3, "c":C
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    #@39
    move-result v13

    #@3a
    move/from16 v0, p3

    #@3c
    if-ge v13, v0, :cond_3

    #@3e
    .line 248
    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@41
    .line 247
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->next()C

    #@44
    move-result v3

    #@45
    goto :goto_0

    #@46
    .line 249
    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@49
    move-result-object v13

    #@4a
    iput-object v13, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@4c
    .line 251
    move/from16 v0, p2

    #@4e
    move/from16 v1, p3

    #@50
    if-ne v0, v1, :cond_4

    #@52
    .line 252
    return-void

    #@53
    .line 255
    :cond_4
    new-instance v6, Ljava/util/HashSet;

    #@55
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@58
    .line 256
    .local v6, "keys":Ljava/util/HashSet;
    if-nez p4, :cond_5

    #@5a
    .line 257
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    #@5d
    move-result-object v13

    #@5e
    invoke-virtual {v6, v13}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    #@61
    .line 263
    :goto_1
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    #@64
    move-result v13

    #@65
    if-eqz v13, :cond_7

    #@67
    .line 264
    return-void

    #@68
    .line 259
    :cond_5
    const/4 v4, 0x0

    #@69
    .local v4, "i":I
    :goto_2
    move-object/from16 v0, p4

    #@6b
    array-length v13, v0

    #@6c
    if-ge v4, v13, :cond_6

    #@6e
    .line 260
    aget-object v13, p4, v4

    #@70
    invoke-virtual {v6, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@73
    .line 259
    add-int/lit8 v4, v4, 0x1

    #@75
    goto :goto_2

    #@76
    .line 261
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    #@79
    move-result-object v13

    #@7a
    invoke-virtual {v6, v13}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    #@7d
    goto :goto_1

    #@7e
    .line 269
    .end local v4    # "i":I
    :cond_7
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@81
    move-result-object v5

    #@82
    .line 270
    .local v5, "itr":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@85
    move-result v13

    #@86
    if-eqz v13, :cond_e

    #@88
    .line 271
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8b
    move-result-object v2

    #@8c
    check-cast v2, Ljava/text/AttributedCharacterIterator$Attribute;

    #@8e
    .line 272
    .local v2, "attributeKey":Ljava/text/AttributedCharacterIterator$Attribute;
    move-object/from16 v0, p1

    #@90
    invoke-interface {v0, v9}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    #@93
    .line 273
    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    #@96
    move-result v13

    #@97
    move/from16 v0, p3

    #@99
    if-ge v13, v0, :cond_8

    #@9b
    .line 274
    move-object/from16 v0, p1

    #@9d
    invoke-interface {v0, v2}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    #@a0
    move-result v8

    #@a1
    .line 275
    .local v8, "start":I
    move-object/from16 v0, p1

    #@a3
    invoke-interface {v0, v2}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    #@a6
    move-result v7

    #@a7
    .line 276
    .local v7, "limit":I
    move-object/from16 v0, p1

    #@a9
    invoke-interface {v0, v2}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    #@ac
    move-result-object v12

    #@ad
    .line 278
    .local v12, "value":Ljava/lang/Object;
    if-eqz v12, :cond_9

    #@af
    .line 279
    instance-of v13, v12, Ljava/text/Annotation;

    #@b1
    if-eqz v13, :cond_b

    #@b3
    .line 280
    move/from16 v0, p2

    #@b5
    if-lt v8, v0, :cond_a

    #@b7
    move/from16 v0, p3

    #@b9
    if-gt v7, v0, :cond_a

    #@bb
    .line 281
    sub-int v13, v8, p2

    #@bd
    sub-int v14, v7, p2

    #@bf
    invoke-virtual {p0, v2, v12, v13, v14}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    #@c2
    .line 303
    :cond_9
    :goto_5
    move-object/from16 v0, p1

    #@c4
    invoke-interface {v0, v7}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    #@c7
    goto :goto_4

    #@c8
    .line 283
    :cond_a
    move/from16 v0, p3

    #@ca
    if-le v7, v0, :cond_9

    #@cc
    goto :goto_3

    #@cd
    .line 289
    :cond_b
    move/from16 v0, p3

    #@cf
    if-ge v8, v0, :cond_8

    #@d1
    .line 291
    move/from16 v0, p2

    #@d3
    if-le v7, v0, :cond_9

    #@d5
    .line 293
    move/from16 v0, p2

    #@d7
    if-ge v8, v0, :cond_c

    #@d9
    .line 294
    move/from16 v8, p2

    #@db
    .line 295
    :cond_c
    move/from16 v0, p3

    #@dd
    if-le v7, v0, :cond_d

    #@df
    .line 296
    move/from16 v7, p3

    #@e1
    .line 297
    :cond_d
    if-eq v8, v7, :cond_9

    #@e3
    .line 298
    sub-int v13, v8, p2

    #@e5
    sub-int v14, v7, p2

    #@e7
    invoke-virtual {p0, v2, v12, v13, v14}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    #@ea
    goto :goto_5

    #@eb
    .line 233
    .end local v2    # "attributeKey":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v7    # "limit":I
    .end local v8    # "start":I
    .end local v12    # "value":Ljava/lang/Object;
    :cond_e
    return-void
.end method

.method constructor <init>([Ljava/text/AttributedCharacterIterator;)V
    .locals 11
    .param p1, "iterators"    # [Ljava/text/AttributedCharacterIterator;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    if-nez p1, :cond_0

    #@5
    .line 77
    new-instance v9, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v10, "Iterators must not be null"

    #@a
    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v9

    #@e
    .line 79
    :cond_0
    array-length v9, p1

    #@f
    if-nez v9, :cond_2

    #@11
    .line 80
    const-string/jumbo v9, ""

    #@14
    iput-object v9, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@16
    .line 75
    :cond_1
    return-void

    #@17
    .line 84
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@1c
    .line 85
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    #@1d
    .local v2, "counter":I
    :goto_0
    array-length v9, p1

    #@1e
    if-ge v2, v9, :cond_3

    #@20
    .line 86
    aget-object v9, p1, v2

    #@22
    invoke-direct {p0, v1, v9}, Ljava/text/AttributedString;->appendContents(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V

    #@25
    .line 85
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 89
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2b
    move-result-object v9

    #@2c
    iput-object v9, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@2e
    .line 91
    iget-object v9, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@30
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@33
    move-result v9

    #@34
    if-lez v9, :cond_1

    #@36
    .line 94
    const/4 v7, 0x0

    #@37
    .line 95
    .local v7, "offset":I
    const/4 v6, 0x0

    #@38
    .line 97
    .local v6, "last":Ljava/util/Map;
    const/4 v2, 0x0

    #@39
    .end local v6    # "last":Ljava/util/Map;
    :goto_1
    array-length v9, p1

    #@3a
    if-ge v2, v9, :cond_1

    #@3c
    .line 98
    aget-object v5, p1, v2

    #@3e
    .line 99
    .local v5, "iterator":Ljava/text/AttributedCharacterIterator;
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    #@41
    move-result v8

    #@42
    .line 100
    .local v8, "start":I
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    #@45
    move-result v3

    #@46
    .line 101
    .local v3, "end":I
    move v4, v8

    #@47
    .line 103
    .local v4, "index":I
    :goto_2
    if-ge v4, v3, :cond_5

    #@49
    .line 104
    invoke-interface {v5, v4}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    #@4c
    .line 106
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    #@4f
    move-result-object v0

    #@50
    .line 108
    .local v0, "attrs":Ljava/util/Map;
    invoke-static {v6, v0}, Ljava/text/AttributedString;->mapsDiffer(Ljava/util/Map;Ljava/util/Map;)Z

    #@53
    move-result v9

    #@54
    if-eqz v9, :cond_4

    #@56
    .line 109
    sub-int v9, v4, v8

    #@58
    add-int/2addr v9, v7

    #@59
    invoke-direct {p0, v0, v9}, Ljava/text/AttributedString;->setAttributes(Ljava/util/Map;I)V

    #@5c
    .line 111
    :cond_4
    move-object v6, v0

    #@5d
    .line 112
    .local v6, "last":Ljava/util/Map;
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    #@60
    move-result v4

    #@61
    goto :goto_2

    #@62
    .line 114
    .end local v0    # "attrs":Ljava/util/Map;
    .end local v6    # "last":Ljava/util/Map;
    :cond_5
    sub-int v9, v3, v8

    #@64
    add-int/2addr v7, v9

    #@65
    .line 97
    add-int/lit8 v2, v2, 0x1

    #@67
    goto :goto_1
.end method

.method private declared-synchronized addAttributeImpl(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 3
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 404
    :try_start_0
    iget v2, p0, Ljava/text/AttributedString;->runCount:I

    #@3
    if-nez v2, :cond_0

    #@5
    .line 405
    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    #@8
    .line 409
    :cond_0
    invoke-direct {p0, p3}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    #@b
    move-result v0

    #@c
    .line 410
    .local v0, "beginRunIndex":I
    invoke-direct {p0, p4}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    #@f
    move-result v1

    #@10
    .line 412
    .local v1, "endRunIndex":I
    invoke-direct {p0, p1, p2, v0, v1}, Ljava/text/AttributedString;->addAttributeRunData(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit p0

    #@14
    .line 401
    return-void

    #@15
    .end local v0    # "beginRunIndex":I
    .end local v1    # "endRunIndex":I
    :catchall_0
    move-exception v2

    #@16
    monitor-exit p0

    #@17
    throw v2
.end method

.method private addAttributeRunData(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 7
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "beginRunIndex"    # I
    .param p4, "endRunIndex"    # I

    #@0
    .prologue
    .line 511
    move v1, p3

    #@1
    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_2

    #@3
    .line 512
    const/4 v2, -0x1

    #@4
    .line 513
    .local v2, "keyValueIndex":I
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@6
    aget-object v6, v6, v1

    #@8
    if-nez v6, :cond_0

    #@a
    .line 514
    new-instance v4, Ljava/util/Vector;

    #@c
    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    #@f
    .line 515
    .local v4, "newRunAttributes":Ljava/util/Vector;
    new-instance v3, Ljava/util/Vector;

    #@11
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    #@14
    .line 516
    .local v3, "newRunAttributeValues":Ljava/util/Vector;
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@16
    aput-object v4, v6, v1

    #@18
    .line 517
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    #@1a
    aput-object v3, v6, v1

    #@1c
    .line 523
    .end local v3    # "newRunAttributeValues":Ljava/util/Vector;
    .end local v4    # "newRunAttributes":Ljava/util/Vector;
    :goto_1
    const/4 v6, -0x1

    #@1d
    if-ne v2, v6, :cond_1

    #@1f
    .line 525
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@21
    aget-object v6, v6, v1

    #@23
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    #@26
    move-result v5

    #@27
    .line 526
    .local v5, "oldSize":I
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@29
    aget-object v6, v6, v1

    #@2b
    invoke-virtual {v6, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@2e
    .line 528
    :try_start_0
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    #@30
    aget-object v6, v6, v1

    #@32
    invoke-virtual {v6, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 511
    .end local v5    # "oldSize":I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_0

    #@38
    .line 520
    :cond_0
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@3a
    aget-object v6, v6, v1

    #@3c
    invoke-virtual {v6, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    #@3f
    move-result v2

    #@40
    goto :goto_1

    #@41
    .line 530
    .restart local v5    # "oldSize":I
    :catch_0
    move-exception v0

    #@42
    .line 531
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@44
    aget-object v6, v6, v1

    #@46
    invoke-virtual {v6, v5}, Ljava/util/Vector;->setSize(I)V

    #@49
    .line 532
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    #@4b
    aget-object v6, v6, v1

    #@4d
    invoke-virtual {v6, v5}, Ljava/util/Vector;->setSize(I)V

    #@50
    goto :goto_2

    #@51
    .line 536
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "oldSize":I
    :cond_1
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    #@53
    aget-object v6, v6, v1

    #@55
    invoke-virtual {v6, v2, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@58
    goto :goto_2

    #@59
    .line 509
    .end local v2    # "keyValueIndex":I
    :cond_2
    return-void
.end method

.method private final appendContents(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V
    .locals 4
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "iterator"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 679
    invoke-interface {p2}, Ljava/text/CharacterIterator;->getBeginIndex()I

    #@3
    move-result v1

    #@4
    .line 680
    .local v1, "index":I
    invoke-interface {p2}, Ljava/text/CharacterIterator;->getEndIndex()I

    #@7
    move-result v0

    #@8
    .local v0, "end":I
    move v2, v1

    #@9
    .line 682
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@b
    .line 683
    add-int/lit8 v1, v2, 0x1

    #@d
    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-interface {p2, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@10
    .line 684
    invoke-interface {p2}, Ljava/text/CharacterIterator;->current()C

    #@13
    move-result v3

    #@14
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@17
    move v2, v1

    #@18
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    #@19
    .line 678
    :cond_0
    return-void
.end method

.method private attributeValuesMatch(Ljava/util/Set;II)Z
    .locals 4
    .param p1, "attributes"    # Ljava/util/Set;
    .param p2, "runIndex1"    # I
    .param p3, "runIndex2"    # I

    #@0
    .prologue
    .line 654
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .line 655
    .local v0, "iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 656
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/text/AttributedCharacterIterator$Attribute;

    #@10
    .line 657
    .local v1, "key":Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-direct {p0, v1, p2}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    invoke-direct {p0, v1, p3}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    invoke-static {v2, v3}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_0

    #@1e
    .line 658
    const/4 v2, 0x0

    #@1f
    return v2

    #@20
    .line 661
    .end local v1    # "key":Ljava/text/AttributedCharacterIterator$Attribute;
    :cond_1
    const/4 v2, 0x1

    #@21
    return v2
.end method

.method private charAt(I)C
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 596
    iget-object v0, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private final createRunAttributeDataVectors()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0xa

    #@2
    .line 417
    new-array v2, v3, [I

    #@4
    .line 418
    .local v2, "newRunStarts":[I
    new-array v1, v3, [Ljava/util/Vector;

    #@6
    .line 419
    .local v1, "newRunAttributes":[Ljava/util/Vector;
    new-array v0, v3, [Ljava/util/Vector;

    #@8
    .line 420
    .local v0, "newRunAttributeValues":[Ljava/util/Vector;
    iput-object v2, p0, Ljava/text/AttributedString;->runStarts:[I

    #@a
    .line 421
    iput-object v1, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@c
    .line 422
    iput-object v0, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    #@e
    .line 423
    iput v3, p0, Ljava/text/AttributedString;->runArraySize:I

    #@10
    .line 424
    const/4 v3, 0x1

    #@11
    iput v3, p0, Ljava/text/AttributedString;->runCount:I

    #@13
    .line 415
    return-void
.end method

.method private final ensureRunBreak(I)I
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 429
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Ljava/text/AttributedString;->ensureRunBreak(IZ)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private final ensureRunBreak(IZ)I
    .locals 13
    .param p1, "offset"    # I
    .param p2, "copyAttrs"    # Z

    #@0
    .prologue
    .line 444
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    #@3
    move-result v10

    #@4
    if-ne p1, v10, :cond_0

    #@6
    .line 445
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    #@8
    return v10

    #@9
    .line 449
    :cond_0
    const/4 v9, 0x0

    #@a
    .line 450
    .local v9, "runIndex":I
    :goto_0
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    #@c
    if-ge v9, v10, :cond_1

    #@e
    iget-object v10, p0, Ljava/text/AttributedString;->runStarts:[I

    #@10
    aget v10, v10, v9

    #@12
    if-ge v10, p1, :cond_1

    #@14
    .line 451
    add-int/lit8 v9, v9, 0x1

    #@16
    goto :goto_0

    #@17
    .line 455
    :cond_1
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    #@19
    if-ge v9, v10, :cond_2

    #@1b
    iget-object v10, p0, Ljava/text/AttributedString;->runStarts:[I

    #@1d
    aget v10, v10, v9

    #@1f
    if-ne v10, p1, :cond_2

    #@21
    .line 456
    return v9

    #@22
    .line 461
    :cond_2
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    #@24
    iget v11, p0, Ljava/text/AttributedString;->runArraySize:I

    #@26
    if-ne v10, v11, :cond_4

    #@28
    .line 462
    iget v10, p0, Ljava/text/AttributedString;->runArraySize:I

    #@2a
    add-int/lit8 v1, v10, 0xa

    #@2c
    .line 463
    .local v1, "newArraySize":I
    new-array v6, v1, [I

    #@2e
    .line 464
    .local v6, "newRunStarts":[I
    new-array v5, v1, [Ljava/util/Vector;

    #@30
    .line 465
    .local v5, "newRunAttributes":[Ljava/util/Vector;
    new-array v3, v1, [Ljava/util/Vector;

    #@32
    .line 466
    .local v3, "newRunAttributeValues":[Ljava/util/Vector;
    const/4 v0, 0x0

    #@33
    .local v0, "i":I
    :goto_1
    iget v10, p0, Ljava/text/AttributedString;->runArraySize:I

    #@35
    if-ge v0, v10, :cond_3

    #@37
    .line 467
    iget-object v10, p0, Ljava/text/AttributedString;->runStarts:[I

    #@39
    aget v10, v10, v0

    #@3b
    aput v10, v6, v0

    #@3d
    .line 468
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@3f
    aget-object v10, v10, v0

    #@41
    aput-object v10, v5, v0

    #@43
    .line 469
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    #@45
    aget-object v10, v10, v0

    #@47
    aput-object v10, v3, v0

    #@49
    .line 466
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 471
    :cond_3
    iput-object v6, p0, Ljava/text/AttributedString;->runStarts:[I

    #@4e
    .line 472
    iput-object v5, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@50
    .line 473
    iput-object v3, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    #@52
    .line 474
    iput v1, p0, Ljava/text/AttributedString;->runArraySize:I

    #@54
    .line 479
    .end local v0    # "i":I
    .end local v1    # "newArraySize":I
    .end local v3    # "newRunAttributeValues":[Ljava/util/Vector;
    .end local v5    # "newRunAttributes":[Ljava/util/Vector;
    .end local v6    # "newRunStarts":[I
    :cond_4
    const/4 v4, 0x0

    #@55
    .line 480
    .local v4, "newRunAttributes":Ljava/util/Vector;
    const/4 v2, 0x0

    #@56
    .line 482
    .local v2, "newRunAttributeValues":Ljava/util/Vector;
    if-eqz p2, :cond_6

    #@58
    .line 483
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@5a
    add-int/lit8 v11, v9, -0x1

    #@5c
    aget-object v8, v10, v11

    #@5e
    .line 484
    .local v8, "oldRunAttributes":Ljava/util/Vector;
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    #@60
    add-int/lit8 v11, v9, -0x1

    #@62
    aget-object v7, v10, v11

    #@64
    .line 485
    .local v7, "oldRunAttributeValues":Ljava/util/Vector;
    if-eqz v8, :cond_5

    #@66
    .line 486
    invoke-virtual {v8}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    #@69
    move-result-object v4

    #@6a
    .end local v4    # "newRunAttributes":Ljava/util/Vector;
    check-cast v4, Ljava/util/Vector;

    #@6c
    .line 488
    :cond_5
    if-eqz v7, :cond_6

    #@6e
    .line 489
    invoke-virtual {v7}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    #@71
    move-result-object v2

    #@72
    .end local v2    # "newRunAttributeValues":Ljava/util/Vector;
    check-cast v2, Ljava/util/Vector;

    #@74
    .line 494
    .end local v7    # "oldRunAttributeValues":Ljava/util/Vector;
    .end local v8    # "oldRunAttributes":Ljava/util/Vector;
    :cond_6
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    #@76
    add-int/lit8 v10, v10, 0x1

    #@78
    iput v10, p0, Ljava/text/AttributedString;->runCount:I

    #@7a
    .line 495
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    #@7c
    add-int/lit8 v0, v10, -0x1

    #@7e
    .restart local v0    # "i":I
    :goto_2
    if-le v0, v9, :cond_7

    #@80
    .line 496
    iget-object v10, p0, Ljava/text/AttributedString;->runStarts:[I

    #@82
    iget-object v11, p0, Ljava/text/AttributedString;->runStarts:[I

    #@84
    add-int/lit8 v12, v0, -0x1

    #@86
    aget v11, v11, v12

    #@88
    aput v11, v10, v0

    #@8a
    .line 497
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@8c
    iget-object v11, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@8e
    add-int/lit8 v12, v0, -0x1

    #@90
    aget-object v11, v11, v12

    #@92
    aput-object v11, v10, v0

    #@94
    .line 498
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    #@96
    iget-object v11, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    #@98
    add-int/lit8 v12, v0, -0x1

    #@9a
    aget-object v11, v11, v12

    #@9c
    aput-object v11, v10, v0

    #@9e
    .line 495
    add-int/lit8 v0, v0, -0x1

    #@a0
    goto :goto_2

    #@a1
    .line 500
    :cond_7
    iget-object v10, p0, Ljava/text/AttributedString;->runStarts:[I

    #@a3
    aput p1, v10, v9

    #@a5
    .line 501
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@a7
    aput-object v4, v10, v9

    #@a9
    .line 502
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    #@ab
    aput-object v2, v10, v9

    #@ad
    .line 504
    return v9
.end method

.method private declared-synchronized getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;
    .locals 5
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "runIndex"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 600
    :try_start_0
    iget-object v3, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@4
    aget-object v2, v3, p2

    #@6
    .line 601
    .local v2, "currentRunAttributes":Ljava/util/Vector;
    iget-object v3, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    #@8
    aget-object v1, v3, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 602
    .local v1, "currentRunAttributeValues":Ljava/util/Vector;
    if-nez v2, :cond_0

    #@c
    monitor-exit p0

    #@d
    .line 603
    return-object v4

    #@e
    .line 605
    :cond_0
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    #@11
    move-result v0

    #@12
    .line 606
    .local v0, "attributeIndex":I
    const/4 v3, -0x1

    #@13
    if-eq v0, v3, :cond_1

    #@15
    .line 607
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    move-result-object v3

    #@19
    monitor-exit p0

    #@1a
    return-object v3

    #@1b
    :cond_1
    monitor-exit p0

    #@1c
    .line 610
    return-object v4

    #@1d
    .end local v0    # "attributeIndex":I
    .end local v1    # "currentRunAttributeValues":Ljava/util/Vector;
    .end local v2    # "currentRunAttributes":Ljava/util/Vector;
    :catchall_0
    move-exception v3

    #@1e
    monitor-exit p0

    #@1f
    throw v3
.end method

.method private getAttributeCheckRange(Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;
    .locals 8
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "runIndex"    # I
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 616
    invoke-direct {p0, p1, p2}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    #@4
    move-result-object v4

    #@5
    .line 617
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/text/Annotation;

    #@7
    if-eqz v5, :cond_5

    #@9
    .line 619
    if-lez p3, :cond_1

    #@b
    .line 620
    move v0, p2

    #@c
    .line 621
    .local v0, "currIndex":I
    iget-object v5, p0, Ljava/text/AttributedString;->runStarts:[I

    #@e
    aget v2, v5, p2

    #@10
    .line 622
    .local v2, "runStart":I
    :goto_0
    if-lt v2, p3, :cond_0

    #@12
    .line 623
    add-int/lit8 v5, v0, -0x1

    #@14
    invoke-direct {p0, p1, v5}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    #@17
    move-result-object v5

    #@18
    invoke-static {v4, v5}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result v5

    #@1c
    .line 622
    if-eqz v5, :cond_0

    #@1e
    .line 624
    add-int/lit8 v0, v0, -0x1

    #@20
    .line 625
    iget-object v5, p0, Ljava/text/AttributedString;->runStarts:[I

    #@22
    aget v2, v5, v0

    #@24
    goto :goto_0

    #@25
    .line 627
    :cond_0
    if-ge v2, p3, :cond_1

    #@27
    .line 629
    return-object v7

    #@28
    .line 632
    .end local v0    # "currIndex":I
    .end local v2    # "runStart":I
    :cond_1
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    #@2b
    move-result v3

    #@2c
    .line 633
    .local v3, "textLength":I
    if-ge p4, v3, :cond_5

    #@2e
    .line 634
    move v0, p2

    #@2f
    .line 635
    .restart local v0    # "currIndex":I
    iget v5, p0, Ljava/text/AttributedString;->runCount:I

    #@31
    add-int/lit8 v5, v5, -0x1

    #@33
    if-ge p2, v5, :cond_2

    #@35
    iget-object v5, p0, Ljava/text/AttributedString;->runStarts:[I

    #@37
    add-int/lit8 v6, p2, 0x1

    #@39
    aget v1, v5, v6

    #@3b
    .line 636
    .local v1, "runLimit":I
    :goto_1
    if-gt v1, p4, :cond_4

    #@3d
    .line 637
    add-int/lit8 v5, v0, 0x1

    #@3f
    invoke-direct {p0, p1, v5}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    #@42
    move-result-object v5

    #@43
    invoke-static {v4, v5}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@46
    move-result v5

    #@47
    .line 636
    if-eqz v5, :cond_4

    #@49
    .line 638
    add-int/lit8 v0, v0, 0x1

    #@4b
    .line 639
    iget v5, p0, Ljava/text/AttributedString;->runCount:I

    #@4d
    add-int/lit8 v5, v5, -0x1

    #@4f
    if-ge v0, v5, :cond_3

    #@51
    iget-object v5, p0, Ljava/text/AttributedString;->runStarts:[I

    #@53
    add-int/lit8 v6, v0, 0x1

    #@55
    aget v1, v5, v6

    #@57
    goto :goto_1

    #@58
    .line 635
    .end local v1    # "runLimit":I
    :cond_2
    move v1, v3

    #@59
    .restart local v1    # "runLimit":I
    goto :goto_1

    #@5a
    .line 639
    :cond_3
    move v1, v3

    #@5b
    goto :goto_1

    #@5c
    .line 641
    :cond_4
    if-le v1, p4, :cond_5

    #@5e
    .line 643
    return-object v7

    #@5f
    .line 649
    .end local v0    # "currIndex":I
    .end local v1    # "runLimit":I
    .end local v3    # "textLength":I
    :cond_5
    return-object v4
.end method

.method private static mapsDiffer(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 3
    .param p0, "last"    # Ljava/util/Map;
    .param p1, "attrs"    # Ljava/util/Map;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 721
    if-nez p0, :cond_1

    #@4
    .line 722
    if-eqz p1, :cond_0

    #@6
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@9
    move-result v2

    #@a
    if-lez v2, :cond_0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    move v0, v1

    #@e
    goto :goto_0

    #@f
    .line 724
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_2

    #@15
    :goto_1
    return v1

    #@16
    :cond_2
    move v1, v0

    #@17
    goto :goto_1
.end method

.method private setAttributes(Ljava/util/Map;I)V
    .locals 8
    .param p1, "attrs"    # Ljava/util/Map;
    .param p2, "offset"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 694
    iget v6, p0, Ljava/text/AttributedString;->runCount:I

    #@3
    if-nez v6, :cond_0

    #@5
    .line 695
    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    #@8
    .line 698
    :cond_0
    invoke-direct {p0, p2, v7}, Ljava/text/AttributedString;->ensureRunBreak(IZ)I

    #@b
    move-result v1

    #@c
    .line 701
    .local v1, "index":I
    if-eqz p1, :cond_2

    #@e
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@11
    move-result v5

    #@12
    .local v5, "size":I
    if-lez v5, :cond_2

    #@14
    .line 702
    new-instance v3, Ljava/util/Vector;

    #@16
    invoke-direct {v3, v5}, Ljava/util/Vector;-><init>(I)V

    #@19
    .line 703
    .local v3, "runAttrs":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    #@1b
    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    #@1e
    .line 704
    .local v4, "runValues":Ljava/util/Vector;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@21
    move-result-object v6

    #@22
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v2

    #@26
    .line 706
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v6

    #@2a
    if-eqz v6, :cond_1

    #@2c
    .line 707
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Ljava/util/Map$Entry;

    #@32
    .line 709
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@39
    .line 710
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@40
    goto :goto_0

    #@41
    .line 712
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_1
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@43
    aput-object v3, v6, v1

    #@45
    .line 713
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    #@47
    aput-object v4, v6, v1

    #@49
    .line 693
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "runAttrs":Ljava/util/Vector;
    .end local v4    # "runValues":Ljava/util/Vector;
    .end local v5    # "size":I
    :cond_2
    return-void
.end method

.method private static final valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value1"    # Ljava/lang/Object;
    .param p1, "value2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 666
    if-nez p0, :cond_1

    #@2
    .line 667
    if-nez p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0

    #@8
    .line 669
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method


# virtual methods
.method public addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 3
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 318
    if-nez p1, :cond_0

    #@3
    .line 319
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v1

    #@9
    .line 322
    :cond_0
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    #@c
    move-result v0

    #@d
    .line 323
    .local v0, "len":I
    if-nez v0, :cond_1

    #@f
    .line 324
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v2, "Can\'t add attribute to 0-length text"

    #@14
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 327
    :cond_1
    invoke-direct {p0, p1, p2, v1, v0}, Ljava/text/AttributedString;->addAttributeImpl(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    #@1b
    .line 316
    return-void
.end method

.method public addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 2
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    #@0
    .prologue
    .line 344
    if-nez p1, :cond_0

    #@2
    .line 345
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 348
    :cond_0
    if-ltz p3, :cond_1

    #@a
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    #@d
    move-result v0

    #@e
    if-le p4, v0, :cond_2

    #@10
    .line 349
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "Invalid substring range"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 348
    :cond_2
    if-ge p3, p4, :cond_1

    #@1b
    .line 352
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/text/AttributedString;->addAttributeImpl(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    #@1e
    .line 342
    return-void
.end method

.method public addAttributes(Ljava/util/Map;II)V
    .locals 6
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 371
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    if-nez p1, :cond_0

    #@2
    .line 372
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 375
    :cond_0
    if-ltz p2, :cond_1

    #@a
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    #@d
    move-result v4

    #@e
    if-le p3, v4, :cond_2

    #@10
    .line 376
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v5, "Invalid substring range"

    #@15
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v4

    #@19
    .line 375
    :cond_2
    if-gt p2, p3, :cond_1

    #@1b
    .line 378
    if-ne p2, p3, :cond_4

    #@1d
    .line 379
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_3

    #@23
    .line 380
    return-void

    #@24
    .line 381
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@26
    const-string/jumbo v5, "Can\'t add attribute to 0-length text"

    #@29
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v4

    #@2d
    .line 385
    :cond_4
    iget v4, p0, Ljava/text/AttributedString;->runCount:I

    #@2f
    if-nez v4, :cond_5

    #@31
    .line 386
    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    #@34
    .line 390
    :cond_5
    invoke-direct {p0, p2}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    #@37
    move-result v0

    #@38
    .line 391
    .local v0, "beginRunIndex":I
    invoke-direct {p0, p3}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    #@3b
    move-result v1

    #@3c
    .line 393
    .local v1, "endRunIndex":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3f
    move-result-object v4

    #@40
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@43
    move-result-object v3

    #@44
    .line 394
    .local v3, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@47
    move-result v4

    #@48
    if-eqz v4, :cond_6

    #@4a
    .line 395
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d
    move-result-object v2

    #@4e
    check-cast v2, Ljava/util/Map$Entry;

    #@50
    .line 396
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@53
    move-result-object v4

    #@54
    check-cast v4, Ljava/text/AttributedCharacterIterator$Attribute;

    #@56
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@59
    move-result-object v5

    #@5a
    invoke-direct {p0, v4, v5, v0, v1}, Ljava/text/AttributedString;->addAttributeRunData(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    #@5d
    goto :goto_0

    #@5e
    .line 369
    .end local v2    # "entry":Ljava/util/Map$Entry;
    :cond_6
    return-void
.end method

.method public getIterator()Ljava/text/AttributedCharacterIterator;
    .locals 3

    #@0
    .prologue
    .line 548
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {p0, v1, v2, v0}, Ljava/text/AttributedString;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getIterator([Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/text/AttributedCharacterIterator;
    .locals 2
    .param p1, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;

    #@0
    .prologue
    .line 563
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, v1, v0}, Ljava/text/AttributedString;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;
    .locals 1
    .param p1, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    #@0
    .prologue
    .line 583
    new-instance v0, Ljava/text/AttributedString$AttributedStringIterator;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Ljava/text/AttributedString$AttributedStringIterator;-><init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V

    #@5
    return-object v0
.end method

.method length()I
    .locals 1

    #@0
    .prologue
    .line 592
    iget-object v0, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    return v0
.end method
