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
        "Ljava/util/List<",
        "THDR;>;",
        "Ljavax/sip/header/Header;"
    }
.end annotation


# static fields
.field private static greylist prettyEncode:Z


# instance fields
.field protected greylist hlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "THDR;>;"
        }
    .end annotation
.end field

.field private greylist myClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "THDR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lgov/nist/javax/sip/header/SIPHeaderList;->prettyEncode:Z

    return-void
.end method

.method private constructor greylist <init>()V
    .registers 2

    .line 64
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    .line 66
    return-void
.end method

.method protected constructor greylist <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .param p2, "hname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "THDR;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "objclass":Ljava/lang/Class;, "Ljava/lang/Class<THDR;>;"
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>()V

    .line 78
    iput-object p2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    .line 80
    return-void
.end method

.method public static greylist setPrettyEncode(Z)V
    .registers 1
    .param p0, "flag"    # Z

    .line 663
    sput-boolean p0, Lgov/nist/javax/sip/header/SIPHeaderList;->prettyEncode:Z

    .line 664
    return-void
.end method


# virtual methods
.method public greylist add(ILgov/nist/javax/sip/header/SIPHeader;)V
    .registers 4
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

    .line 384
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p2, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 385
    return-void
.end method

.method public bridge synthetic whitelist test-api add(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 49
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    check-cast p2, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {p0, p1, p2}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(ILgov/nist/javax/sip/header/SIPHeader;)V

    return-void
.end method

.method public greylist add(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    .registers 3
    .param p2, "top"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THDR;Z)V"
        }
    .end annotation

    .line 113
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "sipheader":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    if-eqz p2, :cond_6

    .line 114
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->addFirst(Lgov/nist/javax/sip/header/SIPHeader;)V

    goto :goto_9

    .line 116
    :cond_6
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 117
    :goto_9
    return-void
.end method

.method public greylist add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THDR;)Z"
        }
    .end annotation

    .line 89
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "objectToAdd":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 49
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    check-cast p1, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+THDR;>;)Z"
        }
    .end annotation

    .line 527
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+THDR;>;)Z"
        }
    .end annotation

    .line 523
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public greylist addFirst(Lgov/nist/javax/sip/header/SIPHeader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THDR;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "obj":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 102
    return-void
.end method

.method public bridge synthetic whitelist test-api addFirst(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 49
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    check-cast p1, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->addFirst(Lgov/nist/javax/sip/header/SIPHeader;)V

    return-void
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 539
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 540
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 5

    .line 453
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 455
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 456
    .local v2, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object v3, v1

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 457
    .local v1, "retval":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v3, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    iput-object v3, v1, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    .line 458
    iget-object v3, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    iput-object v3, v1, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    .line 459
    iget-object v3, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/SIPHeaderList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object v3
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return-object v3

    .line 460
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "retval":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .end local v2    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_24
    move-exception v0

    .line 461
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not clone!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final greylist clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "THDR;>;)",
            "Lgov/nist/javax/sip/header/SIPHeaderList<",
            "THDR;>;"
        }
    .end annotation

    .line 466
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "hlistToClone":Ljava/util/List;, "Ljava/util/List<THDR;>;"
    if-eqz p1, :cond_1e

    .line 467
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<THDR;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 468
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/Header;

    .line 469
    .local v1, "h":Ljavax/sip/header/Header;
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v1}, Ljavax/sip/header/Header;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    .end local v1    # "h":Ljavax/sip/header/Header;
    goto :goto_6

    .line 472
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<THDR;>;"
    :cond_1e
    return-object p0
.end method

