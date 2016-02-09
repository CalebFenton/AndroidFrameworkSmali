.class public Landroid/test/ClassPathPackageInfo;
.super Ljava/lang/Object;
.source "ClassPathPackageInfo.java"


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final source:Landroid/test/ClassPathPackageInfoSource;

.field private final subpackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final topLevelClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/test/ClassPathPackageInfoSource;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .param p1, "source"    # Landroid/test/ClassPathPackageInfoSource;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/test/ClassPathPackageInfoSource;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 37
    .local p3, "subpackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "topLevelClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    iput-object p1, p0, Landroid/test/ClassPathPackageInfo;->source:Landroid/test/ClassPathPackageInfoSource;

    #@5
    .line 40
    iput-object p2, p0, Landroid/test/ClassPathPackageInfo;->packageName:Ljava/lang/String;

    #@7
    .line 41
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/test/ClassPathPackageInfo;->subpackageNames:Ljava/util/Set;

    #@d
    .line 42
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/test/ClassPathPackageInfo;->topLevelClasses:Ljava/util/Set;

    #@13
    .line 38
    return-void
.end method

.method private addTopLevelClassesTo(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 60
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    iget-object v2, p0, Landroid/test/ClassPathPackageInfo;->topLevelClasses:Ljava/util/Set;

    #@2
    invoke-interface {p1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@5
    .line 61
    invoke-virtual {p0}, Landroid/test/ClassPathPackageInfo;->getSubpackages()Ljava/util/Set;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/test/ClassPathPackageInfo;

    #@19
    .line 62
    .local v0, "info":Landroid/test/ClassPathPackageInfo;
    invoke-direct {v0, p1}, Landroid/test/ClassPathPackageInfo;->addTopLevelClassesTo(Ljava/util/Set;)V

    #@1c
    goto :goto_0

    #@1d
    .line 59
    .end local v0    # "info":Landroid/test/ClassPathPackageInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 68
    instance-of v1, p1, Landroid/test/ClassPathPackageInfo;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 69
    check-cast v0, Landroid/test/ClassPathPackageInfo;

    #@7
    .line 70
    .local v0, "that":Landroid/test/ClassPathPackageInfo;
    iget-object v1, p0, Landroid/test/ClassPathPackageInfo;->packageName:Ljava/lang/String;

    #@9
    iget-object v2, v0, Landroid/test/ClassPathPackageInfo;->packageName:Ljava/lang/String;

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    return v1

    #@10
    .line 72
    .end local v0    # "that":Landroid/test/ClassPathPackageInfo;
    :cond_0
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method public getSubpackages()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/test/ClassPathPackageInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 46
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    #@3
    move-result-object v0

    #@4
    .line 47
    .local v0, "info":Ljava/util/Set;, "Ljava/util/Set<Landroid/test/ClassPathPackageInfo;>;"
    iget-object v3, p0, Landroid/test/ClassPathPackageInfo;->subpackageNames:Ljava/util/Set;

    #@6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    .local v2, "name$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/lang/String;

    #@16
    .line 48
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Landroid/test/ClassPathPackageInfo;->source:Landroid/test/ClassPathPackageInfoSource;

    #@18
    invoke-virtual {v3, v1}, Landroid/test/ClassPathPackageInfoSource;->getPackageInfo(Ljava/lang/String;)Landroid/test/ClassPathPackageInfo;

    #@1b
    move-result-object v3

    #@1c
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1f
    goto :goto_0

    #@20
    .line 50
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getTopLevelClassesRecursive()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 54
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    #@3
    move-result-object v0

    #@4
    .line 55
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p0, v0}, Landroid/test/ClassPathPackageInfo;->addTopLevelClassesTo(Ljava/util/Set;)V

    #@7
    .line 56
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Landroid/test/ClassPathPackageInfo;->packageName:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method
