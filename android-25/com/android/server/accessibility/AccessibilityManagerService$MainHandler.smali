.class final Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainHandler"
.end annotation


# static fields
.field public static final MSG_ANNOUNCE_NEW_USER_IF_NEEDED:I = 0x5

.field public static final MSG_CLEAR_ACCESSIBILITY_FOCUS:I = 0x9

.field public static final MSG_SEND_ACCESSIBILITY_EVENT_TO_INPUT_FILTER:I = 0x1

.field public static final MSG_SEND_CLEARED_STATE_TO_CLIENTS_FOR_USER:I = 0x3

.field public static final MSG_SEND_KEY_EVENT_TO_INPUT_FILTER:I = 0x8

.field public static final MSG_SEND_STATE_TO_CLIENTS:I = 0x2

.field public static final MSG_SHOW_ENABLED_TOUCH_EXPLORATION_DIALOG:I = 0x7

.field public static final MSG_UPDATE_INPUT_FILTER:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 2030
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    .line 2031
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 2030
    return-void
.end method

.method private announceNewUserIfNeeded()V
    .locals 9

    #@0
    .prologue
    .line 2097
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v5

    #@6
    monitor-enter v5

    #@7
    .line 2098
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@9
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@c
    move-result-object v3

    #@d
    .line 2099
    .local v3, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->isHandlingAccessibilityEvents()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 2100
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@15
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    #@18
    move-result-object v4

    #@19
    .line 2101
    const-string/jumbo v6, "user"

    #@1c
    .line 2100
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Landroid/os/UserManager;

    #@22
    .line 2102
    .local v2, "userManager":Landroid/os/UserManager;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@24
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    #@27
    move-result-object v4

    #@28
    const/4 v6, 0x1

    #@29
    new-array v6, v6, [Ljava/lang/Object;

    #@2b
    .line 2103
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2d
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    #@30
    move-result v7

    #@31
    invoke-virtual {v2, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@34
    move-result-object v7

    #@35
    iget-object v7, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@37
    const/4 v8, 0x0

    #@38
    aput-object v7, v6, v8

    #@3a
    .line 2102
    const v7, 0x1040532

    #@3d
    invoke-virtual {v4, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 2105
    .local v1, "message":Ljava/lang/String;
    const/16 v4, 0x4000

    #@43
    .line 2104
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    #@46
    move-result-object v0

    #@47
    .line 2106
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@4a
    move-result-object v4

    #@4b
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4e
    .line 2107
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@50
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@52
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    #@55
    move-result v6

    #@56
    invoke-virtual {v4, v0, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "userManager":Landroid/os/UserManager;
    :cond_0
    monitor-exit v5

    #@5a
    .line 2096
    return-void

    #@5b
    .line 2097
    .end local v3    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v4

    #@5c
    monitor-exit v5

    #@5d
    throw v4
.end method

.method private sendStateToClients(ILandroid/os/RemoteCallbackList;)V
    .locals 5
    .param p1, "clientState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2123
    .local p2, "clients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/accessibility/IAccessibilityManagerClient;>;"
    :try_start_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@3
    move-result v3

    #@4
    .line 2124
    .local v3, "userClientCount":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@7
    .line 2125
    invoke-virtual {p2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/view/accessibility/IAccessibilityManagerClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 2127
    .local v0, "client":Landroid/view/accessibility/IAccessibilityManagerClient;
    :try_start_1
    invoke-interface {v0, p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->setState(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    .line 2124
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 2128
    :catch_0
    move-exception v2

    #@14
    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_1

    #@15
    .line 2133
    .end local v0    # "client":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@18
    .line 2121
    return-void

    #@19
    .line 2132
    .end local v1    # "i":I
    .end local v3    # "userClientCount":I
    :catchall_0
    move-exception v4

    #@1a
    .line 2133
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1d
    .line 2132
    throw v4
.end method

.method private sendStateToClientsForUser(II)V
    .locals 3
    .param p1, "clientState"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2114
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2115
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@9
    invoke-static {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap12(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    monitor-exit v2

    #@e
    .line 2117
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    #@10
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    #@13
    .line 2112
    return-void

    #@14
    .line 2114
    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2036
    iget v6, p1, Landroid/os/Message;->what:I

    #@2
    .line 2037
    .local v6, "type":I
    packed-switch v6, :pswitch_data_0

    #@5
    .line 2035
    :goto_0
    :pswitch_0
    return-void

    #@6
    .line 2039
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v3, Landroid/view/accessibility/AccessibilityEvent;

    #@a
    .line 2040
    .local v3, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@c
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@f
    move-result-object v11

    #@10
    monitor-enter v11

    #@11
    .line 2041
    :try_start_0
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@13
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get5(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    #@16
    move-result v10

    #@17
    if-eqz v10, :cond_0

    #@19
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@1b
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get6(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    #@1e
    move-result-object v10

    #@1f
    if-eqz v10, :cond_0

    #@21
    .line 2042
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@23
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get6(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    #@26
    move-result-object v10

    #@27
    invoke-virtual {v10, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    :cond_0
    monitor-exit v11

    #@2b
    .line 2045
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    #@2e
    goto :goto_0

    #@2f
    .line 2040
    :catchall_0
    move-exception v10

    #@30
    monitor-exit v11

    #@31
    throw v10

    #@32
    .line 2049
    .end local v3    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@34
    check-cast v2, Landroid/view/KeyEvent;

    #@36
    .line 2050
    .local v2, "event":Landroid/view/KeyEvent;
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@38
    .line 2051
    .local v4, "policyFlags":I
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3a
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@3d
    move-result-object v11

    #@3e
    monitor-enter v11

    #@3f
    .line 2052
    :try_start_1
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@41
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get5(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    #@44
    move-result v10

    #@45
    if-eqz v10, :cond_1

    #@47
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@49
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get6(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    #@4c
    move-result-object v10

    #@4d
    if-eqz v10, :cond_1

    #@4f
    .line 2053
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@51
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get6(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    #@54
    move-result-object v10

    #@55
    invoke-virtual {v10, v2, v4}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@58
    :cond_1
    monitor-exit v11

    #@59
    .line 2056
    invoke-virtual {v2}, Landroid/view/KeyEvent;->recycle()V

    #@5c
    goto :goto_0

    #@5d
    .line 2051
    :catchall_1
    move-exception v10

    #@5e
    monitor-exit v11

    #@5f
    throw v10

    #@60
    .line 2060
    .end local v2    # "event":Landroid/view/KeyEvent;
    .end local v4    # "policyFlags":I
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@62
    .line 2061
    .local v1, "clientState":I
    iget v7, p1, Landroid/os/Message;->arg2:I

    #@64
    .line 2062
    .local v7, "userId":I
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@66
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get3(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/RemoteCallbackList;

    #@69
    move-result-object v10

    #@6a
    invoke-direct {p0, v1, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    #@6d
    .line 2063
    invoke-direct {p0, v1, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClientsForUser(II)V

    #@70
    goto :goto_0

    #@71
    .line 2067
    .end local v1    # "clientState":I
    .end local v7    # "userId":I
    :pswitch_4
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@73
    .line 2068
    .restart local v7    # "userId":I
    const/4 v10, 0x0

    #@74
    invoke-direct {p0, v10, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClientsForUser(II)V

    #@77
    goto :goto_0

    #@78
    .line 2072
    .end local v7    # "userId":I
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->announceNewUserIfNeeded()V

    #@7b
    goto :goto_0

    #@7c
    .line 2076
    :pswitch_6
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7e
    check-cast v8, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@80
    .line 2077
    .local v8, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@82
    invoke-static {v10, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap29(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@85
    goto :goto_0

    #@86
    .line 2081
    .end local v8    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@88
    check-cast v5, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@8a
    .line 2082
    .local v5, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@8c
    invoke-static {v10, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap23(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    #@8f
    goto/16 :goto_0

    #@91
    .line 2086
    .end local v5    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :pswitch_8
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@93
    .line 2088
    .local v9, "windowId":I
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@95
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@98
    move-result-object v11

    #@99
    monitor-enter v11

    #@9a
    .line 2089
    :try_start_2
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@9c
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@9f
    move-result-object v0

    #@a0
    .local v0, "bridge":Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    monitor-exit v11

    #@a1
    .line 2091
    invoke-virtual {v0, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->clearAccessibilityFocusNotLocked(I)V

    #@a4
    goto/16 :goto_0

    #@a6
    .line 2088
    .end local v0    # "bridge":Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    :catchall_2
    move-exception v10

    #@a7
    monitor-exit v11

    #@a8
    throw v10

    #@a9
    .line 2037
    nop

    #@aa
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_8
    .end packed-switch
.end method
