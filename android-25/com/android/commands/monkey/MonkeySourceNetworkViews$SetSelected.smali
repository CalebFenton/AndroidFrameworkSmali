.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetSelected;
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
    name = "SetSelected"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 392
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
    .line 397
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@4
    move-result v1

    #@5
    const/4 v2, 0x1

    #@6
    if-ne v1, v2, :cond_2

    #@8
    .line 399
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/lang/String;

    #@e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 400
    const/4 v1, 0x4

    #@19
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    #@1c
    move-result v0

    #@1d
    .line 407
    .local v0, "actionPerformed":Z
    :goto_0
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@1f
    invoke-direct {v1, v0}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(Z)V

    #@22
    return-object v1

    #@23
    .line 401
    .end local v0    # "actionPerformed":Z
    :cond_0
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Ljava/lang/String;

    #@29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_1

    #@33
    .line 403
    const/16 v1, 0x8

    #@35
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    #@38
    move-result v0

    #@39
    .restart local v0    # "actionPerformed":Z
    goto :goto_0

    #@3a
    .line 405
    .end local v0    # "actionPerformed":Z
    :cond_1
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@3c
    return-object v1

    #@3d
    .line 409
    :cond_2
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@3f
    return-object v1
.end method
