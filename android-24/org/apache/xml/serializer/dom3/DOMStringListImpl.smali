.class final Lorg/apache/xml/serializer/dom3/DOMStringListImpl;
.super Ljava/lang/Object;
.source "DOMStringListImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMStringList;


# instance fields
.field private fStrings:Ljava/util/Vector;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    new-instance v0, Ljava/util/Vector;

    #@5
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    #@a
    .line 41
    return-void
.end method

.method constructor <init>(Ljava/util/Vector;)V
    .locals 0
    .param p1, "params"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    #@5
    .line 48
    return-void
.end method

.method constructor <init>([Ljava/lang/String;)V
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    new-instance v1, Ljava/util/Vector;

    #@5
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    #@a
    .line 57
    if-eqz p1, :cond_0

    #@c
    .line 58
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@e
    if-ge v0, v1, :cond_0

    #@10
    .line 59
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    #@12
    aget-object v2, p1, v0

    #@14
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@17
    .line 58
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 55
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@5
    .line 95
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public item(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    return-object v1

    #@9
    .line 70
    :catch_0
    move-exception v0

    #@a
    .line 71
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v1, 0x0

    #@b
    return-object v1
.end method
