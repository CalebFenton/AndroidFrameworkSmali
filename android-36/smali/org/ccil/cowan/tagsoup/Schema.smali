.class public abstract Lorg/ccil/cowan/tagsoup/Schema;
.super Ljava/lang/Object;
.source "Schema.java"


# static fields
.field public static final greylist F_CDATA:I = 0x2

.field public static final greylist F_NOFORCE:I = 0x4

.field public static final greylist F_RESTART:I = 0x1

.field public static final greylist M_ANY:I = -0x1

.field public static final greylist M_EMPTY:I = 0x0

.field public static final greylist M_PCDATA:I = 0x40000000

.field public static final greylist M_ROOT:I = -0x80000000


# instance fields
.field private greylist theElementTypes:Ljava/util/HashMap;

.field private greylist theEntities:Ljava/util/HashMap;

.field private greylist thePrefix:Ljava/lang/String;

.field private greylist theRoot:Lorg/ccil/cowan/tagsoup/ElementType;

.field private greylist theURI:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theEntities:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theElementTypes:Ljava/util/HashMap;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theURI:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->thePrefix:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theRoot:Lorg/ccil/cowan/tagsoup/ElementType;

    return-void
.end method


# virtual methods
.method public greylist attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "elemName"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 79
    invoke-virtual {p0, p1}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    move-result-object v0

    .line 80
    .local v0, "e":Lorg/ccil/cowan/tagsoup/ElementType;
    if-eqz v0, :cond_a

    .line 85
    invoke-virtual {v0, p2, p3, p4}, Lorg/ccil/cowan/tagsoup/ElementType;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void

    .line 81
    :cond_a
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " specified for unknown element type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist elementType(Ljava/lang/String;III)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # I
    .param p3, "memberOf"    # I
    .param p4, "flags"    # I

    .line 56
    new-instance v0, Lorg/ccil/cowan/tagsoup/ElementType;

    move-object v5, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "model":I
    .end local p3    # "memberOf":I
    .end local p4    # "flags":I
    .local v1, "name":Ljava/lang/String;
    .local v2, "model":I
    .local v3, "memberOf":I
    .local v4, "flags":I
    invoke-direct/range {v0 .. v5}, Lorg/ccil/cowan/tagsoup/ElementType;-><init>(Ljava/lang/String;IIILorg/ccil/cowan/tagsoup/Schema;)V

    .line 57
    .local v0, "e":Lorg/ccil/cowan/tagsoup/ElementType;
    iget-object p1, v5, Lorg/ccil/cowan/tagsoup/Schema;->theElementTypes:Ljava/util/HashMap;

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const/high16 p1, -0x80000000

    if-ne v3, p1, :cond_1b

    iput-object v0, v5, Lorg/ccil/cowan/tagsoup/Schema;->theRoot:Lorg/ccil/cowan/tagsoup/ElementType;

    .line 59
    :cond_1b
    return-void
.end method

.method public greylist entity(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 113
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theEntities:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public greylist getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theElementTypes:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ccil/cowan/tagsoup/ElementType;

    return-object v0
.end method

.method public greylist getEntity(Ljava/lang/String;)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theEntities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 135
    .local v0, "ch":Ljava/lang/Integer;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    return v1

    .line 136
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public greylist getPrefix()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->thePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getURI()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theURI:Ljava/lang/String;

    return-object v0
.end method

.method public greylist parent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parentName"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    move-result-object v0

    .line 96
    .local v0, "child":Lorg/ccil/cowan/tagsoup/ElementType;
    invoke-virtual {p0, p2}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    move-result-object v1

    .line 97
    .local v1, "parent":Lorg/ccil/cowan/tagsoup/ElementType;
    if-eqz v0, :cond_33

    .line 100
    if-eqz v1, :cond_10

    .line 103
    invoke-virtual {v0, v1}, Lorg/ccil/cowan/tagsoup/ElementType;->setParent(Lorg/ccil/cowan/tagsoup/ElementType;)V

    .line 104
    return-void

    .line 101
    :cond_10
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No parent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for child "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_33
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No child "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for parent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public greylist rootElementType()Lorg/ccil/cowan/tagsoup/ElementType;
    .registers 2

    .line 66
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theRoot:Lorg/ccil/cowan/tagsoup/ElementType;

    return-object v0
.end method

.method public greylist setPrefix(Ljava/lang/String;)V
    .registers 2
    .param p1, "prefix"    # Ljava/lang/String;

    .line 168
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/Schema;->thePrefix:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public greylist setURI(Ljava/lang/String;)V
    .registers 2
    .param p1, "uri"    # Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/Schema;->theURI:Ljava/lang/String;

    .line 161
    return-void
.end method
