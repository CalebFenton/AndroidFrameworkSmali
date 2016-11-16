.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChildren;
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
    name = "GetChildren"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public query(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .locals 9
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
    .line 512
    .local p2, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@3
    move-result v6

    #@4
    if-nez v6, :cond_2

    #@6
    .line 513
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;

    #@8
    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;-><init>()V

    #@b
    .line 514
    .local v2, "idGetter":Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 515
    .local v0, "emptyArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 516
    .local v3, "ids":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    #@18
    move-result v5

    #@19
    .line 517
    .local v5, "totalChildren":I
    const/4 v1, 0x0

    #@1a
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    #@1c
    .line 518
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@1f
    move-result-object v6

    #@20
    invoke-interface {v2, v6, v0}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;->query(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@23
    move-result-object v4

    #@24
    .line 519
    .local v4, "result":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    invoke-virtual {v4}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->wasSuccessful()Z

    #@27
    move-result v6

    #@28
    if-nez v6, :cond_0

    #@2a
    .line 520
    return-object v4

    #@2b
    .line 522
    :cond_0
    invoke-virtual {v4}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->getMessage()Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    const-string/jumbo v7, " "

    #@36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 517
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 525
    .end local v4    # "result":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    :cond_1
    new-instance v6, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v7

    #@42
    const/4 v8, 0x1

    #@43
    invoke-direct {v6, v8, v7}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    #@46
    return-object v6

    #@47
    .line 527
    .end local v0    # "emptyArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "idGetter":Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;
    .end local v3    # "ids":Ljava/lang/StringBuilder;
    .end local v5    # "totalChildren":I
    :cond_2
    sget-object v6, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@49
    return-object v6
.end method
