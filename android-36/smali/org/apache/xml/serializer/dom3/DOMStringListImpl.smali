.class final Lorg/apache/xml/serializer/dom3/DOMStringListImpl;
.super Ljava/lang/Object;
.source "DOMStringListImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMStringList;


# instance fields
.field private greylist fStrings:Ljava/util/Vector;


# direct methods
.method constructor greylist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    return-void
.end method

.method constructor greylist <init>(Ljava/util/Vector;)V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    return-void
.end method

.method constructor greylist <init>([Ljava/lang/String;)V
    .registers 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    if-eqz p1, :cond_1a

    const/4 v0, 0x0

    .line 58
    :goto_d
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    .line 59
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1a
    return-void
.end method


# virtual methods
.method public greylist add(Ljava/lang/String;)V
    .registers 2

    .line 96
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/String;)Z
    .registers 2

    .line 86
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api getLength()I
    .registers 1

    .line 79
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public whitelist test-api item(I)Ljava/lang/String;
    .registers 2

    .line 69
    :try_start_0
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method
