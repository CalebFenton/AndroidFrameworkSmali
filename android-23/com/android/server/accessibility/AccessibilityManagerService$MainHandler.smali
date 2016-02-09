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
    .line 1756
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    .line 1757
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1756
    return-void
.end method

.method private announceNewUserIfNeeded()V
    .locals 9

    #@0
    .prologue
    .line 1823
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v5

    #@6
    monitor-enter v5

    #@7
    .line 1824
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@9
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap12(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@c
    move-result-object v3

    #@d
    .line 1825
    .local v3, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 1826
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@13
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    #@16
    move-result-object v4

    #@17
    .line 1827
    const-string/jumbo v6, "user"

    #@1a
    .line 1826
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroid/os/UserManager;

    #@20
    .line 1828
    .local v2, "userManager":Landroid/os/UserManager;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@22
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    #@25
    move-result-object v4

    #@26
    const/4 v6, 0x1

    #@27
    new-array v6, v6, [Ljava/lang/Object;

    #@29
    .line 1829
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2b
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    #@2e
    move-result v7

    #@2f
    invoke-virtual {v2, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@32
    move-result-object v7

    #@33
    iget-object v7, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@35
    const/4 v8, 0x0

    #@36
    aput-object v7, v6, v8

    #@38
    .line 1828
    const v7, 0x10404e9

    #@3b
    invoke-virtual {v4, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    .line 1831
    .local v1, "message":Ljava/lang/String;
    const/16 v4, 0x4000

    #@41
    .line 1830
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    #@44
    move-result-object v0

    #@45
    .line 1832
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@48
    move-result-object v4

    #@49
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4c
    .line 1833
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@4e
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@50
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    #@53
    move-result v6

    #@54
    invoke-virtual {v4, v0, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@57
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "userManager":Landroid/os/UserManager;
    :cond_0
    monitor-exit v5

    #@58
    .line 1822
    return-void

    #@59
    .line 1823
    .end local v3    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v4

    #@5a
    monitor-exit v5

    #@5b
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
    .line 1849
    .local p2, "clients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/accessibility/IAccessibilityManagerClient;>;"
    :try_start_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@3
    move-result v3

    #@4
    .line 1850
    .local v3, "userClientCount":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@7
    .line 1851
    invoke-virtual {p2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/view/accessibility/IAccessibilityManagerClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 1853
    .local v0, "client":Landroid/view/accessibility/IAccessibilityManagerClient;
    :try_start_1
    invoke-interface {v0, p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->setState(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    .line 1850
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1854
    :catch_0
    move-exception v2

    #@14
    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_1

    #@15
    .line 1859
    .end local v0    # "client":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@18
    .line 1847
    return-void

    #@19
    .line 1858
    .end local v1    # "i":I
    .end local v3    # "userClientCount":I
    :catchall_0
    move-exception v4

    #@1a
    .line 1859
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1d
    .line 1858
    throw v4
.end method

.method private sendStateToClientsForUser(II)V
    .locals 3
    .param p1, "clientState"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1840
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 1841
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@9
    invoke-static {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    monitor-exit v2

    #@e
    .line 1843
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    #@10
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    #@13
    .line 1838
    return-void

    #@14
    .line 1840
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
    .line 1762
    iget v6, p1, Landroid/os/Message;->what:I

    #@2
    .line 1763
    .local v6, "type":I
    packed-switch v6, :pswitch_data_0

    #@5
    .line 1761
    :goto_0
    :pswitch_0
    return-void

    #@6
    .line 1765
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v3, Landroid/view/accessibility/AccessibilityEvent;

    #@a
    .line 1766
    .local v3, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@c
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@f
    move-result-object v11

    #@10
    monitor-enter v11

    #@11
    .line 1767
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
    .line 1768
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
    .line 1771
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    #@2e
    goto :goto_0

    #@2f
    .line 1766
    :catchall_0
    move-exception v10

    #@30
    monitor-exit v11

    #@31
    throw v10

    #@32
    .line 1775
    .end local v3    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@34
    check-cast v2, Landroid/view/KeyEvent;

    #@36
    .line 1776
    .local v2, "event":Landroid/view/KeyEvent;
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@38
    .line 1777
    .local v4, "policyFlags":I
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3a
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@3d
    move-result-object v11

    #@3e
    monitor-enter v11

    #@3f
    .line 1778
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
    .line 1779
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
    .line 1782
    invoke-virtual {v2}, Landroid/view/KeyEvent;->recycle()V

    #@5c
    goto :goto_0

    #@5d
    .line 1777
    :catchall_1
    move-exception v10

    #@5e
    monitor-exit v11

    #@5f
    throw v10

    #@60
    .line 1786
    .end local v2    # "event":Landroid/view/KeyEvent;
    .end local v4    # "policyFlags":I
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@62
    .line 1787
    .local v1, "clientState":I
    iget v7, p1, Landroid/os/Message;->arg2:I

    #@64
    .line 1788
    .local v7, "userId":I
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@66
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get3(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/RemoteCallbackList;

    #@69
    move-result-object v10

    #@6a
    invoke-direct {p0, v1, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    #@6d
    .line 1789
    invoke-direct {p0, v1, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClientsForUser(II)V

    #@70
    goto :goto_0

    #@71
    .line 1793
    .end local v1    # "clientState":I
    .end local v7    # "userId":I
    :pswitch_4
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@73
    .line 1794
    .restart local v7    # "userId":I
    const/4 v10, 0x0

    #@74
    invoke-direct {p0, v10, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClientsForUser(II)V

    #@77
    goto :goto_0

    #@78
    .line 1798
    .end local v7    # "userId":I
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->announceNewUserIfNeeded()V

    #@7b
    goto :goto_0

    #@7c
    .line 1802
    :pswitch_6
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7e
    check-cast v8, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@80
    .line 1803
    .local v8, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@82
    invoke-static {v10, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap27(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@85
    goto :goto_0

    #@86
    .line 1807
    .end local v8    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@88
    check-cast v5, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@8a
    .line 1808
    .local v5, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@8c
    invoke-static {v10, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap23(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    #@8f
    goto/16 :goto_0

    #@91
    .line 1812
    .end local v5    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :pswitch_8
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@93
    .line 1814
    .local v9, "windowId":I
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@95
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@98
    move-result-object v11

    #@99
    monitor-enter v11

    #@9a
    .line 1815
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
    .line 1817
    invoke-virtual {v0, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->clearAccessibilityFocusNotLocked(I)V

    #@a4
    goto/16 :goto_0

    #@a6
    .line 1814
    .end local v0    # "bridge":Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    :catchall_2
    move-exception v10

    #@a7
    monitor-exit v11

    #@a8
    throw v10

    #@a9
    .line 1763
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
