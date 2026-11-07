.class public Lorg/xml/sax/helpers/AttributeListImpl;
.super Ljava/lang/Object;
.source "AttributeListImpl.java"

# interfaces
.implements Lorg/xml/sax/AttributeList;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o names:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o types:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->types:Ljava/util/ArrayList;

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->values:Ljava/util/ArrayList;

    .line 81
    return-void
.end method

.method public constructor whitelist test-api <init>(Lorg/xml/sax/AttributeList;)V
    .registers 3
    .param p1, "atts"    # Lorg/xml/sax/AttributeList;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->types:Ljava/util/ArrayList;

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->values:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/AttributeListImpl;->setAttributeList(Lorg/xml/sax/AttributeList;)V

    .line 97
    return-void
.end method


# virtual methods
.method public whitelist test-api addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->types:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 181
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 182
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->types:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 183
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 184
    return-void
.end method

.method public whitelist test-api getLength()I
    .registers 2

    .line 200
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getName(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .line 213
    if-ltz p1, :cond_14

    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    .line 216
    :cond_b
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 214
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getType(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .line 231
    if-ltz p1, :cond_14

    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->types:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    .line 234
    :cond_b
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->types:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 232
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/AttributeListImpl;->getType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValue(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .line 247
    if-ltz p1, :cond_14

    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    .line 250
    :cond_b
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 248
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/AttributeListImpl;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api removeAttribute(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 162
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    .line 163
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributeListImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 164
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributeListImpl;->types:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 165
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributeListImpl;->values:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 167
    :cond_18
    return-void
.end method

.method public whitelist test-api setAttributeList(Lorg/xml/sax/AttributeList;)V
    .registers 7
    .param p1, "atts"    # Lorg/xml/sax/AttributeList;

    .line 116
    invoke-interface {p1}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v0

    .line 118
    .local v0, "count":I
    invoke-virtual {p0}, Lorg/xml/sax/helpers/AttributeListImpl;->clear()V

    .line 120
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1c

    .line 121
    invoke-interface {p1, v1}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/xml/sax/AttributeList;->getType(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lorg/xml/sax/helpers/AttributeListImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 123
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method