.method public greylist concatenate(Lgov/nist/javax/sip/header/SIPHeaderList;Z)V
    .registers 4
    .param p2, "topFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgov/nist/javax/sip/header/SIPHeaderList<",
            "THDR;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 133
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "other":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    if-nez p2, :cond_6

    .line 134
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->addAll(Ljava/util/Collection;)Z

    goto :goto_a

    .line 137
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->addAll(ILjava/util/Collection;)Z

    .line 140
    :goto_a
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "header"    # Ljava/lang/Object;

    .line 543
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 532
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public greylist debugDump()Ljava/lang/String;
    .registers 2

    .line 351
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->debugDump(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist debugDump(I)Ljava/lang/String;
    .registers 8
    .param p1, "indentation"    # I

    .line 330
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->stringRepresentation:Ljava/lang/String;

    .line 331
    new-instance v0, Lgov/nist/javax/sip/header/Indentation;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/Indentation;-><init>(I)V

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Indentation;->getIndentation()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "indent":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "className":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->sprint(Ljava/lang/String;)V

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->sprint(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<THDR;>;"
    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 338
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    .line 339
    .local v3, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->debugDump()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/header/SIPHeaderList;->sprint(Ljava/lang/String;)V

    .line 340
    .end local v3    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    goto :goto_45

    .line 341
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<THDR;>;"
    :cond_6a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->sprint(Ljava/lang/String;)V

    .line 342
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->stringRepresentation:Ljava/lang/String;

    return-object v2
.end method

.method public greylist encode()Ljava/lang/String;
    .registers 2

    .line 151
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 155
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "\r\n"

    if-eqz v0, :cond_1b

    .line 156
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_a1

    .line 161
    :cond_1b
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string v2, "WWW-Authenticate"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    .line 162
    const-string v2, "Proxy-Authenticate"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    .line 163
    const-string v2, "Authorization"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    .line 164
    const-string v2, "Proxy-Authorization"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    sget-boolean v0, Lgov/nist/javax/sip/header/SIPHeaderList;->prettyEncode:Z

    if-eqz v0, :cond_65

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    .line 166
    const-string v2, "Via"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string v2, "Route"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string v2, "Record-Route"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 167
    :cond_65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lgov/nist/javax/sip/header/ExtensionHeaderList;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    goto :goto_8a

    .line 176
    :cond_72
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a1

    .line 168
    :cond_8a
    :goto_8a
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 169
    .local v0, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<THDR;>;"
    :goto_90
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 170
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    .line 171
    .local v1, "sipheader":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/header/SIPHeader;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 172
    .end local v1    # "sipheader":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    goto :goto_90

    .line 173
    .end local v0    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<THDR;>;"
    :cond_a0
    nop

    .line 181
    :goto_a1
    return-object p1
.end method

.method protected greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 499
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 503
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 505
    .local v0, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<THDR;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    .line 506
    .local v1, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    if-eq v1, p0, :cond_2c

    .line 507
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/header/SIPHeader;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 509
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 510
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string v3, "Privacy"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 511
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 513
    :cond_25
    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    goto :goto_4

    .line 519
    .end local v1    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_2b
    return-object p1

    .line 506
    .restart local v1    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_2c
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected circularity in SipHeaderList"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 399
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 400
    return v0

    .line 402
    :cond_4
    instance-of v1, p1, Lgov/nist/javax/sip/header/SIPHeaderList;

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    .line 403
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 404
    .local v1, "that":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    iget-object v3, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    iget-object v4, v1, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-ne v3, v4, :cond_13

    .line 405
    return v0

    .line 406
    :cond_13
    iget-object v3, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-nez v3, :cond_26

    .line 407
    iget-object v3, v1, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-eqz v3, :cond_25

    iget-object v3, v1, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    :cond_25
    :goto_25
    return v0

    .line 408
    :cond_26
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    iget-object v2, v1, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 410
    .end local v1    # "that":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_2f
    return v2
.end method

.method public greylist get(I)Lgov/nist/javax/sip/header/SIPHeader;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)THDR;"
        }
    .end annotation

    .line 555
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api get(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 49
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->get(I)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object p1

    return-object p1
.end method

.method public greylist getFirst()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()THDR;"
        }
    .end annotation

    .line 212
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_17

    .line 215
    :cond_d
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    return-object v0

    .line 213
    :cond_17
    :goto_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getFirst()Ljava/lang/Object;
    .registers 2

    .line 49
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    return-object v0
.end method

.method public greylist getHeaderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "THDR;>;"
        }
    .end annotation

    .line 263
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    return-object v0
.end method

.method public greylist getHeadersAsEncodedStrings()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 195
    .local v0, "retval":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 196
    .local v1, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<THDR;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 197
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    .line 198
    .local v2, "sipheader":Ljavax/sip/header/Header;
    invoke-interface {v2}, Ljavax/sip/header/Header;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .end local v2    # "sipheader":Ljavax/sip/header/Header;
    goto :goto_b

    .line 202
    :cond_1f
    return-object v0
.end method

