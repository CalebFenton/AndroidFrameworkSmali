.class final Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowsForAccessibilityCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    #@0
    .prologue
    .line 3112
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method private getTypeForWindowManagerWindowType(I)I
    .locals 1
    .param p1, "windowType"    # I

    #@0
    .prologue
    .line 3176
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 3216
    const/4 v0, -0x1

    #@4
    return v0

    #@5
    .line 3188
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 3193
    :sswitch_1
    const/4 v0, 0x2

    #@8
    return v0

    #@9
    .line 3208
    :sswitch_2
    const/4 v0, 0x3

    #@a
    return v0

    #@b
    .line 3212
    :sswitch_3
    const/4 v0, 0x4

    #@c
    return v0

    #@d
    .line 3176
    nop

    #@e
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
        0x3eb -> :sswitch_0
        0x3ed -> :sswitch_0
        0x7d0 -> :sswitch_2
        0x7d1 -> :sswitch_2
        0x7d2 -> :sswitch_0
        0x7d3 -> :sswitch_2
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_2
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_2
        0x7d9 -> :sswitch_2
        0x7da -> :sswitch_2
        0x7db -> :sswitch_1
        0x7dc -> :sswitch_1
        0x7de -> :sswitch_2
        0x7e1 -> :sswitch_2
        0x7e3 -> :sswitch_2
        0x7e4 -> :sswitch_2
        0x7e8 -> :sswitch_2
        0x7f0 -> :sswitch_3
    .end sparse-switch
.end method

.method private populateReportedWindow(Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 10
    .param p1, "window"    # Landroid/view/WindowInfo;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 3143
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3
    iget-object v8, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@5
    invoke-static {v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap14(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    #@8
    move-result v6

    #@9
    .line 3144
    .local v6, "windowId":I
    if-gez v6, :cond_0

    #@b
    .line 3145
    return-object v9

    #@c
    .line 3148
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    #@f
    move-result-object v5

    #@10
    .line 3150
    .local v5, "reportedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->setId(I)V

    #@13
    .line 3151
    iget v7, p1, Landroid/view/WindowInfo;->type:I

    #@15
    invoke-direct {p0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->getTypeForWindowManagerWindowType(I)I

    #@18
    move-result v7

    #@19
    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setType(I)V

    #@1c
    .line 3152
    iget v7, p1, Landroid/view/WindowInfo;->layer:I

    #@1e
    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    #@21
    .line 3153
    iget-boolean v7, p1, Landroid/view/WindowInfo;->focused:Z

    #@23
    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setFocused(Z)V

    #@26
    .line 3154
    iget-object v7, p1, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    #@28
    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    #@2b
    .line 3156
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2d
    iget-object v8, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@2f
    invoke-static {v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap14(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    #@32
    move-result v4

    #@33
    .line 3157
    .local v4, "parentId":I
    if-ltz v4, :cond_1

    #@35
    .line 3158
    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setParentId(I)V

    #@38
    .line 3161
    :cond_1
    iget-object v7, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@3a
    if-eqz v7, :cond_3

    #@3c
    .line 3162
    iget-object v7, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@3e
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@41
    move-result v0

    #@42
    .line 3163
    .local v0, "childCount":I
    const/4 v3, 0x0

    #@43
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    #@45
    .line 3164
    iget-object v7, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@47
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4a
    move-result-object v2

    #@4b
    check-cast v2, Landroid/os/IBinder;

    #@4d
    .line 3165
    .local v2, "childToken":Landroid/os/IBinder;
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@4f
    invoke-static {v7, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap14(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    #@52
    move-result v1

    #@53
    .line 3166
    .local v1, "childId":I
    if-ltz v1, :cond_2

    #@55
    .line 3167
    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->addChild(I)V

    #@58
    .line 3163
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 3172
    .end local v0    # "childCount":I
    .end local v1    # "childId":I
    .end local v2    # "childToken":Landroid/os/IBinder;
    .end local v3    # "i":I
    :cond_3
    return-object v5
.end method


# virtual methods
.method public onWindowsForAccessibilityChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3117
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v6

    #@6
    monitor-enter v6

    #@7
    .line 3119
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    #@9
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 3120
    .local v4, "reportedWindows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@f
    move-result v2

    #@10
    .line 3121
    .local v2, "receivedWindowCount":I
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@13
    .line 3122
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/view/WindowInfo;

    #@19
    .line 3123
    .local v1, "receivedWindow":Landroid/view/WindowInfo;
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->populateReportedWindow(Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    #@1c
    move-result-object v3

    #@1d
    .line 3125
    .local v3, "reportedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v3, :cond_0

    #@1f
    .line 3126
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    .line 3121
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 3135
    .end local v1    # "receivedWindow":Landroid/view/WindowInfo;
    .end local v3    # "reportedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_1
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@27
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateWindowsLocked(Ljava/util/List;)V

    #@2e
    .line 3138
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@30
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    monitor-exit v6

    #@38
    .line 3116
    return-void

    #@39
    .line 3117
    .end local v0    # "i":I
    .end local v2    # "receivedWindowCount":I
    .end local v4    # "reportedWindows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :catchall_0
    move-exception v5

    #@3a
    monitor-exit v6

    #@3b
    throw v5
.end method
