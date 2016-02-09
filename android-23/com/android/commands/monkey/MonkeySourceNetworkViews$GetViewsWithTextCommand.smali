.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetViewsWithTextCommand;
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
    name = "GetViewsWithTextCommand"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .locals 13
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
    .line 259
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v1

    #@4
    const/4 v3, 0x2

    #@5
    if-ne v1, v3, :cond_2

    #@7
    .line 260
    const/4 v1, 0x1

    #@8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v6

    #@c
    check-cast v6, Ljava/lang/String;

    #@e
    .line 261
    .local v6, "text":Ljava/lang/String;
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sUiTestAutomationBridge:Landroid/app/UiAutomation;

    #@10
    invoke-virtual {v1}, Landroid/app/UiAutomation;->getConnectionId()I

    #@13
    move-result v2

    #@14
    .line 262
    .local v2, "connectionId":I
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@17
    move-result-object v1

    #@18
    .line 265
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@1a
    .line 264
    const v3, 0x7fffffff

    #@1d
    .line 262
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByText(IIJLjava/lang/String;)Ljava/util/List;

    #@20
    move-result-object v11

    #@21
    .line 266
    .local v11, "nodes":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v7, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;

    #@23
    invoke-direct {v7}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;-><init>()V

    #@26
    .line 267
    .local v7, "idGetter":Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;
    new-instance v0, Ljava/util/ArrayList;

    #@28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2b
    .line 268
    .local v0, "emptyArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    .line 269
    .local v8, "ids":Ljava/lang/StringBuilder;
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v10

    #@34
    .local v10, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_1

    #@3a
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v9

    #@3e
    check-cast v9, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@40
    .line 270
    .local v9, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-interface {v7, v9, v0}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;->query(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@43
    move-result-object v12

    #@44
    .line 271
    .local v12, "result":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    invoke-virtual {v12}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->wasSuccessful()Z

    #@47
    move-result v1

    #@48
    if-nez v1, :cond_0

    #@4a
    .line 272
    return-object v12

    #@4b
    .line 274
    :cond_0
    invoke-virtual {v12}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->getMessage()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    const-string/jumbo v3, " "

    #@56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    goto :goto_0

    #@5a
    .line 276
    .end local v9    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v12    # "result":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    :cond_1
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@5c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    const/4 v4, 0x1

    #@61
    invoke-direct {v1, v4, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    #@64
    return-object v1

    #@65
    .line 278
    .end local v0    # "emptyArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "connectionId":I
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "idGetter":Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;
    .end local v8    # "ids":Ljava/lang/StringBuilder;
    .end local v10    # "node$iterator":Ljava/util/Iterator;
    .end local v11    # "nodes":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_2
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@67
    return-object v1
.end method
