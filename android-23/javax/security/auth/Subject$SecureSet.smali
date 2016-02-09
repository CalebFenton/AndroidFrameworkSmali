.class final Ljavax/security/auth/Subject$SecureSet;
.super Ljava/util/AbstractSet;
.source "Subject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/security/auth/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecureSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/security/auth/Subject$SecureSet$SecureIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SST:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TSST;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final SET_Principal:I = 0x0

.field private static final SET_PrivCred:I = 0x1

.field private static final SET_PubCred:I = 0x2

.field private static final serialVersionUID:J = 0x6dcc328017557e27L


# instance fields
.field private elements:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TSST;>;"
        }
    .end annotation
.end field

.field private transient permission:Ljavax/security/auth/AuthPermission;

.field private setType:I

.field final synthetic this$0:Ljavax/security/auth/Subject;


# direct methods
.method protected constructor <init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V
    .locals 1
    .param p1, "this$0"    # Ljavax/security/auth/Subject;
    .param p2, "perm"    # Ljavax/security/auth/AuthPermission;

    #@0
    .prologue
    .line 535
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet;->this$0:Ljavax/security/auth/Subject;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    .line 536
    iput-object p2, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    #@7
    .line 537
    new-instance v0, Ljava/util/LinkedList;

    #@9
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@c
    iput-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    #@e
    .line 535
    return-void
.end method

