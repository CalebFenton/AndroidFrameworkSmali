.class Ljava/net/URLClassLoader$3;
.super Ljava/lang/Object;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/URLClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/URLClassLoader;

.field private url:Ljava/net/URL;

.field final synthetic val$e:Ljava/util/Enumeration;


# direct methods
.method constructor <init>(Ljava/net/URLClassLoader;Ljava/util/Enumeration;)V
    .locals 1
    .param p1, "this$0"    # Ljava/net/URLClassLoader;

    #@0
    .prologue
    .line 570
    .local p2, "val$e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    iput-object p1, p0, Ljava/net/URLClassLoader$3;->this$0:Ljava/net/URLClassLoader;

    #@2
    iput-object p2, p0, Ljava/net/URLClassLoader$3;->val$e:Ljava/util/Enumeration;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 571
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Ljava/net/URLClassLoader$3;->url:Ljava/net/URL;

    #@a
    .line 570
    return-void
.end method

.method private next()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 574
    iget-object v2, p0, Ljava/net/URLClassLoader$3;->url:Ljava/net/URL;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 575
    return v1

    #@6
    .line 588
    .local v0, "u":Ljava/net/URL;
    :cond_0
    iget-object v2, p0, Ljava/net/URLClassLoader$3;->this$0:Ljava/net/URLClassLoader;

    #@8
    invoke-static {v2}, Ljava/net/URLClassLoader;->-get1(Ljava/net/URLClassLoader;)Lsun/misc/URLClassPath;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, v0}, Lsun/misc/URLClassPath;->checkURL(Ljava/net/URL;)Ljava/net/URL;

    #@f
    move-result-object v2

    #@10
    iput-object v2, p0, Ljava/net/URLClassLoader$3;->url:Ljava/net/URL;

    #@12
    .line 589
    iget-object v2, p0, Ljava/net/URLClassLoader$3;->url:Ljava/net/URL;

    #@14
    if-nez v2, :cond_2

    #@16
    .line 579
    .end local v0    # "u":Ljava/net/URL;
    :cond_1
    new-instance v2, Ljava/net/URLClassLoader$3$1;

    #@18
    iget-object v3, p0, Ljava/net/URLClassLoader$3;->val$e:Ljava/util/Enumeration;

    #@1a
    invoke-direct {v2, p0, v3}, Ljava/net/URLClassLoader$3$1;-><init>(Ljava/net/URLClassLoader$3;Ljava/util/Enumeration;)V

    #@1d
    .line 585
    iget-object v3, p0, Ljava/net/URLClassLoader$3;->this$0:Ljava/net/URLClassLoader;

    #@1f
    invoke-static {v3}, Ljava/net/URLClassLoader;->-get0(Ljava/net/URLClassLoader;)Ljava/security/AccessControlContext;

    #@22
    move-result-object v3

    #@23
    .line 578
    invoke-static {v2, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Ljava/net/URL;

    #@29
    .line 586
    .restart local v0    # "u":Ljava/net/URL;
    if-nez v0, :cond_0

    #@2b
    .line 590
    :cond_2
    iget-object v2, p0, Ljava/net/URLClassLoader$3;->url:Ljava/net/URL;

    #@2d
    if-eqz v2, :cond_3

    #@2f
    :goto_0
    return v1

    #@30
    :cond_3
    const/4 v1, 0x0

    #@31
    goto :goto_0
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    #@0
    .prologue
    .line 603
    invoke-direct {p0}, Ljava/net/URLClassLoader$3;->next()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 593
    invoke-virtual {p0}, Ljava/net/URLClassLoader$3;->nextElement()Ljava/net/URL;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextElement()Ljava/net/URL;
    .locals 2

    #@0
    .prologue
    .line 594
    invoke-direct {p0}, Ljava/net/URLClassLoader$3;->next()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 595
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 597
    :cond_0
    iget-object v0, p0, Ljava/net/URLClassLoader$3;->url:Ljava/net/URL;

    #@e
    .line 598
    .local v0, "u":Ljava/net/URL;
    const/4 v1, 0x0

    #@f
    iput-object v1, p0, Ljava/net/URLClassLoader$3;->url:Ljava/net/URL;

    #@11
    .line 599
    return-object v0
.end method
