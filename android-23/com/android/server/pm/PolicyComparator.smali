.class final Lcom/android/server/pm/PolicyComparator;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/pm/Policy;",
        ">;"
    }
.end annotation


# instance fields
.field private duplicateFound:Z


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 869
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    #@6
    .line 867
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/pm/Policy;Lcom/android/server/pm/Policy;)I
    .locals 6
    .param p1, "p1"    # Lcom/android/server/pm/Policy;
    .param p2, "p2"    # Lcom/android/server/pm/Policy;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x1

    #@2
    .line 879
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->isDefaultStanza()Z

    #@5
    move-result v4

    #@6
    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->isDefaultStanza()Z

    #@9
    move-result v5

    #@a
    if-eq v4, v5, :cond_1

    #@c
    .line 880
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->isDefaultStanza()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    :goto_0
    return v2

    #@13
    :cond_0
    move v2, v3

    #@14
    goto :goto_0

    #@15
    .line 884
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->hasInnerPackages()Z

    #@18
    move-result v4

    #@19
    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->hasInnerPackages()Z

    #@1c
    move-result v5

    #@1d
    if-eq v4, v5, :cond_3

    #@1f
    .line 885
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->hasInnerPackages()Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_2

    #@25
    :goto_1
    return v3

    #@26
    :cond_2
    move v3, v2

    #@27
    goto :goto_1

    #@28
    .line 889
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->getSignatures()Ljava/util/Set;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->getSignatures()Ljava/util/Set;

    #@2f
    move-result-object v4

    #@30
    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_5

    #@36
    .line 891
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->hasGlobalSeinfo()Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_4

    #@3c
    .line 892
    iput-boolean v2, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    #@3e
    .line 893
    const-string/jumbo v3, "SELinuxMMAC"

    #@41
    new-instance v4, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v5, "Duplicate policy entry: "

    #@49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->toString()Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 897
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->getInnerPackages()Ljava/util/Map;

    #@5f
    move-result-object v0

    #@60
    .line 898
    .local v0, "p1Packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->getInnerPackages()Ljava/util/Map;

    #@63
    move-result-object v1

    #@64
    .line 899
    .local v1, "p2Packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@67
    move-result-object v3

    #@68
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@6b
    move-result-object v4

    #@6c
    invoke-static {v3, v4}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@6f
    move-result v3

    #@70
    if-nez v3, :cond_5

    #@72
    .line 900
    iput-boolean v2, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    #@74
    .line 901
    const-string/jumbo v2, "SELinuxMMAC"

    #@77
    new-instance v3, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v4, "Duplicate policy entry: "

    #@7f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v3

    #@83
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->toString()Ljava/lang/String;

    #@86
    move-result-object v4

    #@87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v3

    #@8b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v3

    #@8f
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    .line 905
    .end local v0    # "p1Packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "p2Packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const/4 v2, 0x0

    #@93
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 876
    check-cast p1, Lcom/android/server/pm/Policy;

    #@2
    .end local p1    # "p1":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/pm/Policy;

    #@4
    .end local p2    # "p2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PolicyComparator;->compare(Lcom/android/server/pm/Policy;Lcom/android/server/pm/Policy;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public foundDuplicate()Z
    .locals 1

    #@0
    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    #@2
    return v0
.end method
