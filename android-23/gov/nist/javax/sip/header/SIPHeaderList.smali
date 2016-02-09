.class public abstract Lgov/nist/javax/sip/header/SIPHeaderList;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "SIPHeaderList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljavax/sip/header/Header;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<HDR:",
        "Lgov/nist/javax/sip/header/SIPHeader;",
        ">",
        "Lgov/nist/javax/sip/header/SIPHeader;",
        "Ljava/util/List",
        "<THDR;>;",
        "Ljavax/sip/header/Header;"
    }
.end annotation


# static fields
.field private static prettyEncode:Z


# instance fields
.field protected hlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<THDR;>;"
        }
    .end annotation
.end field

.field private myClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<THDR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 51
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Lgov/nist/javax/sip/header/SIPHeaderList;->prettyEncode:Z

    #@3
    .line 49
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 64
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>()V

    #@3
    .line 65
    new-instance v0, Ljava/util/LinkedList;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@8
    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@a
    .line 64
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "hname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<THDR;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 77
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "objclass":Ljava/lang/Class;, "Ljava/lang/Class<THDR;>;"
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>()V

    #@3
    .line 78
    iput-object p2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    #@5
    .line 79
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    #@7
    .line 76
    return-void
.end method

.method public static setPrettyEncode(Z)V
    .locals 0
    .param p0, "flag"    # Z

    #@0
    .prologue
    .line 660
    sput-boolean p0, Lgov/nist/javax/sip/header/SIPHeaderList;->prettyEncode:Z

    #@2
    .line 659
    return-void
.end method