.method protected constructor <init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;Ljava/util/Collection;)V
    .locals 4
    .param p1, "this$0"    # Ljavax/security/auth/Subject;
    .param p2, "perm"    # Ljavax/security/auth/AuthPermission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/AuthPermission;",
            "Ljava/util/Collection",
            "<+TSST;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 543
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    .local p3, "s":Ljava/util/Collection;, "Ljava/util/Collection<+TSST;>;"
    invoke-direct {p0, p1, p2}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    #@3
    .line 547
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@a
    move-result-object v3

    #@b
    if-nez v3, :cond_2

    #@d
    const/4 v2, 0x1

    #@e
    .line 549
    .local v2, "trust":Z
    :goto_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "o$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_3

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    .line 550
    .local v0, "o":Ljava/lang/Object;, "TSST;"
    invoke-direct {p0, v0}, Ljavax/security/auth/Subject$SecureSet;->verifyElement(Ljava/lang/Object;)V

    #@1f
    .line 551
    if-nez v2, :cond_1

    #@21
    iget-object v3, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    #@23
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_0

    #@29
    .line 552
    :cond_1
    iget-object v3, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    #@2b
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@2e
    goto :goto_1

    #@2f
    .line 547
    .end local v0    # "o":Ljava/lang/Object;, "TSST;"
    .end local v1    # "o$iterator":Ljava/util/Iterator;
    .end local v2    # "trust":Z
    :cond_2
    const/4 v2, 0x0

    #@30
    .restart local v2    # "trust":Z
    goto :goto_0

    #@31
    .line 542
    .restart local v1    # "o$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 681
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 683
    iget v2, p0, Ljavax/security/auth/Subject$SecureSet;->setType:I

    #@5
    packed-switch v2, :pswitch_data_0

    #@8
    .line 694
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@d
    throw v2

    #@e
    .line 685
    :pswitch_0
    invoke-static {}, Ljavax/security/auth/Subject;->-get0()Ljavax/security/auth/AuthPermission;

    #@11
    move-result-object v2

    #@12
    iput-object v2, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    #@14
    .line 697
    :goto_0
    iget-object v2, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    #@16
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    .line 698
    .local v0, "element":Ljava/lang/Object;, "TSST;"
    invoke-direct {p0, v0}, Ljavax/security/auth/Subject$SecureSet;->verifyElement(Ljava/lang/Object;)V

    #@27
    goto :goto_1

    #@28
    .line 688
    .end local v0    # "element":Ljava/lang/Object;, "TSST;"
    .end local v1    # "element$iterator":Ljava/util/Iterator;
    :pswitch_1
    invoke-static {}, Ljavax/security/auth/Subject;->-get1()Ljavax/security/auth/AuthPermission;

    #@2b
    move-result-object v2

    #@2c
    iput-object v2, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    #@2e
    goto :goto_0

    #@2f
    .line 691
    :pswitch_2
    invoke-static {}, Ljavax/security/auth/Subject;->-get2()Ljavax/security/auth/AuthPermission;

    #@32
    move-result-object v2

    #@33
    iput-object v2, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    #@35
    goto :goto_0

    #@36
    .line 680
    .restart local v1    # "element$iterator":Ljava/util/Iterator;
    :cond_0
    return-void

    #@37
    .line 683
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private verifyElement(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 560
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    if-nez p1, :cond_0

    #@2
    .line 561
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "o == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 563
    :cond_0
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    #@d
    invoke-static {}, Ljavax/security/auth/Subject;->-get0()Ljavax/security/auth/AuthPermission;

    #@10
    move-result-object v1

    #@11
    if-ne v0, v1, :cond_1

    #@13
    const-class v0, Ljava/security/Principal;

    #@15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 558
    :cond_1
    return-void

    #@20
    .line 564
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@22
    const-string/jumbo v1, "Element is not instance of java.security.Principal"

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 705
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    #@2
    invoke-static {}, Ljavax/security/auth/Subject;->-get1()Ljavax/security/auth/AuthPermission;

    #@5
    move-result-object v1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 706
    const/4 v0, 0x1

    #@9
    iput v0, p0, Ljavax/security/auth/Subject$SecureSet;->setType:I

    #@b
    .line 713
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@e
    .line 703
    return-void

    #@f
    .line 707
    :cond_0
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    #@11
    invoke-static {}, Ljavax/security/auth/Subject;->-get0()Ljavax/security/auth/AuthPermission;

    #@14
    move-result-object v1

    #@15
    if-ne v0, v1, :cond_1

    #@17
    .line 708
    const/4 v0, 0x0

    #@18
    iput v0, p0, Ljavax/security/auth/Subject$SecureSet;->setType:I

    #@1a
    goto :goto_0

    #@1b
    .line 710
    :cond_1
    const/4 v0, 0x2

    #@1c
    iput v0, p0, Ljavax/security/auth/Subject$SecureSet;->setType:I

    #@1e
    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSST;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 575
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    .local p1, "o":Ljava/lang/Object;, "TSST;"
    invoke-direct {p0, p1}, Ljavax/security/auth/Subject$SecureSet;->verifyElement(Ljava/lang/Object;)V

    #@3
    .line 577
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->this$0:Ljavax/security/auth/Subject;

    #@5
    invoke-static {v0}, Ljavax/security/auth/Subject;->-wrap0(Ljavax/security/auth/Subject;)V

    #@8
    .line 579
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 580
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    #@12
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@15
    .line 581
    const/4 v0, 0x1

    #@16
    return v0

    #@17
    .line 583
    :cond_0
    const/4 v0, 0x0

    #@18
    return v0
.end method

.method protected final get(Ljava/lang/Class;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 630
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    if-nez p1, :cond_0

    #@2
    .line 631
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v4, "c == null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 634
    :cond_0
    new-instance v2, Ljavax/security/auth/Subject$SecureSet$2;

    #@d
    invoke-direct {v2, p0, p1}, Ljavax/security/auth/Subject$SecureSet$2;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/lang/Class;)V

    #@10
    .line 671
    .local v2, "s":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    .local v1, "o$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_2

    #@1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    .line 672
    .local v0, "o":Ljava/lang/Object;, "TSST;"
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    .line 673
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v2, v3}, Ljava/util/AbstractSet;->add(Ljava/lang/Object;)Z

    #@2f
    goto :goto_0

    #@30
    .line 676
    .end local v0    # "o":Ljava/lang/Object;, "TSST;"
    :cond_2
    return-object v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TSST;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 590
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    #@2
    invoke-static {}, Ljavax/security/auth/Subject;->-get1()Ljavax/security/auth/AuthPermission;

    #@5
    move-result-object v1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 595
    new-instance v0, Ljavax/security/auth/Subject$SecureSet$1;

    #@a
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    #@c
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, p0, p0, v1}, Ljavax/security/auth/Subject$SecureSet$1;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    #@13
    return-object v0

    #@14
    .line 607
    :cond_0
    new-instance v0, Ljavax/security/auth/Subject$SecureSet$SecureIterator;

    #@16
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    #@18
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet$SecureIterator;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    #@1f
    return-object v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 613
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p1, :cond_0

    #@2
    .line 614
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "c == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 616
    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->retainAll(Ljava/util/Collection;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 621
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
