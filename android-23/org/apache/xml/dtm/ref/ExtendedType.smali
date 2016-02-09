.class public final Lorg/apache/xml/dtm/ref/ExtendedType;
.super Ljava/lang/Object;
.source "ExtendedType.java"


# instance fields
.field private hash:I

.field private localName:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private nodetype:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "nodetype"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    #@5
    .line 45
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    #@7
    .line 46
    iput-object p3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    #@9
    .line 47
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    #@c
    move-result v0

    #@d
    add-int/2addr v0, p1

    #@e
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    #@11
    move-result v1

    #@12
    add-int/2addr v0, v1

    #@13
    iput v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    #@15
    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "nodetype"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "hash"    # I

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    #@5
    .line 62
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    #@7
    .line 63
    iput-object p3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    #@9
    .line 64
    iput p4, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    #@b
    .line 59
    return-void
.end method


# virtual methods
.method public equals(Lorg/apache/xml/dtm/ref/ExtendedType;)Z
    .locals 4
    .param p1, "other"    # Lorg/apache/xml/dtm/ref/ExtendedType;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 111
    :try_start_0
    iget v2, p1, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    #@3
    iget v3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    #@5
    if-ne v2, v3, :cond_0

    #@7
    .line 112
    iget-object v2, p1, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    #@9
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    .line 111
    if-eqz v2, :cond_0

    #@11
    .line 113
    iget-object v2, p1, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    #@13
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v1

    #@19
    .line 111
    :cond_0
    return v1

    #@1a
    .line 116
    :catch_0
    move-exception v0

    #@1b
    .line 117
    .local v0, "e":Ljava/lang/NullPointerException;
    return v1
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNodeType()I
    .locals 1

    #@0
    .prologue
    .line 126
    iget v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 98
    iget v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    #@2
    return v0
.end method

.method protected redefine(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "nodetype"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    #@2
    .line 75
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    #@4
    .line 76
    iput-object p3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    #@6
    .line 77
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    #@9
    move-result v0

    #@a
    add-int/2addr v0, p1

    #@b
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    #@e
    move-result v1

    #@f
    add-int/2addr v0, v1

    #@10
    iput v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    #@12
    .line 72
    return-void
.end method

.method protected redefine(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "nodetype"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "hash"    # I

    #@0
    .prologue
    .line 87
    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    #@2
    .line 88
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    #@4
    .line 89
    iput-object p3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    #@6
    .line 90
    iput p4, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    #@8
    .line 85
    return-void
.end method
