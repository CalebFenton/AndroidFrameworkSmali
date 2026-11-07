.class public Ljava/text/AttributedString;
.super Ljava/lang/Object;
.source "AttributedString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/AttributedString$AttributedStringIterator;,
        Ljava/text/AttributedString$AttributeMap;
    }
.end annotation


# static fields
.field private static final blacklist INITIAL_CAPACITY:I = 0xa


# instance fields
.field greylist-max-o runAttributeValues:[Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o runAttributes:[Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Vector<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o runCount:I

.field greylist-max-o runStarts:[I

.field greylist-max-o text:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mattributeValuesMatch(Ljava/text/AttributedString;Ljava/util/Set;II)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/text/AttributedString;->attributeValuesMatch(Ljava/util/Set;II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcharAt(Ljava/text/AttributedString;I)C
    .registers 2

    invoke-direct {p0, p1}, Ljava/text/AttributedString;->charAt(I)C

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetAttribute(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetAttributeCheckRange(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/text/AttributedString;->getAttributeCheckRange(Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvaluesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    if-eqz p1, :cond_8

    .line 126
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 127
    return-void

    .line 124
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;)V"
        }
    .end annotation

    .line 141
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    if-eqz p1, :cond_60

    if-eqz p2, :cond_60

    .line 145
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 148
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 149
    return-void

    .line 150
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t add attribute to 0-length text"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_1e
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    .line 154
    .local v0, "attributeCount":I
    if-lez v0, :cond_5f

    .line 155
    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    .line 156
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    .line 157
    .local v1, "newRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(I)V

    .line 158
    .local v2, "newRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    iget-object v3, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 159
    iget-object v3, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v2, v3, v4

    .line 161
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 162
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;>;"
    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 163
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 164
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 165
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 166
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    goto :goto_42

    .line 168
    .end local v1    # "newRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v2    # "newRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;>;"
    :cond_5f
    return-void

    .line 143
    .end local v0    # "attributeCount":I
    :cond_60
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/text/AttributedCharacterIterator;)V
    .registers 5
    .param p1, "text"    # Ljava/text/AttributedCharacterIterator;

    .line 180
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V

    .line 181
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/text/AttributedCharacterIterator;II)V
    .registers 5
    .param p1, "text"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V

    .line 204
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V
    .registers 16
    .param p1, "text"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    if-eqz p1, :cond_bb

    .line 237
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v0

    .line 238
    .local v0, "textBeginIndex":I
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v1

    .line 239
    .local v1, "textEndIndex":I
    if-lt p2, v0, :cond_b3

    if-gt p3, v1, :cond_b3

    if-gt p2, p3, :cond_b3

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v2, "textBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p1, p2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 245
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v3

    .local v3, "c":C
    :goto_1f
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v4

    if-ge v4, p3, :cond_2d

    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v3

    goto :goto_1f

    .line 247
    .end local v3    # "c":C
    :cond_2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 249
    if-ne p2, p3, :cond_36

    .line 250
    return-void

    .line 253
    :cond_36
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 254
    .local v3, "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    if-nez p4, :cond_45

    .line 255
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_58

    .line 257
    :cond_45
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_46
    array-length v5, p4

    if-ge v4, v5, :cond_51

    .line 258
    aget-object v5, p4, v4

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 259
    .end local v4    # "i":I
    :cond_51
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    .line 261
    :goto_58
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 262
    return-void

    .line 267
    :cond_5f
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 268
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :goto_63
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 269
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 270
    .local v5, "attributeKey":Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 271
    :goto_72
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v6

    if-ge v6, p3, :cond_b1

    .line 272
    invoke-interface {p1, v5}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v6

    .line 273
    .local v6, "start":I
    invoke-interface {p1, v5}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v7

    .line 274
    .local v7, "limit":I
    invoke-interface {p1, v5}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v8

    .line 276
    .local v8, "value":Ljava/lang/Object;
    if-eqz v8, :cond_ad

    .line 277
    instance-of v9, v8, Ljava/text/Annotation;

    if-eqz v9, :cond_99

    .line 278
    if-lt v6, p2, :cond_96

    if-gt v7, p3, :cond_96

    .line 279
    sub-int v9, v6, p2

    sub-int v10, v7, p2

    invoke-virtual {p0, v5, v8, v9, v10}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_ad

    .line 281
    :cond_96
    if-le v7, p3, :cond_ad

    .line 282
    goto :goto_b1

    .line 287
    :cond_99
    if-lt v6, p3, :cond_9c

    .line 288
    goto :goto_b1

    .line 289
    :cond_9c
    if-le v7, p2, :cond_ad

    .line 291
    if-ge v6, p2, :cond_a1

    .line 292
    move v6, p2

    .line 293
    :cond_a1
    if-le v7, p3, :cond_a4

    .line 294
    move v7, p3

    .line 295
    :cond_a4
    if-eq v6, v7, :cond_ad

    .line 296
    sub-int v9, v6, p2

    sub-int v10, v7, p2

    invoke-virtual {p0, v5, v8, v9, v10}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 301
    :cond_ad
    :goto_ad
    invoke-interface {p1, v7}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 302
    .end local v6    # "start":I
    .end local v7    # "limit":I
    .end local v8    # "value":Ljava/lang/Object;
    goto :goto_72

    .line 303
    .end local v5    # "attributeKey":Ljava/text/AttributedCharacterIterator$Attribute;
    :cond_b1
    :goto_b1
    goto :goto_63

    .line 304
    :cond_b2
    return-void

    .line 240
    .end local v2    # "textBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v4    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :cond_b3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid substring range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    .end local v0    # "textBeginIndex":I
    .end local v1    # "textEndIndex":I
    :cond_bb
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method constructor greylist-max-o <init>([Ljava/text/AttributedCharacterIterator;)V
    .registers 12
    .param p1, "iterators"    # [Ljava/text/AttributedCharacterIterator;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-eqz p1, :cond_5f

    .line 76
    array-length v0, p1

    if-nez v0, :cond_d

    .line 77
    const-string v0, ""

    iput-object v0, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    goto :goto_5e

    .line 81
    :cond_d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "counter":I
    :goto_13
    array-length v2, p1

    if-ge v1, v2, :cond_1e

    .line 83
    aget-object v2, p1, v1

    invoke-direct {p0, v0, v2}, Ljava/text/AttributedString;->appendContents(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 86
    .end local v1    # "counter":I
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "offset":I
    const/4 v2, 0x0

    .line 94
    .local v2, "last":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, "counter":I
    :goto_2f
    array-length v4, p1

    if-ge v3, v4, :cond_5e

    .line 95
    aget-object v4, p1, v3

    .line 96
    .local v4, "iterator":Ljava/text/AttributedCharacterIterator;
    invoke-interface {v4}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v5

    .line 97
    .local v5, "start":I
    invoke-interface {v4}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v6

    .line 98
    .local v6, "end":I
    move v7, v5

    .line 100
    .local v7, "index":I
    :goto_3d
    if-ge v7, v6, :cond_58

    .line 101
    invoke-interface {v4, v7}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 103
    invoke-interface {v4}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v8

    .line 105
    .local v8, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    invoke-static {v2, v8}, Ljava/text/AttributedString;->mapsDiffer(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v9

    if-eqz v9, :cond_52

    .line 106
    sub-int v9, v7, v5

    add-int/2addr v9, v1

    invoke-direct {p0, v8, v9}, Ljava/text/AttributedString;->setAttributes(Ljava/util/Map;I)V

    .line 108
    :cond_52
    move-object v2, v8

    .line 109
    invoke-interface {v4}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v7

    .line 110
    .end local v8    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    goto :goto_3d

    .line 111
    :cond_58
    sub-int v8, v6, v5

    add-int/2addr v1, v8

    .line 94
    .end local v4    # "iterator":Ljava/text/AttributedCharacterIterator;
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v7    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 115
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "offset":I
    .end local v2    # "last":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    .end local v3    # "counter":I
    :cond_5e
    :goto_5e
    return-void

    .line 74
    :cond_5f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Iterators must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized greylist-max-o addAttributeImpl(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .registers 7
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    monitor-enter p0

    .line 403
    :try_start_1
    iget v0, p0, Ljava/text/AttributedString;->runCount:I

    if-nez v0, :cond_8

    .line 404
    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    .line 408
    .end local p0    # "this":Ljava/text/AttributedString;
    :cond_8
    invoke-direct {p0, p3}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result v0

    .line 409
    .local v0, "beginRunIndex":I
    invoke-direct {p0, p4}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result v1

    .line 411
    .local v1, "endRunIndex":I
    invoke-direct {p0, p1, p2, v0, v1}, Ljava/text/AttributedString;->addAttributeRunData(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 412
    monitor-exit p0

    return-void

    .line 402
    .end local v0    # "beginRunIndex":I
    .end local v1    # "endRunIndex":I
    .end local p1    # "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local p2    # "value":Ljava/lang/Object;
    .end local p3    # "beginIndex":I
    .end local p4    # "endIndex":I
    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method private greylist-max-o addAttributeRunData(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .registers 10
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "beginRunIndex"    # I
    .param p4, "endRunIndex"    # I

    .line 516
    move v0, p3

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_59

    .line 517
    const/4 v1, -0x1

    .line 518
    .local v1, "keyValueIndex":I
    iget-object v2, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v2, v2, v0

    if-nez v2, :cond_1d

    .line 519
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 520
    .local v2, "newRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 521
    .local v3, "newRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    iget-object v4, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aput-object v2, v4, v0

    .line 522
    iget-object v4, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v3, v4, v0

    .line 523
    .end local v2    # "newRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v3    # "newRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    goto :goto_25

    .line 525
    :cond_1d
    iget-object v2, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 528
    :goto_25
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4f

    .line 530
    iget-object v2, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    .line 531
    .local v2, "oldSize":I
    iget-object v3, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 533
    :try_start_37
    iget-object v3, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v3, v3, v0

    invoke-virtual {v3, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3e} :catch_3f

    .line 538
    goto :goto_4e

    .line 535
    :catch_3f
    move-exception v3

    .line 536
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Ljava/util/Vector;->setSize(I)V

    .line 537
    iget-object v4, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Ljava/util/Vector;->setSize(I)V

    .line 539
    .end local v2    # "oldSize":I
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4e
    goto :goto_56

    .line 541
    :cond_4f
    iget-object v2, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 516
    .end local v1    # "keyValueIndex":I
    :goto_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 544
    .end local v0    # "i":I
    :cond_59
    return-void
.end method

.method private final greylist-max-o appendContents(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V
    .registers 6
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "iterator"    # Ljava/text/CharacterIterator;

    .line 684
    invoke-interface {p2}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    .line 685
    .local v0, "index":I
    invoke-interface {p2}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    .line 687
    .local v1, "end":I
    :goto_8
    if-ge v0, v1, :cond_18

    .line 688
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .local v2, "index":I
    invoke-interface {p2, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 689
    invoke-interface {p2}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v2

    goto :goto_8

    .line 691
    .end local v2    # "index":I
    .restart local v0    # "index":I
    :cond_18
    return-void
.end method

.method private greylist-max-o attributeValuesMatch(Ljava/util/Set;II)Z
    .registers 8
    .param p2, "runIndex1"    # I
    .param p3, "runIndex2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;II)Z"
        }
    .end annotation

    .line 659
    .local p1, "attributes":Ljava/util/Set;, "Ljava/util/Set<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 660
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 661
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 662
    .local v1, "key":Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-direct {p0, v1, p2}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, p3}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 663
    const/4 v2, 0x0

    return v2

    .line 665
    .end local v1    # "key":Ljava/text/AttributedCharacterIterator$Attribute;
    :cond_20
    goto :goto_4

    .line 666
    :cond_21
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o charAt(I)C
    .registers 3
    .param p1, "index"    # I

    .line 601
    iget-object v0, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private final greylist-max-o createRunAttributeDataVectors()V
    .registers 5

    .line 416
    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 419
    .local v1, "newRunStarts":[I
    new-array v2, v0, [Ljava/util/Vector;

    .line 422
    .local v2, "newRunAttributes":[Ljava/util/Vector;, "[Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    new-array v0, v0, [Ljava/util/Vector;

    .line 424
    .local v0, "newRunAttributeValues":[Ljava/util/Vector;, "[Ljava/util/Vector<Ljava/lang/Object;>;"
    iput-object v1, p0, Ljava/text/AttributedString;->runStarts:[I

    .line 425
    iput-object v2, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    .line 426
    iput-object v0, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    .line 427
    const/4 v3, 0x1

    iput v3, p0, Ljava/text/AttributedString;->runCount:I

    .line 428
    return-void
.end method

.method private final greylist-max-o ensureRunBreak(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 432
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/text/AttributedString;->ensureRunBreak(IZ)I

    move-result v0

    return v0
.end method

.method private final greylist-max-o ensureRunBreak(IZ)I
    .registers 11
    .param p1, "offset"    # I
    .param p2, "copyAttrs"    # Z

    .line 447
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 448
    iget v0, p0, Ljava/text/AttributedString;->runCount:I

    return v0

    .line 452
    :cond_9
    const/4 v0, 0x0

    .line 453
    .local v0, "runIndex":I
    :goto_a
    iget v1, p0, Ljava/text/AttributedString;->runCount:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v1, v1, v0

    if-ge v1, p1, :cond_17

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 458
    :cond_17
    iget v1, p0, Ljava/text/AttributedString;->runCount:I

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_22

    .line 459
    return v0

    .line 464
    :cond_22
    iget-object v1, p0, Ljava/text/AttributedString;->runStarts:[I

    array-length v1, v1

    .line 465
    .local v1, "currentCapacity":I
    iget v2, p0, Ljava/text/AttributedString;->runCount:I

    if-ne v2, v1, :cond_48

    .line 467
    shr-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v1

    .line 470
    .local v2, "newCapacity":I
    iget-object v3, p0, Ljava/text/AttributedString;->runStarts:[I

    .line 471
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 472
    .local v3, "newRunStarts":[I
    iget-object v4, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    .line 473
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/util/Vector;

    .line 474
    .local v4, "newRunAttributes":[Ljava/util/Vector;, "[Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget-object v5, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    .line 475
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/util/Vector;

    .line 477
    .local v5, "newRunAttributeValues":[Ljava/util/Vector;, "[Ljava/util/Vector<Ljava/lang/Object;>;"
    iput-object v3, p0, Ljava/text/AttributedString;->runStarts:[I

    .line 478
    iput-object v4, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    .line 479
    iput-object v5, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    .line 484
    .end local v2    # "newCapacity":I
    .end local v3    # "newRunStarts":[I
    .end local v4    # "newRunAttributes":[Ljava/util/Vector;, "[Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v5    # "newRunAttributeValues":[Ljava/util/Vector;, "[Ljava/util/Vector<Ljava/lang/Object;>;"
    :cond_48
    const/4 v2, 0x0

    .line 485
    .local v2, "newRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    const/4 v3, 0x0

    .line 487
    .local v3, "newRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    if-eqz p2, :cond_68

    .line 488
    iget-object v4, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    .line 489
    .local v4, "oldRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget-object v5, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    add-int/lit8 v6, v0, -0x1

    aget-object v5, v5, v6

    .line 490
    .local v5, "oldRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    if-eqz v4, :cond_60

    .line 491
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6, v4}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    move-object v2, v6

    .line 493
    :cond_60
    if-eqz v5, :cond_68

    .line 494
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6, v5}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    move-object v3, v6

    .line 499
    .end local v4    # "oldRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v5    # "oldRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    :cond_68
    iget v4, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/text/AttributedString;->runCount:I

    .line 500
    iget v4, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_72
    if-le v4, v0, :cond_95

    .line 501
    iget-object v5, p0, Ljava/text/AttributedString;->runStarts:[I

    iget-object v6, p0, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v7, v4, -0x1

    aget v6, v6, v7

    aput v6, v5, v4

    .line 502
    iget-object v5, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    add-int/lit8 v7, v4, -0x1

    aget-object v6, v6, v7

    aput-object v6, v5, v4

    .line 503
    iget-object v5, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    add-int/lit8 v7, v4, -0x1

    aget-object v6, v6, v7

    aput-object v6, v5, v4

    .line 500
    add-int/lit8 v4, v4, -0x1

    goto :goto_72

    .line 505
    .end local v4    # "i":I
    :cond_95
    iget-object v4, p0, Ljava/text/AttributedString;->runStarts:[I

    aput p1, v4, v0

    .line 506
    iget-object v4, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aput-object v2, v4, v0

    .line 507
    iget-object v4, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v3, v4, v0

    .line 509
    return v0
.end method

.method private declared-synchronized greylist-max-o getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;
    .registers 8
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "runIndex"    # I

    monitor-enter p0

    .line 605
    :try_start_1
    iget-object v0, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v0, v0, p2

    .line 606
    .local v0, "currentRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget-object v1, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v1, v1, p2
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1d

    .line 607
    .local v1, "currentRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 608
    monitor-exit p0

    return-object v2

    .line 610
    :cond_e
    :try_start_e
    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 611
    .local v3, "attributeIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1b

    .line 612
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1d

    monitor-exit p0

    return-object v2

    .line 615
    .end local p0    # "this":Ljava/text/AttributedString;
    :cond_1b
    monitor-exit p0

    return-object v2

    .line 604
    .end local v0    # "currentRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v1    # "currentRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    .end local v3    # "attributeIndex":I
    .end local p1    # "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local p2    # "runIndex":I
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method private greylist-max-o getAttributeCheckRange(Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;
    .registers 12
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "runIndex"    # I
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    .line 621
    invoke-direct {p0, p1, p2}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v0

    .line 622
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/text/Annotation;

    if-eqz v1, :cond_60

    .line 624
    const/4 v1, 0x0

    if-lez p3, :cond_28

    .line 625
    move v2, p2

    .line 626
    .local v2, "currIndex":I
    iget-object v3, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v3, v3, v2

    .line 627
    .local v3, "runStart":I
    :goto_10
    if-lt v3, p3, :cond_25

    add-int/lit8 v4, v2, -0x1

    .line 628
    invoke-direct {p0, p1, v4}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 629
    add-int/lit8 v2, v2, -0x1

    .line 630
    iget-object v4, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v3, v4, v2

    goto :goto_10

    .line 632
    :cond_25
    if-ge v3, p3, :cond_28

    .line 634
    return-object v1

    .line 637
    .end local v2    # "currIndex":I
    .end local v3    # "runStart":I
    :cond_28
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v2

    .line 638
    .local v2, "textLength":I
    if-ge p4, v2, :cond_60

    .line 639
    move v3, p2

    .line 640
    .local v3, "currIndex":I
    iget v4, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3c

    iget-object v4, p0, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v5, v3, 0x1

    aget v4, v4, v5

    goto :goto_3d

    :cond_3c
    move v4, v2

    .line 641
    .local v4, "runLimit":I
    :goto_3d
    if-gt v4, p4, :cond_5d

    add-int/lit8 v5, v3, 0x1

    .line 642
    invoke-direct {p0, p1, v5}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 643
    add-int/lit8 v3, v3, 0x1

    .line 644
    iget v5, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_5a

    iget-object v5, p0, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v6, v3, 0x1

    aget v5, v5, v6

    goto :goto_5b

    :cond_5a
    move v5, v2

    :goto_5b
    move v4, v5

    goto :goto_3d

    .line 646
    :cond_5d
    if-le v4, p4, :cond_60

    .line 648
    return-object v1

    .line 654
    .end local v2    # "textLength":I
    .end local v3    # "currIndex":I
    .end local v4    # "runLimit":I
    :cond_60
    return-object v0
.end method

.method private static greylist-max-o mapsDiffer(Ljava/util/Map;Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 726
    .local p0, "last":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v0, 0x1

    if-nez p0, :cond_e

    .line 727
    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 729
    :cond_e
    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o setAttributes(Ljava/util/Map;I)V
    .registers 10
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 699
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    iget v0, p0, Ljava/text/AttributedString;->runCount:I

    if-nez v0, :cond_7

    .line 700
    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    .line 703
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/text/AttributedString;->ensureRunBreak(IZ)I

    move-result v0

    .line 706
    .local v0, "index":I
    if-eqz p1, :cond_4c

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    move v2, v1

    .local v2, "size":I
    if-lez v1, :cond_4c

    .line 707
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 708
    .local v1, "runAttrs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v2}, Ljava/util/Vector;-><init>(I)V

    .line 709
    .local v3, "runValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 711
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;>;"
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 712
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 714
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 715
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 716
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    goto :goto_27

    .line 717
    :cond_44
    iget-object v5, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aput-object v1, v5, v0

    .line 718
    iget-object v5, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v3, v5, v0

    .line 720
    .end local v1    # "runAttrs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v2    # "size":I
    .end local v3    # "runValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;>;"
    :cond_4c
    return-void
.end method

.method private static final greylist-max-o valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "value1"    # Ljava/lang/Object;
    .param p1, "value2"    # Ljava/lang/Object;

    .line 671
    if-nez p0, :cond_8

    .line 672
    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 674
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist test-api addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .registers 6
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;

    .line 316
    if-eqz p1, :cond_15

    .line 320
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    .line 321
    .local v0, "len":I
    if-eqz v0, :cond_d

    .line 325
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Ljava/text/AttributedString;->addAttributeImpl(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 326
    return-void

    .line 322
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t add attribute to 0-length text"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    .end local v0    # "len":I
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .registers 7
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    .line 342
    if-eqz p1, :cond_18

    .line 346
    if-ltz p3, :cond_10

    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    if-gt p4, v0, :cond_10

    if-ge p3, p4, :cond_10

    .line 350
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/text/AttributedString;->addAttributeImpl(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 351
    return-void

    .line 347
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid substring range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api addAttributes(Ljava/util/Map;II)V
    .registers 10
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;II)V"
        }
    .end annotation

    .line 369
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    if-eqz p1, :cond_58

    .line 373
    if-ltz p2, :cond_50

    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    if-gt p3, v0, :cond_50

    if-gt p2, p3, :cond_50

    .line 376
    if-ne p2, p3, :cond_1d

    .line 377
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 378
    return-void

    .line 379
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t add attribute to 0-length text"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_1d
    iget v0, p0, Ljava/text/AttributedString;->runCount:I

    if-nez v0, :cond_24

    .line 384
    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    .line 388
    :cond_24
    invoke-direct {p0, p2}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result v0

    .line 389
    .local v0, "beginRunIndex":I
    invoke-direct {p0, p3}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result v1

    .line 391
    .local v1, "endRunIndex":I
    nop

    .line 392
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 393
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;>;"
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 394
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 395
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v4, v5, v0, v1}, Ljava/text/AttributedString;->addAttributeRunData(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 396
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    goto :goto_35

    .line 397
    :cond_4f
    return-void

    .line 374
    .end local v0    # "beginRunIndex":I
    .end local v1    # "endRunIndex":I
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;>;"
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid substring range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_58
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getIterator()Ljava/text/AttributedCharacterIterator;
    .registers 4

    .line 553
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Ljava/text/AttributedString;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIterator([Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/text/AttributedCharacterIterator;
    .registers 4
    .param p1, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;

    .line 568
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/text/AttributedString;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;
    .registers 5
    .param p1, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    .line 588
    new-instance v0, Ljava/text/AttributedString$AttributedStringIterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/text/AttributedString$AttributedStringIterator;-><init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V

    return-object v0
.end method

.method greylist-max-o length()I
    .registers 2

    .line 597
    iget-object v0, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method
