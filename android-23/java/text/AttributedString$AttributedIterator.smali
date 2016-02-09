.class Ljava/text/AttributedString$AttributedIterator;
.super Ljava/lang/Object;
.source "AttributedString.java"

# interfaces
.implements Ljava/text/AttributedCharacterIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/AttributedString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttributedIterator"
.end annotation


# instance fields
.field private attrString:Ljava/text/AttributedString;

.field private attributesAllowed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private begin:I

.field private end:I

.field private offset:I


# direct methods
.method constructor <init>(Ljava/text/AttributedString;)V
    .locals 2
    .param p1, "attrString"    # Ljava/text/AttributedString;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 64
    iput-object p1, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    #@6
    .line 65
    iput v1, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    #@8
    .line 66
    iget-object v0, p1, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@10
    .line 67
    iput v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@12
    .line 63
    return-void
.end method

.method constructor <init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V
    .locals 3
    .param p1, "attrString"    # Ljava/text/AttributedString;
    .param p2, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;
    .param p3, "begin"    # I
    .param p4, "end"    # I

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    if-ltz p3, :cond_0

    #@5
    iget-object v2, p1, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@a
    move-result v2

    #@b
    if-le p4, v2, :cond_1

    #@d
    .line 74
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@12
    throw v2

    #@13
    .line 73
    :cond_1
    if-gt p3, p4, :cond_0

    #@15
    .line 76
    iput p3, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    #@17
    .line 77
    iput p4, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@19
    .line 78
    iput p3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@1b
    .line 79
    iput-object p1, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    #@1d
    .line 80
    if-eqz p2, :cond_3

    #@1f
    .line 81
    new-instance v1, Ljava/util/HashSet;

    #@21
    .line 82
    array-length v2, p2

    #@22
    mul-int/lit8 v2, v2, 0x4

    #@24
    div-int/lit8 v2, v2, 0x3

    #@26
    add-int/lit8 v2, v2, 0x1

    #@28
    .line 81
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    #@2b
    .line 83
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    array-length v0, p2

    #@2c
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@2e
    if-ltz v0, :cond_2

    #@30
    .line 84
    aget-object v2, p2, v0

    #@32
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@35
    goto :goto_0

    #@36
    .line 86
    :cond_2
    iput-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    #@38
    .line 72
    .end local v0    # "i":I
    .end local v1    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :cond_3
    return-void
.end method

