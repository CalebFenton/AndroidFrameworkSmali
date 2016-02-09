.class Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/IntentFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirewallIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;",
        "Lcom/android/server/firewall/IntentFirewall$Rule;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRulesByComponent:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "[",
            "Lcom/android/server/firewall/IntentFirewall$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 494
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    #@3
    .line 536
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    #@9
    .line 535
    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponent:Landroid/util/ArrayMap;

    #@b
    .line 494
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public addComponentFilter(Landroid/content/ComponentName;Lcom/android/server/firewall/IntentFirewall$Rule;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "rule"    # Lcom/android/server/firewall/IntentFirewall$Rule;

    #@0
    .prologue
    .line 530
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponent:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/android/server/firewall/IntentFirewall$Rule;

    #@8
    .line 531
    .local v0, "rules":[Lcom/android/server/firewall/IntentFirewall$Rule;
    const-class v1, Lcom/android/server/firewall/IntentFirewall$Rule;

    #@a
    invoke-static {v1, v0, p2}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .end local v0    # "rules":[Lcom/android/server/firewall/IntentFirewall$Rule;
    check-cast v0, [Lcom/android/server/firewall/IntentFirewall$Rule;

    #@10
    .line 532
    .restart local v0    # "rules":[Lcom/android/server/firewall/IntentFirewall$Rule;
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponent:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 529
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "dest"    # Ljava/util/List;

    #@0
    .prologue
    .line 497
    check-cast p1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    #@2
    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->allowFilterResult(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;Ljava/util/List;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected allowFilterResult(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;Ljava/util/List;)Z
    .locals 1
    .param p1, "filter"    # Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/firewall/IntentFirewall$Rule;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 498
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    invoke-static {p1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->-get0(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Lcom/android/server/firewall/IntentFirewall$Rule;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    #@0
    .prologue
    .line 502
    check-cast p2, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    #@2
    .end local p2    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    #@0
    .prologue
    .line 503
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 507
    invoke-virtual {p0, p1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->newArray(I)[Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected newArray(I)[Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 508
    new-array v0, p1, [Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    #@2
    return-object v0
.end method

.method protected newResult(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;II)Lcom/android/server/firewall/IntentFirewall$Rule;
    .locals 1
    .param p1, "filter"    # Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 513
    invoke-static {p1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->-get0(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Lcom/android/server/firewall/IntentFirewall$Rule;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 512
    check-cast p1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    #@2
    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->newResult(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;II)Lcom/android/server/firewall/IntentFirewall$Rule;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public queryByComponent(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/firewall/IntentFirewall$Rule;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 523
    .local p2, "candidateRules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponent:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/android/server/firewall/IntentFirewall$Rule;

    #@8
    .line 524
    .local v0, "rules":[Lcom/android/server/firewall/IntentFirewall$Rule;
    if-eqz v0, :cond_0

    #@a
    .line 525
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@d
    move-result-object v1

    #@e
    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@11
    .line 522
    :cond_0
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/firewall/IntentFirewall$Rule;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 519
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    return-void
.end method
