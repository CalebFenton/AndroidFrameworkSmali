.class public Lorg/xml/sax/helpers/AttributeListImpl;
.super Ljava/lang/Object;
.source "AttributeListImpl.java"

# interfaces
.implements Lorg/xml/sax/AttributeList;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private names:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private types:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 286
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    #@a
    .line 287
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->types:Ljava/util/ArrayList;

    #@11
    .line 288
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->values:Ljava/util/ArrayList;

    #@18
    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/AttributeList;)V
    .locals 1
    .param p1, "atts"    # Lorg/xml/sax/AttributeList;

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 286
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    #@a
    .line 287
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->types:Ljava/util/ArrayList;

    #@11
    .line 288
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->values:Ljava/util/ArrayList;

    #@18
    .line 96
    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/AttributeListImpl;->setAttributeList(Lorg/xml/sax/AttributeList;)V

    #@1b
    .line 94
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 141
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->types:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a
    .line 142
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->values:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f
    .line 139
    return-void
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 182
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->types:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@a
    .line 183
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->values:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@f
    .line 180
    return-void
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 213
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_1

    #@a
    .line 214
    :cond_0
    const/4 v0, 0x0

    #@b
    return-object v0

    #@c
    .line 216
    :cond_1
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 231
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->types:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_1

    #@a
    .line 232
    :cond_0
    const/4 v0, 0x0

    #@b
    return-object v0

    #@c
    .line 234
    :cond_1
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->types:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/AttributeListImpl;->getType(I)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 247
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->values:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_1

    #@a
    .line 248
    :cond_0
    const/4 v0, 0x0

    #@b
    return-object v0

    #@c
    .line 250
    :cond_1
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->values:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/AttributeListImpl;->getValue(I)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 161
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    .line 162
    .local v0, "i":I
    const/4 v1, -0x1

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 163
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@e
    .line 164
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributeListImpl;->types:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@13
    .line 165
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributeListImpl;->values:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@18
    .line 160
    :cond_0
    return-void
.end method

.method public setAttributeList(Lorg/xml/sax/AttributeList;)V
    .locals 5
    .param p1, "atts"    # Lorg/xml/sax/AttributeList;

    #@0
    .prologue
    .line 116
    invoke-interface {p1}, Lorg/xml/sax/AttributeList;->getLength()I

    #@3
    move-result v0

    #@4
    .line 118
    .local v0, "count":I
    invoke-virtual {p0}, Lorg/xml/sax/helpers/AttributeListImpl;->clear()V

    #@7
    .line 120
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@a
    .line 121
    invoke-interface {p1, v1}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-interface {p1, v1}, Lorg/xml/sax/AttributeList;->getType(I)Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-interface {p1, v1}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {p0, v2, v3, v4}, Lorg/xml/sax/helpers/AttributeListImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 120
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 114
    :cond_0
    return-void
.end method
