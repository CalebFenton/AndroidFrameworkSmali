.class public Lorg/xml/sax/helpers/NamespaceSupport;
.super Ljava/lang/Object;
.source "NamespaceSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xml/sax/helpers/NamespaceSupport$Context;
    }
.end annotation


# static fields
.field private static final EMPTY_ENUMERATION:Ljava/util/Enumeration;

.field public static final NSDECL:Ljava/lang/String; = "http://www.w3.org/xmlns/2000/"

.field public static final XMLNS:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private contextPos:I

.field private contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

.field private currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

.field private namespaceDeclUris:Z


# direct methods
.method static synthetic -get0()Ljava/util/Enumeration;
    .locals 1

    #@0
    sget-object v0, Lorg/xml/sax/helpers/NamespaceSupport;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/xml/sax/helpers/NamespaceSupport;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 116
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Lorg/xml/sax/helpers/NamespaceSupport;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    #@a
    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 129
    invoke-virtual {p0}, Lorg/xml/sax/helpers/NamespaceSupport;->reset()V

    #@6
    .line 127
    return-void
.end method


# virtual methods
.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 294
    const-string/jumbo v0, "xml"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    const-string/jumbo v0, "xmlns"

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 295
    :cond_0
    const/4 v0, 0x0

    #@13
    return v0

    #@14
    .line 297
    :cond_1
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@16
    invoke-virtual {v0, p1, p2}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 298
    const/4 v0, 0x1

    #@1a
    return v0
.end method

.method public getDeclaredPrefixes()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 471
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@2
    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->getDeclaredPrefixes()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 417
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@2
    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPrefixes()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 392
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@2
    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->getPrefixes()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 445
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 446
    .local v2, "prefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefixes()Ljava/util/Enumeration;

    #@8
    move-result-object v0

    #@9
    .line 447
    .local v0, "allPrefixes":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 448
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/lang/String;

    #@15
    .line 449
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 450
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    goto :goto_0

    #@23
    .line 453
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    #@26
    move-result-object v3

    #@27
    return-object v3
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@2
    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->getURI(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isNamespaceDeclUris()Z
    .locals 1

    #@0
    .prologue
    .line 512
    iget-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    #@2
    return v0
.end method

.method public popContext()V
    .locals 2

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@2
    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    #@4
    aget-object v0, v0, v1

    #@6
    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->clear()V

    #@9
    .line 240
    iget v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    #@b
    add-int/lit8 v0, v0, -0x1

    #@d
    iput v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    #@f
    .line 241
    iget v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    #@11
    if-gez v0, :cond_0

    #@13
    .line 242
    new-instance v0, Ljava/util/EmptyStackException;

    #@15
    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    #@18
    throw v0

    #@19
    .line 244
    :cond_0
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@1b
    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    #@1d
    aget-object v0, v0, v1

    #@1f
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@21
    .line 237
    return-void
.end method

.method public processName(Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 6
    .param p1, "qName"    # Ljava/lang/String;
    .param p2, "parts"    # [Ljava/lang/String;
    .param p3, "isAttribute"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 346
    iget-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@6
    invoke-virtual {v1, p1, p3}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->processName(Ljava/lang/String;Z)[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 347
    .local v0, "myParts":[Ljava/lang/String;
    if-nez v0, :cond_0

    #@c
    .line 348
    return-object v5

    #@d
    .line 350
    :cond_0
    aget-object v1, v0, v2

    #@f
    aput-object v1, p2, v2

    #@11
    .line 351
    aget-object v1, v0, v3

    #@13
    aput-object v1, p2, v3

    #@15
    .line 352
    aget-object v1, v0, v4

    #@17
    aput-object v1, p2, v4

    #@19
    .line 353
    return-object p2
.end method

.method public pushContext()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 198
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@3
    array-length v0, v2

    #@4
    .line 200
    .local v0, "max":I
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@6
    iget v3, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    #@8
    aget-object v2, v2, v3

    #@a
    iput-boolean v4, v2, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declsOK:Z

    #@c
    .line 201
    iget v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    #@e
    add-int/lit8 v2, v2, 0x1

    #@10
    iput v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    #@12
    .line 204
    iget v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    #@14
    if-lt v2, v0, :cond_0

    #@16
    .line 205
    mul-int/lit8 v2, v0, 0x2

    #@18
    new-array v1, v2, [Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@1a
    .line 206
    .local v1, "newContexts":[Lorg/xml/sax/helpers/NamespaceSupport$Context;
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@1c
    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1f
    .line 207
    mul-int/lit8 v0, v0, 0x2

    #@21
    .line 208
    iput-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@23
    .line 212
    .end local v1    # "newContexts":[Lorg/xml/sax/helpers/NamespaceSupport$Context;
    :cond_0
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@25
    iget v3, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    #@27
    aget-object v2, v2, v3

    #@29
    iput-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@2b
    .line 213
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@2d
    if-nez v2, :cond_1

    #@2f
    .line 214
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@31
    iget v3, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    #@33
    new-instance v4, Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@35
    invoke-direct {v4, p0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;-><init>(Lorg/xml/sax/helpers/NamespaceSupport;)V

    #@38
    iput-object v4, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@3a
    aput-object v4, v2, v3

    #@3c
    .line 218
    :cond_1
    iget v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    #@3e
    if-lez v2, :cond_2

    #@40
    .line 219
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@42
    iget-object v3, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@44
    iget v4, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    #@46
    add-int/lit8 v4, v4, -0x1

    #@48
    aget-object v3, v3, v4

    #@4a
    invoke-virtual {v2, v3}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->setParent(Lorg/xml/sax/helpers/NamespaceSupport$Context;)V

    #@4d
    .line 196
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 152
    const/16 v0, 0x20

    #@3
    new-array v0, v0, [Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@5
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@7
    .line 153
    iput-boolean v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    #@9
    .line 154
    iput v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    #@b
    .line 155
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@d
    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    #@f
    new-instance v2, Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@11
    invoke-direct {v2, p0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;-><init>(Lorg/xml/sax/helpers/NamespaceSupport;)V

    #@14
    iput-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@16
    aput-object v2, v0, v1

    #@18
    .line 156
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@1a
    const-string/jumbo v1, "xml"

    #@1d
    const-string/jumbo v2, "http://www.w3.org/XML/1998/namespace"

    #@20
    invoke-virtual {v0, v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    #@23
    .line 150
    return-void
.end method

.method public setNamespaceDeclUris(Z)V
    .locals 3
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 490
    iget v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 491
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 492
    :cond_0
    iget-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    #@c
    if-ne p1, v0, :cond_1

    #@e
    .line 493
    return-void

    #@f
    .line 494
    :cond_1
    iput-boolean p1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    #@11
    .line 495
    if-eqz p1, :cond_2

    #@13
    .line 496
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@15
    const-string/jumbo v1, "xmlns"

    #@18
    const-string/jumbo v2, "http://www.w3.org/xmlns/2000/"

    #@1b
    invoke-virtual {v0, v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 488
    :goto_0
    return-void

    #@1f
    .line 498
    :cond_2
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@21
    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    #@23
    new-instance v2, Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@25
    invoke-direct {v2, p0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;-><init>(Lorg/xml/sax/helpers/NamespaceSupport;)V

    #@28
    iput-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@2a
    aput-object v2, v0, v1

    #@2c
    .line 499
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@2e
    const-string/jumbo v1, "xml"

    #@31
    const-string/jumbo v2, "http://www.w3.org/XML/1998/namespace"

    #@34
    invoke-virtual {v0, v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    #@37
    goto :goto_0
.end method
