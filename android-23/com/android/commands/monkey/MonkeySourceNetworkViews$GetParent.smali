.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetParent;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkViews.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetworkViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetParent"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public query(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .locals 4
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@1
    .line 491
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_1

    #@7
    .line 492
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@a
    move-result-object v0

    #@b
    .line 493
    .local v0, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@d
    .line 494
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@f
    const-string/jumbo v2, "Given node has no parent"

    #@12
    invoke-direct {v1, v3, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    #@15
    return-object v1

    #@16
    .line 496
    :cond_0
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;

    #@18
    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;-><init>()V

    #@1b
    new-instance v2, Ljava/util/ArrayList;

    #@1d
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@20
    invoke-virtual {v1, v0, v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;->query(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@23
    move-result-object v1

    #@24
    return-object v1

    #@25
    .line 498
    .end local v0    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@27
    return-object v1
.end method
