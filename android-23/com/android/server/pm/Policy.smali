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

.field private final mDefaultStanza:Z

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

.method static synthetic -get1(Lcom/android/server/pm/Policy;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/pm/Policy;->mDefaultStanza:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/pm/Policy;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/pm/Policy;)Ljava/lang/String;
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
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 531
    invoke-static {p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->-get3(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    #@9
    .line 532
    invoke-static {p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->-get1(Lcom/android/server/pm/Policy$PolicyBuilder;)Z

    #@c
    move-result v0

    #@d
    iput-boolean v0, p0, Lcom/android/server/pm/Policy;->mDefaultStanza:Z

    #@f
    .line 533
    invoke-static {p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->-get0(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Set;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    #@19
    .line 534
    invoke-static {p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->-get2(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Map;

    #@1c
    move-result-object v0

    #@1d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    #@23
    .line 530
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
    .line 572
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
    .line 639
    iget-boolean v2, p0, Lcom/android/server/pm/Policy;->mDefaultStanza:Z

    #@3
    if-nez v2, :cond_1

    #@5
    .line 641
    iget-object v2, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    #@7
    const/4 v3, 0x0

    #@8
    new-array v3, v3, [Landroid/content/pm/Signature;

    #@a
    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, [Landroid/content/pm/Signature;

    #@10
    .line 642
    .local v0, "certs":[Landroid/content/pm/Signature;
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@12
    invoke-static {v0, v2}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_0

    #@18
    .line 643
    return-object v4

    #@19
    .line 648
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    #@1b
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@1d
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Ljava/lang/String;

    #@23
    .line 649
    .local v1, "seinfoValue":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@25
    .line 650
    return-object v1

    #@26
    .line 655
    .end local v0    # "certs":[Landroid/content/pm/Signature;
    .end local v1    # "seinfoValue":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    #@28
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
    .line 544
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public hasGlobalSeinfo()Z
    .locals 1

    #@0
    .prologue
    .line 581
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
    .line 562
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

.method public isDefaultStanza()Z
    .locals 1

    #@0
    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/android/server/pm/Policy;->mDefaultStanza:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 586
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 587
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-boolean v5, p0, Lcom/android/server/pm/Policy;->mDefaultStanza:Z

    #@7
    if-eqz v5, :cond_0

    #@9
    .line 588
    const-string/jumbo v5, "defaultStanza=true "

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 591
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    #@11
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "cert$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_1

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/content/pm/Signature;

    #@21
    .line 592
    .local v0, "cert":Landroid/content/pm/Signature;
    const-string/jumbo v5, "cert="

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    #@2b
    move-result-object v6

    #@2c
    const/4 v7, 0x0

    #@2d
    const/16 v8, 0xb

    #@2f
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    const-string/jumbo v6, "... "

    #@3a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    goto :goto_0

    #@3e
    .line 595
    .end local v0    # "cert":Landroid/content/pm/Signature;
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    #@40
    if-eqz v5, :cond_2

    #@42
    .line 596
    const-string/jumbo v5, "seinfo="

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    iget-object v6, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    #@4b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 599
    :cond_2
    iget-object v5, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    #@50
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@53
    move-result-object v5

    #@54
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@57
    move-result-object v3

    #@58
    .local v3, "name$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v5

    #@5c
    if-eqz v5, :cond_3

    #@5e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v2

    #@62
    check-cast v2, Ljava/lang/String;

    #@64
    .line 600
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v5, " "

    #@67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v5

    #@6f
    const-string/jumbo v6, "="

    #@72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v6

    #@76
    iget-object v5, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    #@78
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7b
    move-result-object v5

    #@7c
    check-cast v5, Ljava/lang/String;

    #@7e
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    goto :goto_1

    #@82
    .line 603
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v5

    #@86
    return-object v5
.end method
