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
.field private static final greylist EMPTY_ENUMERATION:Ljava/util/Enumeration;

.field public static final whitelist test-api NSDECL:Ljava/lang/String; = "http://www.w3.org/xmlns/2000/"

.field public static final whitelist test-api XMLNS:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private greylist contextPos:I

.field private greylist contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

.field private greylist currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

.field private greylist namespaceDeclUris:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetnamespaceDeclUris(Lorg/xml/sax/helpers/NamespaceSupport;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY_ENUMERATION()Ljava/util/Enumeration;
    .registers 1

    sget-object v0, Lorg/xml/sax/helpers/NamespaceSupport;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 118
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    sput-object v0, Lorg/xml/sax/helpers/NamespaceSupport;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-virtual {p0}, Lorg/xml/sax/helpers/NamespaceSupport;->reset()V

    .line 132
    return-void
.end method


# virtual methods
.method public whitelist test-api declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 296
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_18

    .line 299
    :cond_11
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v0, p1, p2}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x1

    return v0

    .line 297
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getDeclaredPrefixes()Ljava/util/Enumeration;
    .registers 2

    .line 473
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->getDeclaredPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPrefixes()Ljava/util/Enumeration;
    .registers 2

    .line 394
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->getPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPrefixes(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v0, "prefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefixes()Ljava/util/Enumeration;

    move-result-object v1

    .line 449
    .local v1, "allPrefixes":Ljava/util/Enumeration;
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 450
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 451
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 452
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_22
    goto :goto_9

    .line 455
    :cond_23
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api getURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isNamespaceDeclUris()Z
    .registers 2

    .line 514
    iget-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    return v0
.end method

.method public whitelist test-api popContext()V
    .registers 3

    .line 241
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->clear()V

    .line 242
    iget v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    .line 243
    iget v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    if-ltz v0, :cond_1c

    .line 246
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 247
    return-void

    .line 244
    :cond_1c
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0
.end method

.method public whitelist test-api processName(Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 7
    .param p1, "qName"    # Ljava/lang/String;
    .param p2, "parts"    # [Ljava/lang/String;
    .param p3, "isAttribute"    # Z

    .line 348
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v0, p1, p3}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->processName(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "myParts":[Ljava/lang/String;
    if-nez v0, :cond_a

    .line 350
    const/4 v1, 0x0

    return-object v1

    .line 352
    :cond_a
    const/4 v1, 0x0

    aget-object v2, v0, v1

    aput-object v2, p2, v1

    .line 353
    const/4 v1, 0x1

    aget-object v2, v0, v1

    aput-object v2, p2, v1

    .line 354
    const/4 v1, 0x2

    aget-object v2, v0, v1

    aput-object v2, p2, v1

    .line 355
    return-object p2
.end method

.method public whitelist test-api pushContext()V
    .registers 5

    .line 200
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    array-length v0, v0

    .line 202
    .local v0, "max":I
    iget-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declsOK:Z

    .line 203
    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    .line 206
    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    if-lt v1, v0, :cond_23

    .line 207
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 208
    .local v1, "newContexts":[Lorg/xml/sax/helpers/NamespaceSupport$Context;
    iget-object v3, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    mul-int/lit8 v0, v0, 0x2

    .line 210
    iput-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 214
    .end local v1    # "newContexts":[Lorg/xml/sax/helpers/NamespaceSupport$Context;
    :cond_23
    iget-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 215
    iget-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    if-nez v1, :cond_3c

    .line 216
    iget-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    new-instance v3, Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-direct {v3, p0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;-><init>(Lorg/xml/sax/helpers/NamespaceSupport;)V

    iput-object v3, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    aput-object v3, v1, v2

    .line 220
    :cond_3c
    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    if-lez v1, :cond_4d

    .line 221
    iget-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v3, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->setParent(Lorg/xml/sax/helpers/NamespaceSupport$Context;)V

    .line 223
    :cond_4d
    return-void
.end method

.method public whitelist test-api reset()V
    .registers 4

    .line 154
    const/16 v0, 0x20

    new-array v0, v0, [Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    .line 156
    iput v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    .line 157
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    new-instance v2, Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-direct {v2, p0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;-><init>(Lorg/xml/sax/helpers/NamespaceSupport;)V

    iput-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    aput-object v2, v0, v1

    .line 158
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public whitelist test-api setNamespaceDeclUris(Z)V
    .registers 5
    .param p1, "value"    # Z

    .line 492
    iget v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    if-nez v0, :cond_2e

    .line 494
    iget-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    if-ne p1, v0, :cond_9

    .line 495
    return-void

    .line 496
    :cond_9
    iput-boolean p1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    .line 497
    if-eqz p1, :cond_17

    .line 498
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    const-string v1, "xmlns"

    const-string v2, "http://www.w3.org/xmlns/2000/"

    invoke-virtual {v0, v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 500
    :cond_17
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    new-instance v2, Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-direct {v2, p0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;-><init>(Lorg/xml/sax/helpers/NamespaceSupport;)V

    iput-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    aput-object v2, v0, v1

    .line 501
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :goto_2d
    return-void

    .line 493
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