# virtual methods
.method public add(ILgov/nist/javax/sip/header/SIPHeader;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITHDR;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 381
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p2, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@5
    .line 380
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "sipHeader"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 379
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    check-cast p2, Lgov/nist/javax/sip/header/SIPHeader;

    #@2
    .end local p2    # "sipHeader":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(ILgov/nist/javax/sip/header/SIPHeader;)V

    #@5
    return-void
.end method

.method public add(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    .locals 0
    .param p2, "top"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THDR;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 113
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "sipheader":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    if-eqz p2, :cond_0

    #@2
    .line 114
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->addFirst(Lgov/nist/javax/sip/header/SIPHeader;)V

    #@5
    .line 112
    :goto_0
    return-void

    #@6
    .line 116
    :cond_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@9
    goto :goto_0
.end method

.method public add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THDR;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 89
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "objectToAdd":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 90
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "objectToAdd"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 88
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    check-cast p1, Lgov/nist/javax/sip/header/SIPHeader;

    #@2
    .end local p1    # "objectToAdd":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+THDR;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 524
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+THDR;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 520
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public addFirst(Lgov/nist/javax/sip/header/SIPHeader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THDR;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 101
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "obj":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@6
    .line 100
    return-void
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 536
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    .line 535
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    #@0
    .prologue
    .line 450
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 452
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    #@5
    check-cast v4, [Ljava/lang/Class;

    #@7
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@a
    move-result-object v1

    #@b
    .line 453
    .local v1, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x0

    #@c
    check-cast v4, [Ljava/lang/Object;

    #@e
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@14
    .line 454
    .local v3, "retval":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v4, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    #@16
    iput-object v4, v3, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    #@18
    .line 455
    iget-object v4, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    #@1a
    iput-object v4, v3, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    #@1c
    .line 456
    iget-object v4, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@1e
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/header/SIPHeaderList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result-object v4

    #@22
    return-object v4

    #@23
    .line 457
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "retval":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    :catch_0
    move-exception v2

    #@24
    .line 458
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    #@26
    const-string/jumbo v5, "Could not clone!"

    #@29
    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2c
    throw v4
.end method

.method protected final clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<THDR;>;)",
            "Lgov/nist/javax/sip/header/SIPHeaderList",
            "<THDR;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 463
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "hlistToClone":Ljava/util/List;, "Ljava/util/List<THDR;>;"
    if-eqz p1, :cond_0

    #@2
    .line 464
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<THDR;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 465
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljavax/sip/header/Header;

    #@12
    .line 466
    .local v0, "h":Ljavax/sip/header/Header;
    iget-object v3, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@14
    invoke-interface {v0}, Ljavax/sip/header/Header;->clone()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    #@1a
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1d
    goto :goto_0

    #@1e
    .line 469
    .end local v0    # "h":Ljavax/sip/header/Header;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<THDR;>;"
    :cond_0
    return-object p0
.end method

.method public concatenate(Lgov/nist/javax/sip/header/SIPHeaderList;Z)V
    .locals 1
    .param p2, "topFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgov/nist/javax/sip/header/SIPHeaderList",
            "<THDR;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "other":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    if-nez p2, :cond_0

    #@2
    .line 134
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->addAll(Ljava/util/Collection;)Z

    #@5
    .line 132
    :goto_0
    return-void

    #@6
    .line 137
    :cond_0
    const/4 v0, 0x0

    #@7
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->addAll(ILjava/util/Collection;)Z

    #@a
    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "header"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 540
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 529
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public debugDump()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 348
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->debugDump(I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public debugDump(I)Ljava/lang/String;
    .locals 6
    .param p1, "indentation"    # I

    #@0
    .prologue
    .line 327
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    const-string/jumbo v4, ""

    #@3
    iput-object v4, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->stringRepresentation:Ljava/lang/String;

    #@5
    .line 328
    new-instance v4, Lgov/nist/javax/sip/header/Indentation;

    #@7
    invoke-direct {v4, p1}, Lgov/nist/javax/sip/header/Indentation;-><init>(I)V

    #@a
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Indentation;->getIndentation()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 330
    .local v1, "indent":Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 331
    .local v0, "className":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/header/SIPHeaderList;->sprint(Ljava/lang/String;)V

    #@2a
    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    const-string/jumbo v5, "{"

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/header/SIPHeaderList;->sprint(Ljava/lang/String;)V

    #@41
    .line 334
    iget-object v4, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@43
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@46
    move-result-object v2

    #@47
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<THDR;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@4a
    move-result v4

    #@4b
    if-eqz v4, :cond_0

    #@4d
    .line 335
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@50
    move-result-object v3

    #@51
    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    #@53
    .line 336
    .local v3, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    new-instance v4, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->debugDump()Ljava/lang/String;

    #@5f
    move-result-object v5

    #@60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/header/SIPHeaderList;->sprint(Ljava/lang/String;)V

    #@6b
    goto :goto_0

    #@6c
    .line 338
    .end local v3    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    const-string/jumbo v5, "}"

    #@78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v4

    #@80
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/header/SIPHeaderList;->sprint(Ljava/lang/String;)V

    #@83
    .line 339
    iget-object v4, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->stringRepresentation:Ljava/lang/String;

    #@85
    return-object v4
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 151
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 155
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 156
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    #@a
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d
    move-result-object v2

    #@e
    const/16 v3, 0x3a

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, "\r\n"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a
    .line 181
    :cond_0
    :goto_0
    return-object p1

    #@1b
    .line 161
    :cond_1
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    #@1d
    const-string/jumbo v3, "WWW-Authenticate"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v2

    #@24
    if-nez v2, :cond_3

    #@26
    .line 162
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    #@28
    const-string/jumbo v3, "Proxy-Authenticate"

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v2

    #@2f
    .line 161
    if-nez v2, :cond_3

    #@31
    .line 163
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    #@33
    const-string/jumbo v3, "Authorization"

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v2

    #@3a
    .line 161
    if-nez v2, :cond_3

    #@3c
    .line 164
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    #@3e
    const-string/jumbo v3, "Proxy-Authorization"

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v2

    #@45
    .line 161
    if-nez v2, :cond_3

    #@47
    .line 165
    sget-boolean v2, Lgov/nist/javax/sip/header/SIPHeaderList;->prettyEncode:Z

    #@49
    if-eqz v2, :cond_2

    #@4b
    .line 166
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    #@4d
    const-string/jumbo v3, "Via"

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v2

    #@54
    if-nez v2, :cond_3

    #@56
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    #@58
    const-string/jumbo v3, "Route"

    #@5b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v2

    #@5f
    if-nez v2, :cond_3

    #@61
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    #@63
    const-string/jumbo v3, "Record-Route"

    #@66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v2

    #@6a
    .line 161
    if-nez v2, :cond_3

    #@6c
    .line 167
    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getClass()Ljava/lang/Class;

    #@6f
    move-result-object v2

    #@70
    const-class v3, Lgov/nist/javax/sip/header/ExtensionHeaderList;

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v2

    #@76
    .line 161
    if-eqz v2, :cond_4

    #@78
    .line 168
    :cond_3
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@7a
    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@7d
    move-result-object v0

    #@7e
    .line 169
    .local v0, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<THDR;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@81
    move-result v2

    #@82
    if-eqz v2, :cond_0

    #@84
    .line 170
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@87
    move-result-object v1

    #@88
    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    #@8a
    .line 171
    .local v1, "sipheader":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/header/SIPHeader;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@8d
    goto :goto_1

    #@8e
    .line 176
    .end local v0    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<THDR;>;"
    .end local v1    # "sipheader":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    :cond_4
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    #@90
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@93
    move-result-object v2

    #@94
    const-string/jumbo v3, ":"

    #@97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9a
    move-result-object v2

    #@9b
    const-string/jumbo v3, " "

    #@9e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a1
    .line 177
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@a4
    .line 178
    const-string/jumbo v2, "\r\n"

    #@a7
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@aa
    goto/16 :goto_0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 496
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 500
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->listIterator()Ljava/util/ListIterator;

    #@3
    move-result-object v0

    #@4
    .line 502
    .local v0, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<THDR;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    #@a
    .line 503
    .local v1, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    if-ne v1, p0, :cond_0

    #@c
    new-instance v2, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v3, "Unexpected circularity in SipHeaderList"

    #@11
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    throw v2

    #@15
    .line 504
    :cond_0
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/header/SIPHeader;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@18
    .line 506
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 507
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    #@20
    const-string/jumbo v3, "Privacy"

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    if-nez v2, :cond_1

    #@29
    .line 508
    const-string/jumbo v2, ","

    #@2c
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2f
    goto :goto_0

    #@30
    .line 510
    :cond_1
    const-string/jumbo v2, ";"

    #@33
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@36
    goto :goto_0

    #@37
    .line 516
    :cond_2
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 396
    if-ne p1, p0, :cond_0

    #@4
    .line 397
    return v1

    #@5
    .line 399
    :cond_0
    instance-of v3, p1, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@7
    if-eqz v3, :cond_5

    #@9
    move-object v0, p1

    #@a
    .line 400
    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@c
    .line 401
    .local v0, "that":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    iget-object v3, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@e
    iget-object v4, v0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@10
    if-ne v3, v4, :cond_1

    #@12
    .line 402
    return v1

    #@13
    .line 403
    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@15
    if-nez v3, :cond_4

    #@17
    .line 404
    iget-object v3, v0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@19
    if-eqz v3, :cond_2

    #@1b
    iget-object v3, v0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@1d
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_3

    #@23
    :cond_2
    :goto_0
    return v1

    #@24
    :cond_3
    move v1, v2

    #@25
    goto :goto_0

    #@26
    .line 405
    :cond_4
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@28
    iget-object v2, v0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2a
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v1

    #@2e
    return v1

    #@2f
    .line 407
    .end local v0    # "that":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_5
    return v2
.end method

.method public get(I)Lgov/nist/javax/sip/header/SIPHeader;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)THDR;"
        }
    .end annotation

    #@0
    .prologue
    .line 552
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    #@8
    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 551
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->get(I)Lgov/nist/javax/sip/header/SIPHeader;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getFirst()Ljavax/sip/header/Header;
    .locals 2

    #@0
    .prologue
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    const/4 v1, 0x0

    #@1
    .line 212
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 213
    :cond_0
    return-object v1

    #@e
    .line 215
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@10
    const/4 v1, 0x0

    #@11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljavax/sip/header/Header;

    #@17
    return-object v0
.end method

.method public getHeaderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<THDR;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 263
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getHeadersAsEncodedStrings()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 193
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    new-instance v1, Ljava/util/LinkedList;

    #@2
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@5
    .line 195
    .local v1, "retval":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@7
    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@a
    move-result-object v0

    #@b
    .line 196
    .local v0, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<THDR;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 197
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljavax/sip/header/Header;

    #@17
    .line 198
    .local v2, "sipheader":Ljavax/sip/header/Header;
    invoke-interface {v2}, Ljavax/sip/header/Header;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1e
    goto :goto_0

    #@1f
    .line 202
    .end local v2    # "sipheader":Ljavax/sip/header/Header;
    :cond_0
    return-object v1
.end method

.method public getLast()Ljavax/sip/header/Header;
    .locals 2

    #@0
    .prologue
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    const/4 v1, 0x0

    #@1
    .line 224
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 225
    :cond_0
    return-object v1

    #@e
    .line 226
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@10
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@12
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@15
    move-result v1

    #@16
    add-int/lit8 v1, v1, -0x1

    #@18
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljavax/sip/header/Header;

    #@1e
    return-object v0
.end method

.method public getMyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<THDR;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 235
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 60
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 644
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public indexOf(Lgov/nist/core/GenericObject;)I
    .locals 1
    .param p1, "gobj"    # Lgov/nist/core/GenericObject;

    #@0
    .prologue
    .line 367
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 562
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 244
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isHeaderList()Z
    .locals 1

    #@0
    .prologue
    .line 486
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<THDR;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 573
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 584
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<THDR;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 254
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<THDR;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 274
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public match(Lgov/nist/javax/sip/header/SIPHeaderList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgov/nist/javax/sip/header/SIPHeaderList",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "template":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 415
    if-nez p1, :cond_0

    #@4
    .line 416
    return v9

    #@5
    .line 417
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v6

    #@9
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v7

    #@d
    invoke-virtual {v6, v7}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v6

    #@11
    if-nez v6, :cond_1

    #@13
    .line 418
    return v8

    #@14
    .line 419
    :cond_1
    move-object v5, p1

    #@15
    .line 420
    .local v5, "that":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    iget-object v6, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@17
    iget-object v7, v5, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@19
    if-ne v6, v7, :cond_2

    #@1b
    .line 421
    return v9

    #@1c
    .line 422
    :cond_2
    iget-object v6, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@1e
    if-nez v6, :cond_3

    #@20
    .line 423
    return v8

    #@21
    .line 426
    :cond_3
    iget-object v6, v5, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@23
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v1

    #@27
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_7

    #@2d
    .line 427
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v3

    #@31
    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    #@33
    .line 429
    .local v3, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    const/4 v0, 0x0

    #@34
    .line 430
    .local v0, "found":Z
    iget-object v6, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@36
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@39
    move-result-object v2

    #@3a
    .end local v0    # "found":Z
    .local v2, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<THDR;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@3d
    move-result v6

    #@3e
    if-eqz v6, :cond_5

    #@40
    .line 431
    if-eqz v0, :cond_6

    #@42
    .line 435
    :cond_5
    if-nez v0, :cond_4

    #@44
    .line 436
    return v8

    #@45
    .line 432
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@48
    move-result-object v4

    #@49
    check-cast v4, Lgov/nist/javax/sip/header/SIPHeader;

    #@4b
    .line 433
    .local v4, "sipHeader1":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v4, v3}, Lgov/nist/javax/sip/header/SIPHeader;->match(Ljava/lang/Object;)Z

    #@4e
    move-result v0

    #@4f
    .local v0, "found":Z
    goto :goto_0

    #@50
    .line 438
    .end local v0    # "found":Z
    .end local v2    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<THDR;>;"
    .end local v3    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v4    # "sipHeader1":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_7
    return v9
.end method

.method public remove(I)Lgov/nist/javax/sip/header/SIPHeader;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)THDR;"
        }
    .end annotation

    #@0
    .prologue
    .line 608
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    #@8
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 607
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->remove(I)Lgov/nist/javax/sip/header/SIPHeader;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove(Lgov/nist/javax/sip/header/SIPHeader;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THDR;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "obj":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    const/4 v1, 0x0

    #@1
    .line 302
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@3
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 303
    return v1

    #@a
    .line 305
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@c
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 597
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 616
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public removeFirst()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    const/4 v1, 0x0

    #@1
    .line 281
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@3
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 282
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@b
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@e
    .line 280
    :cond_0
    return-void
.end method

.method public removeLast()V
    .locals 2

    #@0
    .prologue
    .line 290
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 291
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@a
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@c
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@f
    move-result v1

    #@10
    add-int/lit8 v1, v1, -0x1

    #@12
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@15
    .line 289
    :cond_0
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 625
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public set(ILgov/nist/javax/sip/header/SIPHeader;)Lgov/nist/javax/sip/header/SIPHeader;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITHDR;)THDR;"
        }
    .end annotation

    #@0
    .prologue
    .line 654
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p2, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    #@8
    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .param p2, "sipHeader"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 652
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    check-cast p2, Lgov/nist/javax/sip/header/SIPHeader;

    #@2
    .end local p2    # "sipHeader":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgov/nist/javax/sip/header/SIPHeaderList;->set(ILgov/nist/javax/sip/header/SIPHeader;)Lgov/nist/javax/sip/header/SIPHeader;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected setMyClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<THDR;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 316
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<THDR;>;"
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    #@2
    .line 315
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 476
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "index1"    # I
    .param p2, "index2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<THDR;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 634
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 357
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 665
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