.method private currentValue(Ljava/util/List;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/text/AttributedString$Range;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    const/4 v2, 0x0

    #@1
    .line 207
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v0

    #@5
    .line 208
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/text/AttributedString$Range;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_2

    #@b
    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/text/AttributedString$Range;

    #@11
    .line 210
    .local v1, "range":Ljava/text/AttributedString$Range;
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@13
    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    #@15
    if-lt v3, v4, :cond_0

    #@17
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@19
    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    #@1b
    if-ge v3, v4, :cond_0

    #@1d
    .line 211
    invoke-direct {p0, v1}, Ljava/text/AttributedString$AttributedIterator;->inRange(Ljava/text/AttributedString$Range;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_1

    #@23
    iget-object v2, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    #@25
    :cond_1
    return-object v2

    #@26
    .line 214
    .end local v1    # "range":Ljava/text/AttributedString$Range;
    :cond_2
    return-object v2
.end method

.method private inRange(Ljava/text/AttributedString$Range;)Z
    .locals 4
    .param p1, "range"    # Ljava/text/AttributedString$Range;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 155
    iget-object v2, p1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    #@4
    instance-of v2, v2, Ljava/text/Annotation;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 156
    return v0

    #@9
    .line 158
    :cond_0
    iget v2, p1, Ljava/text/AttributedString$Range;->start:I

    #@b
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    #@d
    if-lt v2, v3, :cond_2

    #@f
    iget v2, p1, Ljava/text/AttributedString$Range;->start:I

    #@11
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@13
    if-ge v2, v3, :cond_2

    #@15
    .line 159
    iget v2, p1, Ljava/text/AttributedString$Range;->end:I

    #@17
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    #@19
    if-le v2, v3, :cond_2

    #@1b
    iget v2, p1, Ljava/text/AttributedString$Range;->end:I

    #@1d
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@1f
    if-gt v2, v3, :cond_1

    #@21
    .line 158
    :goto_0
    return v0

    #@22
    :cond_1
    move v0, v1

    #@23
    .line 159
    goto :goto_0

    #@24
    :cond_2
    move v0, v1

    #@25
    .line 158
    goto :goto_0
.end method

.method private inRange(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/text/AttributedString$Range;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    .line 164
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/text/AttributedString$Range;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_6

    #@c
    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/text/AttributedString$Range;

    #@12
    .line 166
    .local v1, "range":Ljava/text/AttributedString$Range;
    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    #@14
    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    #@16
    if-lt v4, v5, :cond_3

    #@18
    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    #@1a
    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@1c
    if-ge v4, v5, :cond_3

    #@1e
    .line 167
    iget-object v4, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    #@20
    instance-of v4, v4, Ljava/text/Annotation;

    #@22
    if-eqz v4, :cond_1

    #@24
    .line 168
    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    #@26
    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    #@28
    if-le v4, v5, :cond_2

    #@2a
    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    #@2c
    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@2e
    if-gt v4, v5, :cond_2

    #@30
    .line 167
    :cond_1
    :goto_0
    return v2

    #@31
    :cond_2
    move v2, v3

    #@32
    .line 168
    goto :goto_0

    #@33
    .line 169
    :cond_3
    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    #@35
    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    #@37
    if-le v4, v5, :cond_0

    #@39
    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    #@3b
    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@3d
    if-gt v4, v5, :cond_0

    #@3f
    .line 170
    iget-object v4, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    #@41
    instance-of v4, v4, Ljava/text/Annotation;

    #@43
    if-eqz v4, :cond_4

    #@45
    .line 171
    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    #@47
    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    #@49
    if-lt v4, v5, :cond_5

    #@4b
    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    #@4d
    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@4f
    if-ge v4, v5, :cond_5

    #@51
    .line 170
    :cond_4
    :goto_1
    return v2

    #@52
    :cond_5
    move v2, v3

    #@53
    .line 171
    goto :goto_1

    #@54
    .line 174
    .end local v1    # "range":Ljava/text/AttributedString$Range;
    :cond_6
    return v3
.end method

.method private runLimit(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/text/AttributedString$Range;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 254
    .local p1, "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@2
    .line 255
    .local v2, "result":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@5
    move-result v3

    #@6
    invoke-interface {p1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    #@9
    move-result-object v0

    #@a
    .line 256
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/text/AttributedString$Range;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 257
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/text/AttributedString$Range;

    #@16
    .line 258
    .local v1, "range":Ljava/text/AttributedString$Range;
    iget v3, v1, Ljava/text/AttributedString$Range;->end:I

    #@18
    iget v4, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    #@1a
    if-gt v3, v4, :cond_1

    #@1c
    .line 268
    .end local v1    # "range":Ljava/text/AttributedString$Range;
    :cond_0
    return v2

    #@1d
    .line 261
    .restart local v1    # "range":Ljava/text/AttributedString$Range;
    :cond_1
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@1f
    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    #@21
    if-lt v3, v4, :cond_3

    #@23
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@25
    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    #@27
    if-ge v3, v4, :cond_3

    #@29
    .line 262
    invoke-direct {p0, v1}, Ljava/text/AttributedString$AttributedIterator;->inRange(Ljava/text/AttributedString$Range;)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_2

    #@2f
    iget v2, v1, Ljava/text/AttributedString$Range;->end:I

    #@31
    .end local v2    # "result":I
    :cond_2
    return v2

    #@32
    .line 263
    .restart local v2    # "result":I
    :cond_3
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@34
    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    #@36
    if-ge v3, v4, :cond_0

    #@38
    .line 266
    iget v2, v1, Ljava/text/AttributedString$Range;->start:I

    #@3a
    goto :goto_0
.end method

.method private runStart(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/text/AttributedString$Range;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 302
    .local p1, "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    #@2
    .line 303
    .local v2, "result":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    .line 304
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/text/AttributedString$Range;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 305
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/text/AttributedString$Range;

    #@12
    .line 306
    .local v1, "range":Ljava/text/AttributedString$Range;
    iget v3, v1, Ljava/text/AttributedString$Range;->start:I

    #@14
    iget v4, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@16
    if-lt v3, v4, :cond_1

    #@18
    .line 316
    .end local v1    # "range":Ljava/text/AttributedString$Range;
    :cond_0
    return v2

    #@19
    .line 309
    .restart local v1    # "range":Ljava/text/AttributedString$Range;
    :cond_1
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@1b
    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    #@1d
    if-lt v3, v4, :cond_3

    #@1f
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@21
    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    #@23
    if-ge v3, v4, :cond_3

    #@25
    .line 310
    invoke-direct {p0, v1}, Ljava/text/AttributedString$AttributedIterator;->inRange(Ljava/text/AttributedString$Range;)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_2

    #@2b
    iget v2, v1, Ljava/text/AttributedString$Range;->start:I

    #@2d
    .end local v2    # "result":I
    :cond_2
    return v2

    #@2e
    .line 311
    .restart local v2    # "result":I
    :cond_3
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@30
    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    #@32
    if-lt v3, v4, :cond_0

    #@34
    .line 314
    iget v2, v1, Ljava/text/AttributedString$Range;->end:I

    #@36
    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 101
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/text/AttributedString$AttributedIterator;

    #@6
    .line 102
    .local v0, "clone":Ljava/text/AttributedString$AttributedIterator;
    iget-object v2, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 103
    iget-object v2, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    #@c
    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Ljava/util/HashSet;

    #@12
    iput-object v2, v0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 106
    :cond_0
    return-object v0

    #@15
    .line 107
    .end local v0    # "clone":Ljava/text/AttributedString$AttributedIterator;
    :catch_0
    move-exception v1

    #@16
    .line 108
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@18
    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1b
    throw v2
.end method

.method public current()C
    .locals 2

    #@0
    .prologue
    .line 113
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@2
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 114
    const v0, 0xffff

    #@9
    return v0

    #@a
    .line 116
    :cond_0
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    #@c
    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@e
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public first()C
    .locals 2

    #@0
    .prologue
    .line 120
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    #@2
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 121
    const v0, 0xffff

    #@9
    return v0

    #@a
    .line 123
    :cond_0
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    #@c
    iput v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@e
    .line 124
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    #@10
    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@12
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public getAllAttributeKeys()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 184
    iget v4, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    #@2
    if-nez v4, :cond_0

    #@4
    iget v4, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@6
    iget-object v5, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    #@8
    iget-object v5, v5, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@d
    move-result v5

    #@e
    if-ne v4, v5, :cond_0

    #@10
    .line 185
    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    #@12
    if-nez v4, :cond_0

    #@14
    .line 186
    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    #@16
    iget-object v4, v4, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    #@18
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@1b
    move-result-object v4

    #@1c
    return-object v4

    #@1d
    .line 189
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    #@1f
    .line 190
    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    #@21
    iget-object v4, v4, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    #@23
    invoke-interface {v4}, Ljava/util/Map;->size()I

    #@26
    move-result v4

    #@27
    mul-int/lit8 v4, v4, 0x4

    #@29
    div-int/lit8 v4, v4, 0x3

    #@2b
    add-int/lit8 v4, v4, 0x1

    #@2d
    .line 189
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    #@30
    .line 191
    .local v3, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    #@32
    iget-object v4, v4, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    #@34
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@37
    move-result-object v4

    #@38
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@3b
    move-result-object v1

    #@3c
    .line 193
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/util/List<Ljava/text/AttributedString$Range;>;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_3

    #@42
    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v0

    #@46
    check-cast v0, Ljava/util/Map$Entry;

    #@48
    .line 195
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/util/List<Ljava/text/AttributedString$Range;>;>;"
    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    #@4a
    if-eqz v4, :cond_2

    #@4c
    .line 196
    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    #@4e
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@55
    move-result v4

    #@56
    .line 195
    if-eqz v4, :cond_1

    #@58
    .line 197
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@5b
    move-result-object v2

    #@5c
    check-cast v2, Ljava/util/List;

    #@5e
    .line 198
    .local v2, "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    invoke-direct {p0, v2}, Ljava/text/AttributedString$AttributedIterator;->inRange(Ljava/util/List;)Z

    #@61
    move-result v4

    #@62
    if-eqz v4, :cond_1

    #@64
    .line 199
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@67
    move-result-object v4

    #@68
    check-cast v4, Ljava/text/AttributedCharacterIterator$Attribute;

    #@6a
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6d
    goto :goto_0

    #@6e
    .line 203
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/util/List<Ljava/text/AttributedString$Range;>;>;"
    .end local v2    # "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    :cond_3
    return-object v3
.end method

.method public getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;
    .locals 3
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 219
    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 220
    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    #@7
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 223
    :cond_0
    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    #@f
    iget-object v1, v1, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    #@11
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/util/ArrayList;

    #@17
    .line 225
    .local v0, "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedString$Range;>;"
    if-nez v0, :cond_2

    #@19
    .line 226
    return-object v2

    #@1a
    .line 221
    .end local v0    # "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedString$Range;>;"
    :cond_1
    return-object v2

    #@1b
    .line 228
    .restart local v0    # "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedString$Range;>;"
    :cond_2
    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->currentValue(Ljava/util/List;)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    return-object v1
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 232
    new-instance v2, Ljava/util/HashMap;

    #@2
    .line 233
    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    #@4
    iget-object v4, v4, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    #@6
    invoke-interface {v4}, Ljava/util/Map;->size()I

    #@9
    move-result v4

    #@a
    mul-int/lit8 v4, v4, 0x4

    #@c
    div-int/lit8 v4, v4, 0x3

    #@e
    add-int/lit8 v4, v4, 0x1

    #@10
    .line 232
    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    #@13
    .line 234
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    #@15
    iget-object v4, v4, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    #@17
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1a
    move-result-object v4

    #@1b
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v1

    #@1f
    .line 236
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/util/List<Ljava/text/AttributedString$Range;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_2

    #@25
    .line 237
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Ljava/util/Map$Entry;

    #@2b
    .line 238
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/util/List<Ljava/text/AttributedString$Range;>;>;"
    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    #@2d
    if-eqz v4, :cond_1

    #@2f
    .line 239
    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    #@31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@38
    move-result v4

    #@39
    .line 238
    if-eqz v4, :cond_0

    #@3b
    .line 240
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3e
    move-result-object v4

    #@3f
    check-cast v4, Ljava/util/List;

    #@41
    invoke-direct {p0, v4}, Ljava/text/AttributedString$AttributedIterator;->currentValue(Ljava/util/List;)Ljava/lang/Object;

    #@44
    move-result-object v3

    #@45
    .line 241
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_0

    #@47
    .line 242
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@4a
    move-result-object v4

    #@4b
    check-cast v4, Ljava/text/AttributedCharacterIterator$Attribute;

    #@4d
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    goto :goto_0

    #@51
    .line 246
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/util/List<Ljava/text/AttributedString$Range;>;>;"
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    return-object v2
.end method

.method public getBeginIndex()I
    .locals 1

    #@0
    .prologue
    .line 133
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    #@2
    return v0
.end method

.method public getEndIndex()I
    .locals 1

    #@0
    .prologue
    .line 142
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@2
    return v0
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 151
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@2
    return v0
.end method

.method public getRunLimit()I
    .locals 1

    #@0
    .prologue
    .line 250
    invoke-virtual {p0}, Ljava/text/AttributedString$AttributedIterator;->getAllAttributeKeys()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->getRunLimit(Ljava/util/Set;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I
    .locals 2
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    #@0
    .prologue
    .line 272
    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 273
    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 276
    :cond_0
    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    #@e
    iget-object v1, v1, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    #@10
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/util/ArrayList;

    #@16
    .line 278
    .local v0, "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedString$Range;>;"
    if-nez v0, :cond_2

    #@18
    .line 279
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@1a
    return v1

    #@1b
    .line 274
    .end local v0    # "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedString$Range;>;"
    :cond_1
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@1d
    return v1

    #@1e
    .line 281
    .restart local v0    # "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedString$Range;>;"
    :cond_2
    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->runLimit(Ljava/util/List;)I

    #@21
    move-result v1

    #@22
    return v1
.end method

.method public getRunLimit(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 285
    .local p1, "attributes":Ljava/util/Set;, "Ljava/util/Set<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@2
    .line 286
    .local v2, "limit":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .line 287
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 288
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    #@12
    .line 289
    .local v0, "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-virtual {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    #@15
    move-result v3

    #@16
    .line 290
    .local v3, "newLimit":I
    if-ge v3, v2, :cond_0

    #@18
    .line 291
    move v2, v3

    #@19
    goto :goto_0

    #@1a
    .line 294
    .end local v0    # "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v3    # "newLimit":I
    :cond_1
    return v2
.end method

.method public getRunStart()I
    .locals 1

    #@0
    .prologue
    .line 298
    invoke-virtual {p0}, Ljava/text/AttributedString$AttributedIterator;->getAllAttributeKeys()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->getRunStart(Ljava/util/Set;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I
    .locals 2
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    #@0
    .prologue
    .line 320
    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 321
    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 324
    :cond_0
    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    #@e
    iget-object v1, v1, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    #@10
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/util/ArrayList;

    #@16
    .line 326
    .local v0, "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedString$Range;>;"
    if-nez v0, :cond_2

    #@18
    .line 327
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    #@1a
    return v1

    #@1b
    .line 322
    .end local v0    # "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedString$Range;>;"
    :cond_1
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    #@1d
    return v1

    #@1e
    .line 329
    .restart local v0    # "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedString$Range;>;"
    :cond_2
    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->runStart(Ljava/util/List;)I

    #@21
    move-result v1

    #@22
    return v1
.end method

.method public getRunStart(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 333
    .local p1, "attributes":Ljava/util/Set;, "Ljava/util/Set<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    #@2
    .line 334
    .local v3, "start":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .line 335
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 336
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    #@12
    .line 337
    .local v0, "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-virtual {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    #@15
    move-result v2

    #@16
    .line 338
    .local v2, "newStart":I
    if-le v2, v3, :cond_0

    #@18
    .line 339
    move v3, v2

    #@19
    goto :goto_0

    #@1a
    .line 342
    .end local v0    # "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v2    # "newStart":I
    :cond_1
    return v3
.end method

.method public last()C
    .locals 2

    #@0
    .prologue
    .line 346
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    #@2
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 347
    const v0, 0xffff

    #@9
    return v0

    #@a
    .line 349
    :cond_0
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@c
    add-int/lit8 v0, v0, -0x1

    #@e
    iput v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@10
    .line 350
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    #@12
    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@14
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method public next()C
    .locals 2

    #@0
    .prologue
    .line 354
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@2
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    if-lt v0, v1, :cond_0

    #@8
    .line 355
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@a
    iput v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@c
    .line 356
    const v0, 0xffff

    #@f
    return v0

    #@10
    .line 358
    :cond_0
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    #@12
    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@14
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    iput v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public previous()C
    .locals 2

    #@0
    .prologue
    .line 362
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@2
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 363
    const v0, 0xffff

    #@9
    return v0

    #@a
    .line 365
    :cond_0
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    #@c
    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@e
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@10
    add-int/lit8 v1, v1, -0x1

    #@12
    iput v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public setIndex(I)C
    .locals 2
    .param p1, "location"    # I

    #@0
    .prologue
    .line 369
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@6
    if-le p1, v0, :cond_1

    #@8
    .line 370
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@d
    throw v0

    #@e
    .line 372
    :cond_1
    iput p1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@10
    .line 373
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@12
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    #@14
    if-ne v0, v1, :cond_2

    #@16
    .line 374
    const v0, 0xffff

    #@19
    return v0

    #@1a
    .line 376
    :cond_2
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    #@1c
    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@1e
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@23
    move-result v0

    #@24
    return v0
.end method
