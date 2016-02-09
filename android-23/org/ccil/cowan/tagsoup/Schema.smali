.class public abstract Lorg/ccil/cowan/tagsoup/Schema;
.super Ljava/lang/Object;
.source "Schema.java"


# static fields
.field public static final F_CDATA:I = 0x2

.field public static final F_NOFORCE:I = 0x4

.field public static final F_RESTART:I = 0x1

.field public static final M_ANY:I = -0x1

.field public static final M_EMPTY:I = 0x0

.field public static final M_PCDATA:I = 0x40000000

.field public static final M_ROOT:I = -0x80000000


# instance fields
.field private theElementTypes:Ljava/util/HashMap;

.field private theEntities:Ljava/util/HashMap;

.field private thePrefix:Ljava/lang/String;

.field private theRoot:Lorg/ccil/cowan/tagsoup/ElementType;

.field private theURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 38
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theEntities:Ljava/util/HashMap;

    #@a
    .line 41
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 40
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theElementTypes:Ljava/util/HashMap;

    #@11
    .line 43
    const-string/jumbo v0, ""

    #@14
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theURI:Ljava/lang/String;

    #@16
    .line 44
    const-string/jumbo v0, ""

    #@19
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->thePrefix:Ljava/lang/String;

    #@1b
    .line 45
    const/4 v0, 0x0

    #@1c
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theRoot:Lorg/ccil/cowan/tagsoup/ElementType;

    #@1e
    .line 26
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "elemName"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    #@3
    move-result-object v0

    #@4
    .line 80
    .local v0, "e":Lorg/ccil/cowan/tagsoup/ElementType;
    if-nez v0, :cond_0

    #@6
    .line 81
    new-instance v1, Ljava/lang/Error;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Attribute "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 82
    const-string/jumbo v3, " specified for unknown element type "

    #@1b
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 85
    :cond_0
    invoke-virtual {v0, p2, p3, p4}, Lorg/ccil/cowan/tagsoup/ElementType;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    .line 78
    return-void
.end method

.method public elementType(Ljava/lang/String;III)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # I
    .param p3, "memberOf"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 56
    new-instance v0, Lorg/ccil/cowan/tagsoup/ElementType;

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p0

    #@7
    invoke-direct/range {v0 .. v5}, Lorg/ccil/cowan/tagsoup/ElementType;-><init>(Ljava/lang/String;IIILorg/ccil/cowan/tagsoup/Schema;)V

    #@a
    .line 57
    .local v0, "e":Lorg/ccil/cowan/tagsoup/ElementType;
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Schema;->theElementTypes:Ljava/util/HashMap;

    #@c
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@e
    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 58
    const/high16 v1, -0x80000000

    #@17
    if-ne p3, v1, :cond_0

    #@19
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theRoot:Lorg/ccil/cowan/tagsoup/ElementType;

    #@1b
    .line 55
    :cond_0
    return-void
.end method

.method public entity(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theEntities:Ljava/util/HashMap;

    #@2
    new-instance v1, Ljava/lang/Integer;

    #@4
    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    #@7
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 112
    return-void
.end method

.method public getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theElementTypes:Ljava/util/HashMap;

    #@2
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lorg/ccil/cowan/tagsoup/ElementType;

    #@e
    return-object v0
.end method

.method public getEntity(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 134
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Schema;->theEntities:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    .line 135
    .local v0, "ch":Ljava/lang/Integer;
    if-nez v0, :cond_0

    #@a
    const/4 v1, 0x0

    #@b
    return v1

    #@c
    .line 136
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@f
    move-result v1

    #@10
    return v1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->thePrefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theURI:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public parent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parentName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    #@3
    move-result-object v0

    #@4
    .line 96
    .local v0, "child":Lorg/ccil/cowan/tagsoup/ElementType;
    invoke-virtual {p0, p2}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    #@7
    move-result-object v1

    #@8
    .line 97
    .local v1, "parent":Lorg/ccil/cowan/tagsoup/ElementType;
    if-nez v0, :cond_0

    #@a
    .line 98
    new-instance v2, Ljava/lang/Error;

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "No child "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    const-string/jumbo v4, " for parent "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 100
    :cond_0
    if-nez v1, :cond_1

    #@31
    .line 101
    new-instance v2, Ljava/lang/Error;

    #@33
    new-instance v3, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v4, "No parent "

    #@3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    const-string/jumbo v4, " for child "

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@55
    throw v2

    #@56
    .line 103
    :cond_1
    invoke-virtual {v0, v1}, Lorg/ccil/cowan/tagsoup/ElementType;->setParent(Lorg/ccil/cowan/tagsoup/ElementType;)V

    #@59
    .line 94
    return-void
.end method

.method public rootElementType()Lorg/ccil/cowan/tagsoup/ElementType;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theRoot:Lorg/ccil/cowan/tagsoup/ElementType;

    #@2
    return-object v0
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 168
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/Schema;->thePrefix:Ljava/lang/String;

    #@2
    .line 167
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 160
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/Schema;->theURI:Ljava/lang/String;

    #@2
    .line 159
    return-void
.end method