.method public greylist getLast()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()THDR;"
        }
    .end annotation

    .line 224
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1e

    .line 226
    :cond_d
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    return-object v0

    .line 225
    :cond_1e
    :goto_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getLast()Ljava/lang/Object;
    .registers 2

    .line 49
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getLast()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    return-object v0
.end method

.method public greylist getMyClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "THDR;>;"
        }
    .end annotation

    .line 235
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    return-object v0
.end method

.method public greylist getName()Ljava/lang/String;
    .registers 2

    .line 60
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 647
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist indexOf(Lgov/nist/core/GenericObject;)I
    .registers 3
    .param p1, "gobj"    # Lgov/nist/core/GenericObject;

    .line 370
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 565
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 244
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public greylist isHeaderList()Z
    .registers 2

    .line 489
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "THDR;>;"
        }
    .end annotation

    .line 576
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 587
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api listIterator()Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "THDR;>;"
        }
    .end annotation

    .line 254
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "THDR;>;"
        }
    .end annotation

    .line 274
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist match(Lgov/nist/javax/sip/header/SIPHeaderList;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgov/nist/javax/sip/header/SIPHeaderList<",
            "*>;)Z"
        }
    .end annotation

    .line 418
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "template":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 419
    return v0

    .line 420
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 421
    return v2

    .line 422
    :cond_14
    move-object v1, p1

    .line 423
    .local v1, "that":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    iget-object v3, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    iget-object v4, v1, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-ne v3, v4, :cond_1c

    .line 424
    return v0

    .line 425
    :cond_1c
    iget-object v3, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-nez v3, :cond_21

    .line 426
    return v2

    .line 429
    :cond_21
    iget-object v3, v1, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 430
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/SIPHeader;

    .line 432
    .local v4, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    const/4 v5, 0x0

    .line 433
    .local v5, "found":Z
    iget-object v6, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 434
    .local v6, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<THDR;>;"
    :goto_3a
    nop

    .line 433
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4e

    if-nez v5, :cond_4e

    .line 435
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    .line 436
    .local v7, "sipHeader1":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v7, v4}, Lgov/nist/javax/sip/header/SIPHeader;->match(Ljava/lang/Object;)Z

    move-result v5

    .line 437
    .end local v7    # "sipHeader1":Lgov/nist/javax/sip/header/SIPHeader;
    goto :goto_3a

    .line 438
    .end local v6    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<THDR;>;"
    :cond_4e
    if-nez v5, :cond_51

    .line 439
    return v2

    .line 440
    .end local v4    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v5    # "found":Z
    :cond_51
    goto :goto_27

    .line 441
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_52
    return v0
.end method

.method public greylist remove(I)Lgov/nist/javax/sip/header/SIPHeader;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)THDR;"
        }
    .end annotation

    .line 611
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api remove(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 49
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->remove(I)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object p1

    return-object p1
.end method

.method public greylist remove(Lgov/nist/javax/sip/header/SIPHeader;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THDR;)Z"
        }
    .end annotation

    .line 305
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "obj":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 306
    const/4 v0, 0x0

    return v0

    .line 308
    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 600
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 619
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public greylist removeFirst()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()THDR;"
        }
    .end annotation

    .line 281
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_12

    .line 282
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    return-object v0

    .line 284
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api removeFirst()Ljava/lang/Object;
    .registers 2

    .line 49
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->removeFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    return-object v0
.end method

.method public greylist removeLast()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()THDR;"
        }
    .end annotation

    .line 291
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_19

    .line 292
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    return-object v0

    .line 294
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api removeLast()Ljava/lang/Object;
    .registers 2

    .line 49
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->removeLast()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 628
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public greylist set(ILgov/nist/javax/sip/header/SIPHeader;)Lgov/nist/javax/sip/header/SIPHeader;
    .registers 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITHDR;)THDR;"
        }
    .end annotation

    .line 657
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p2, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 49
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    check-cast p2, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {p0, p1, p2}, Lgov/nist/javax/sip/header/SIPHeaderList;->set(ILgov/nist/javax/sip/header/SIPHeader;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object p1

    return-object p1
.end method

.method protected greylist setMyClass(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "THDR;>;)V"
        }
    .end annotation

    .line 319
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<THDR;>;"
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    .line 320
    return-void
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 479
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api subList(II)Ljava/util/List;
    .registers 4
    .param p1, "index1"    # I
    .param p2, "index2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "THDR;>;"
        }
    .end annotation

    .line 637
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 360
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 668
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
