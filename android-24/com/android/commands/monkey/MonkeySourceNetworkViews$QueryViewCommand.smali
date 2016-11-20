.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews$QueryViewCommand;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkViews.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetworkViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryViewCommand"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .locals 10
    .param p2, "queue"    # Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;",
            ")",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x2

    #@2
    .line 199
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@5
    move-result v7

    #@6
    if-le v7, v8, :cond_4

    #@8
    .line 200
    const/4 v7, 0x1

    #@9
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v4

    #@d
    check-cast v4, Ljava/lang/String;

    #@f
    .line 204
    .local v4, "idType":Ljava/lang/String;
    const-string/jumbo v7, "viewid"

    #@12
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v7

    #@16
    if-eqz v7, :cond_0

    #@18
    .line 206
    const/4 v7, 0x2

    #@19
    :try_start_0
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v7

    #@1d
    check-cast v7, Ljava/lang/String;

    #@1f
    invoke-static {v7}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->-wrap1(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@22
    move-result-object v5

    #@23
    .line 207
    .local v5, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v7, 0x3

    #@24
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v6

    #@28
    check-cast v6, Ljava/lang/String;

    #@2a
    .line 208
    .local v6, "viewQuery":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@2d
    move-result v7

    #@2e
    const/4 v8, 0x4

    #@2f
    invoke-interface {p1, v8, v7}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/commands/monkey/MonkeyViewException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    move-result-object v0

    #@33
    .line 223
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-nez v5, :cond_2

    #@35
    .line 224
    new-instance v7, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@37
    const-string/jumbo v8, "Node with given ID does not exist"

    #@3a
    invoke-direct {v7, v9, v8}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    #@3d
    return-object v7

    #@3e
    .line 209
    .end local v0    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "viewQuery":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@3f
    .line 210
    .local v1, "e":Lcom/android/commands/monkey/MonkeyViewException;
    new-instance v7, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@41
    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyViewException;->getMessage()Ljava/lang/String;

    #@44
    move-result-object v8

    #@45
    invoke-direct {v7, v9, v8}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    #@48
    return-object v7

    #@49
    .line 212
    .end local v1    # "e":Lcom/android/commands/monkey/MonkeyViewException;
    :cond_0
    const-string/jumbo v7, "accessibilityids"

    #@4c
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v7

    #@50
    if-eqz v7, :cond_1

    #@52
    .line 214
    const/4 v7, 0x2

    #@53
    :try_start_1
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@56
    move-result-object v7

    #@57
    check-cast v7, Ljava/lang/String;

    #@59
    const/4 v8, 0x3

    #@5a
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5d
    move-result-object v8

    #@5e
    check-cast v8, Ljava/lang/String;

    #@60
    invoke-static {v7, v8}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->-wrap0(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@63
    move-result-object v5

    #@64
    .line 215
    .restart local v5    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v7, 0x4

    #@65
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@68
    move-result-object v6

    #@69
    check-cast v6, Ljava/lang/String;

    #@6b
    .line 216
    .restart local v6    # "viewQuery":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@6e
    move-result v7

    #@6f
    const/4 v8, 0x5

    #@70
    invoke-interface {p1, v8, v7}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@73
    move-result-object v0

    #@74
    .restart local v0    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    #@75
    .line 217
    .end local v0    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "viewQuery":Ljava/lang/String;
    :catch_1
    move-exception v2

    #@76
    .line 218
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@78
    return-object v7

    #@79
    .line 221
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@7b
    return-object v7

    #@7c
    .line 226
    .restart local v0    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v6    # "viewQuery":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->-get0()Ljava/util/Map;

    #@7f
    move-result-object v7

    #@80
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@83
    move-result-object v3

    #@84
    check-cast v3, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;

    #@86
    .line 227
    .local v3, "getter":Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;
    if-eqz v3, :cond_3

    #@88
    .line 228
    invoke-interface {v3, v5, v0}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;->query(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@8b
    move-result-object v7

    #@8c
    return-object v7

    #@8d
    .line 230
    :cond_3
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@8f
    return-object v7

    #@90
    .line 233
    .end local v0    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "getter":Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;
    .end local v4    # "idType":Ljava/lang/String;
    .end local v5    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "viewQuery":Ljava/lang/String;
    :cond_4
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@92
    return-object v7
.end method
