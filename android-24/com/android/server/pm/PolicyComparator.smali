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
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 683
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    #@6
    .line 681
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/pm/Policy;Lcom/android/server/pm/Policy;)I
    .locals 6
    .param p1, "p1"    # Lcom/android/server/pm/Policy;
    .param p2, "p2"    # Lcom/android/server/pm/Policy;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 693
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->hasInnerPackages()Z

    #@4
    move-result v3

    #@5
    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->hasInnerPackages()Z

    #@8
    move-result v4

    #@9
    if-eq v3, v4, :cond_1

    #@b
    .line 694
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->hasInnerPackages()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    const/4 v2, -0x1

    #@12
    :cond_0
    return v2

    #@13
    .line 698
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->getSignatures()Ljava/util/Set;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->getSignatures()Ljava/util/Set;

    #@1a
    move-result-object v4

    #@1b
    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_3

    #@21
    .line 700
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->hasGlobalSeinfo()Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_2

    #@27
    .line 701
    iput-boolean v2, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    #@29
    .line 702
    const-string/jumbo v3, "SELinuxMMAC"

    #@2c
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v5, "Duplicate policy entry: "

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->toString()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 706
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->getInnerPackages()Ljava/util/Map;

    #@4a
    move-result-object v0

    #@4b
    .line 707
    .local v0, "p1Packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->getInnerPackages()Ljava/util/Map;

    #@4e
    move-result-object v1

    #@4f
    .line 708
    .local v1, "p2Packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@52
    move-result-object v3

    #@53
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@56
    move-result-object v4

    #@57
    invoke-static {v3, v4}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@5a
    move-result v3

    #@5b
    if-nez v3, :cond_3

    #@5d
    .line 709
    iput-boolean v2, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    #@5f
    .line 710
    const-string/jumbo v2, "SELinuxMMAC"

    #@62
    new-instance v3, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v4, "Duplicate policy entry: "

    #@6a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v3

    #@6e
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->toString()Ljava/lang/String;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v3

    #@76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v3

    #@7a
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 714
    .end local v0    # "p1Packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "p2Packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const/4 v2, 0x0

    #@7e
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 690
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
    .line 686
    iget-boolean v0, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    #@2
    return v0
.end method
