.class final Lcom/android/server/pm/Policy;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Policy$PolicyBuilder;
    }
.end annotation


# instance fields
.field private final mCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeinfo:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/Policy;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/Policy;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/pm/Policy;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private constructor <init>(Lcom/android/server/pm/Policy$PolicyBuilder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/server/pm/Policy$PolicyBuilder;

    #@0
    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 341
    invoke-static {p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->-get2(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    #@9
    .line 342
    invoke-static {p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->-get0(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Set;

    #@c
    move-result-object v0

    #@d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    #@13
    .line 343
    invoke-static {p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->-get1(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Map;

    #@16
    move-result-object v0

    #@17
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    #@1d
    .line 340
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/Policy$PolicyBuilder;Lcom/android/server/pm/Policy;)V
    .locals 0
    .param p1, "builder"    # Lcom/android/server/pm/Policy$PolicyBuilder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/Policy;-><init>(Lcom/android/server/pm/Policy$PolicyBuilder;)V

    #@3
    return-void
.end method


# virtual methods
.method public getInnerPackages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public getMatchedSeinfo(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;
    .locals 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 429
    iget-object v2, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    #@3
    const/4 v3, 0x0

    #@4
    new-array v3, v3, [Landroid/content/pm/Signature;

    #@6
    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [Landroid/content/pm/Signature;

    #@c
    .line 430
    .local v0, "certs":[Landroid/content/pm/Signature;
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@e
    invoke-static {v0, v2}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_0

    #@14
    .line 431
    return-object v4

    #@15
    .line 436
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    #@17
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@19
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/lang/String;

    #@1f
    .line 437
    .local v1, "seinfoValue":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@21
    .line 438
    return-object v1

    #@22
    .line 442
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    #@24
    return-object v2
.end method

.method public getSignatures()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public hasGlobalSeinfo()Z
    .locals 1

    #@0
    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public hasInnerPackages()Z
    .locals 1

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 386
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 387
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    #@7
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "cert$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/content/pm/Signature;

    #@17
    .line 388
    .local v0, "cert":Landroid/content/pm/Signature;
    const-string/jumbo v5, "cert="

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    const/4 v7, 0x0

    #@23
    const/16 v8, 0xb

    #@25
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    const-string/jumbo v6, "... "

    #@30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    goto :goto_0

    #@34
    .line 391
    .end local v0    # "cert":Landroid/content/pm/Signature;
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    #@36
    if-eqz v5, :cond_1

    #@38
    .line 392
    const-string/jumbo v5, "seinfo="

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    iget-object v6, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    #@41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    .line 395
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    #@46
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@49
    move-result-object v5

    #@4a
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4d
    move-result-object v3

    #@4e
    .local v3, "name$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@51
    move-result v5

    #@52
    if-eqz v5, :cond_2

    #@54
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v2

    #@58
    check-cast v2, Ljava/lang/String;

    #@5a
    .line 396
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v5, " "

    #@5d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    const-string/jumbo v6, "="

    #@68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v6

    #@6c
    iget-object v5, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    #@6e
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    move-result-object v5

    #@72
    check-cast v5, Ljava/lang/String;

    #@74
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    goto :goto_1

    #@78
    .line 399
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v5

    #@7c
    return-object v5
.end method
