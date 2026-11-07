.class public final Lorg/apache/xml/dtm/ref/ExtendedType;
.super Ljava/lang/Object;
.source "ExtendedType.java"


# instance fields
.field private greylist hash:I

.field private greylist localName:Ljava/lang/String;

.field private greylist namespace:Ljava/lang/String;

.field private greylist nodetype:I


# direct methods
.method public constructor greylist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    .line 45
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    .line 47
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    return-void
.end method

.method public constructor greylist <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    .line 62
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    .line 64
    iput p4, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    return-void
.end method


# virtual methods
.method public greylist equals(Lorg/apache/xml/dtm/ref/ExtendedType;)Z
    .registers 5

    const/4 v0, 0x0

    .line 111
    :try_start_1
    iget v1, p1, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    iget v2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    if-ne v1, v2, :cond_1d

    iget-object v1, p1, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object p1, p1, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    .line 113
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_19} :catch_1d

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :catch_1d
    :cond_1d
    return v0
.end method

.method public greylist getLocalName()Ljava/lang/String;
    .registers 1

    .line 134
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getNamespace()Ljava/lang/String;
    .registers 1

    .line 142
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getNodeType()I
    .registers 1

    .line 126
    iget p0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 98
    iget p0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    return p0
.end method

.method protected greylist redefine(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 74
    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    .line 75
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    .line 77
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    return-void
.end method

.method protected greylist redefine(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 87
    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    .line 88
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    .line 90
    iput p4, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    return-void
.end method
