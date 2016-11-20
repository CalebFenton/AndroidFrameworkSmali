.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;
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
    name = "GetAccessibilityIds"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public query(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .locals 10
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
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 462
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@5
    move-result v6

    #@6
    if-nez v6, :cond_0

    #@8
    .line 465
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v4

    #@c
    .line 466
    .local v4, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "mAccessibilityViewId"

    #@f
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@12
    move-result-object v2

    #@13
    .line 467
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    #@14
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@17
    .line 468
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    check-cast v6, Ljava/lang/Integer;

    #@1d
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result v5

    #@21
    .line 474
    .local v5, "viewId":I
    new-instance v6, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    #@29
    move-result v7

    #@2a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v6

    #@2e
    const-string/jumbo v7, " "

    #@31
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v6

    #@35
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    .line 475
    .local v3, "ids":Ljava/lang/String;
    new-instance v6, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@3f
    invoke-direct {v6, v9, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    #@42
    return-object v6

    #@43
    .line 471
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "ids":Ljava/lang/String;
    .end local v4    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "viewId":I
    :catch_0
    move-exception v0

    #@44
    .line 472
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@46
    const-string/jumbo v7, "Access exception"

    #@49
    invoke-direct {v6, v8, v7}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    #@4c
    return-object v6

    #@4d
    .line 469
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    #@4e
    .line 470
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v6, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@50
    const-string/jumbo v7, "Node with given ID does not exist"

    #@53
    invoke-direct {v6, v8, v7}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    #@56
    return-object v6

    #@57
    .line 477
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :cond_0
    sget-object v6, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@59
    return-object v6
.end method
