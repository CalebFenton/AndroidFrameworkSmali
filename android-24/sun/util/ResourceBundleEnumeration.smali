.class public Lsun/util/ResourceBundleEnumeration;
.super Ljava/lang/Object;
.source "ResourceBundleEnumeration.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field enumeration:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field next:Ljava/lang/String;

.field set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Enumeration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 49
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    #@6
    .line 50
    iput-object p1, p0, Lsun/util/ResourceBundleEnumeration;->set:Ljava/util/Set;

    #@8
    .line 51
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lsun/util/ResourceBundleEnumeration;->iterator:Ljava/util/Iterator;

    #@e
    .line 52
    iput-object p2, p0, Lsun/util/ResourceBundleEnumeration;->enumeration:Ljava/util/Enumeration;

    #@10
    .line 49
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 58
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 59
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->iterator:Ljava/util/Iterator;

    #@7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 60
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->iterator:Ljava/util/Iterator;

    #@f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    iput-object v0, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    #@17
    .line 70
    :cond_0
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    #@19
    if-eqz v0, :cond_3

    #@1b
    const/4 v0, 0x1

    #@1c
    :goto_0
    return v0

    #@1d
    .line 61
    :cond_1
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->enumeration:Ljava/util/Enumeration;

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 62
    :cond_2
    :goto_1
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    #@23
    if-nez v0, :cond_0

    #@25
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->enumeration:Ljava/util/Enumeration;

    #@27
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_0

    #@2d
    .line 63
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->enumeration:Ljava/util/Enumeration;

    #@2f
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Ljava/lang/String;

    #@35
    iput-object v0, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    #@37
    .line 64
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->set:Ljava/util/Set;

    #@39
    iget-object v1, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    #@3b
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_2

    #@41
    .line 65
    iput-object v2, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    #@43
    goto :goto_1

    #@44
    .line 70
    :cond_3
    const/4 v0, 0x0

    #@45
    goto :goto_0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 73
    invoke-virtual {p0}, Lsun/util/ResourceBundleEnumeration;->nextElement()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 74
    invoke-virtual {p0}, Lsun/util/ResourceBundleEnumeration;->hasMoreElements()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 75
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    #@8
    .line 76
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    #@9
    iput-object v1, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    #@b
    .line 77
    return-object v0

    #@c
    .line 79
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    #@e
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@11
    throw v1
.end method
