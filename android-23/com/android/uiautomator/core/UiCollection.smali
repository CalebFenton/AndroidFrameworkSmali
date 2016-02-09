.class public Lcom/android/uiautomator/core/UiCollection;
.super Lcom/android/uiautomator/core/UiObject;
.source "UiCollection.java"


# direct methods
.method public constructor <init>(Lcom/android/uiautomator/core/UiSelector;)V
    .locals 0
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    #@0
    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    #@3
    .line 31
    return-void
.end method


# virtual methods
.method public getChildByDescription(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    .locals 8
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    const/4 v5, 0x2

    #@1
    new-array v5, v5, [Ljava/lang/Object;

    #@3
    const/4 v6, 0x0

    #@4
    aput-object p1, v5, v6

    #@6
    const/4 v6, 0x1

    #@7
    aput-object p2, v5, v6

    #@9
    invoke-static {v5}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@c
    .line 53
    if-eqz p2, :cond_2

    #@e
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/core/UiCollection;->getChildCount(Lcom/android/uiautomator/core/UiSelector;)I

    #@11
    move-result v0

    #@12
    .line 55
    .local v0, "count":I
    const/4 v4, 0x0

    #@13
    .local v4, "x":I
    :goto_0
    if-ge v4, v0, :cond_2

    #@15
    .line 56
    invoke-virtual {p0, p1, v4}, Lcom/android/uiautomator/core/UiCollection;->getChildByInstance(Lcom/android/uiautomator/core/UiSelector;I)Lcom/android/uiautomator/core/UiObject;

    #@18
    move-result-object v3

    #@19
    .line 57
    .local v3, "row":Lcom/android/uiautomator/core/UiObject;
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiObject;->getContentDescription()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 58
    .local v2, "nodeDesc":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@1f
    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_0

    #@25
    .line 59
    return-object v3

    #@26
    .line 61
    :cond_0
    new-instance v5, Lcom/android/uiautomator/core/UiSelector;

    #@28
    invoke-direct {v5}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    #@2b
    invoke-virtual {v5, p2}, Lcom/android/uiautomator/core/UiSelector;->descriptionContains(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v3, v5}, Lcom/android/uiautomator/core/UiObject;->getChild(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiObject;

    #@32
    move-result-object v1

    #@33
    .line 62
    .local v1, "item":Lcom/android/uiautomator/core/UiObject;
    invoke-virtual {v1}, Lcom/android/uiautomator/core/UiObject;->exists()Z

    #@36
    move-result v5

    #@37
    if-eqz v5, :cond_1

    #@39
    .line 63
    return-object v3

    #@3a
    .line 55
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 67
    .end local v0    # "count":I
    .end local v1    # "item":Lcom/android/uiautomator/core/UiObject;
    .end local v2    # "nodeDesc":Ljava/lang/String;
    .end local v3    # "row":Lcom/android/uiautomator/core/UiObject;
    .end local v4    # "x":I
    :cond_2
    new-instance v5, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@3f
    new-instance v6, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v7, "for description= \""

    #@47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v6

    #@4b
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v6

    #@4f
    const-string/jumbo v7, "\""

    #@52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    invoke-direct {v5, v6}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v5
.end method

.method public getChildByInstance(Lcom/android/uiautomator/core/UiSelector;I)Lcom/android/uiautomator/core/UiObject;
    .locals 4
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "instance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    const/4 v1, 0x2

    #@1
    new-array v1, v1, [Ljava/lang/Object;

    #@3
    const/4 v2, 0x0

    #@4
    aput-object p1, v1, v2

    #@6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x1

    #@b
    aput-object v2, v1, v3

    #@d
    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@10
    .line 87
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiCollection;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@13
    move-result-object v1

    #@14
    .line 88
    invoke-static {p1}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p2}, Lcom/android/uiautomator/core/UiSelector;->instance(I)Lcom/android/uiautomator/core/UiSelector;

    #@1b
    move-result-object v2

    #@1c
    .line 87
    invoke-static {v1, v2}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    #@1f
    move-result-object v0

    #@20
    .line 89
    .local v0, "patternSelector":Lcom/android/uiautomator/core/UiSelector;
    new-instance v1, Lcom/android/uiautomator/core/UiObject;

    #@22
    invoke-direct {v1, v0}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    #@25
    return-object v1
.end method

.method public getChildByText(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    .locals 8
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    const/4 v5, 0x2

    #@1
    new-array v5, v5, [Ljava/lang/Object;

    #@3
    const/4 v6, 0x0

    #@4
    aput-object p1, v5, v6

    #@6
    const/4 v6, 0x1

    #@7
    aput-object p2, v5, v6

    #@9
    invoke-static {v5}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@c
    .line 111
    if-eqz p2, :cond_2

    #@e
    .line 112
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/core/UiCollection;->getChildCount(Lcom/android/uiautomator/core/UiSelector;)I

    #@11
    move-result v0

    #@12
    .line 113
    .local v0, "count":I
    const/4 v4, 0x0

    #@13
    .local v4, "x":I
    :goto_0
    if-ge v4, v0, :cond_2

    #@15
    .line 114
    invoke-virtual {p0, p1, v4}, Lcom/android/uiautomator/core/UiCollection;->getChildByInstance(Lcom/android/uiautomator/core/UiSelector;I)Lcom/android/uiautomator/core/UiObject;

    #@18
    move-result-object v3

    #@19
    .line 115
    .local v3, "row":Lcom/android/uiautomator/core/UiObject;
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiObject;->getText()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 116
    .local v2, "nodeText":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_0

    #@23
    .line 117
    return-object v3

    #@24
    .line 119
    :cond_0
    new-instance v5, Lcom/android/uiautomator/core/UiSelector;

    #@26
    invoke-direct {v5}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    #@29
    invoke-virtual {v5, p2}, Lcom/android/uiautomator/core/UiSelector;->text(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v3, v5}, Lcom/android/uiautomator/core/UiObject;->getChild(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiObject;

    #@30
    move-result-object v1

    #@31
    .line 120
    .local v1, "item":Lcom/android/uiautomator/core/UiObject;
    invoke-virtual {v1}, Lcom/android/uiautomator/core/UiObject;->exists()Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_1

    #@37
    .line 121
    return-object v3

    #@38
    .line 113
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 125
    .end local v0    # "count":I
    .end local v1    # "item":Lcom/android/uiautomator/core/UiObject;
    .end local v2    # "nodeText":Ljava/lang/String;
    .end local v3    # "row":Lcom/android/uiautomator/core/UiObject;
    .end local v4    # "x":I
    :cond_2
    new-instance v5, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    #@3d
    new-instance v6, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v7, "for text= \""

    #@45
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    const-string/jumbo v7, "\""

    #@50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    invoke-direct {v5, v6}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v5
.end method

.method public getChildCount(Lcom/android/uiautomator/core/UiSelector;)I
    .locals 3
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;

    #@0
    .prologue
    .line 140
    const/4 v1, 0x1

    #@1
    new-array v1, v1, [Ljava/lang/Object;

    #@3
    const/4 v2, 0x0

    #@4
    aput-object p1, v1, v2

    #@6
    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    #@9
    .line 142
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiCollection;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    #@c
    move-result-object v1

    #@d
    invoke-static {p1}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    #@10
    move-result-object v2

    #@11
    invoke-static {v1, v2}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    #@14
    move-result-object v0

    #@15
    .line 143
    .local v0, "patternSelector":Lcom/android/uiautomator/core/UiSelector;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiCollection;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, v0}, Lcom/android/uiautomator/core/QueryController;->getPatternCount(Lcom/android/uiautomator/core/UiSelector;)I

    #@1c
    move-result v1

    #@1d
    return v1
.end method
