.class public Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;
.super Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;
.source "AccessibilityService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IAccessibilityServiceClientWrapper"
.end annotation


# static fields
.field private static final DO_CLEAR_ACCESSIBILITY_CACHE:I = 0x5

.field private static final DO_INIT:I = 0x1

.field private static final DO_ON_ACCESSIBILITY_EVENT:I = 0x3

.field private static final DO_ON_GESTURE:I = 0x4

.field private static final DO_ON_INTERRUPT:I = 0x2

.field private static final DO_ON_KEY_EVENT:I = 0x6


# instance fields
.field private final mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

.field private final mCaller:Lcom/android/internal/os/HandlerCaller;

.field private mConnectionId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Landroid/accessibilityservice/AccessibilityService$Callbacks;

    #@0
    .prologue
    .line 705
    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;-><init>()V

    #@3
    .line 707
    iput-object p3, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    #@5
    .line 708
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    #@7
    const/4 v1, 0x1

    #@8
    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    #@b
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@d
    .line 706
    return-void
.end method


# virtual methods
.method public clearAccessibilityCache()V
    .locals 3

    #@0
    .prologue
    .line 734
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    const/4 v2, 0x5

    #@3
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 735
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@9
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@c
    .line 733
    return-void
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v13, -0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 746
    iget v10, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v10, :pswitch_data_0

    #@7
    .line 820
    const-string/jumbo v10, "AccessibilityService"

    #@a
    new-instance v11, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v12, "Unknown message type "

    #@12
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v11

    #@16
    iget v12, p1, Landroid/os/Message;->what:I

    #@18
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v11

    #@1c
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v11

    #@20
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 745
    return-void

    #@24
    .line 748
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@26
    check-cast v3, Landroid/view/accessibility/AccessibilityEvent;

    #@28
    .line 749
    .local v3, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v3, :cond_0

    #@2a
    .line 750
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@2d
    move-result-object v10

    #@2e
    invoke-virtual {v10, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@31
    .line 751
    iget-object v10, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    #@33
    invoke-interface {v10, v3}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@36
    .line 754
    :try_start_0
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 759
    :cond_0
    :goto_0
    return-void

    #@3a
    .line 755
    :catch_0
    move-exception v5

    #@3b
    .local v5, "ise":Ljava/lang/IllegalStateException;
    goto :goto_0

    #@3c
    .line 762
    .end local v3    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v5    # "ise":Ljava/lang/IllegalStateException;
    :pswitch_1
    iget-object v10, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    #@3e
    invoke-interface {v10}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onInterrupt()V

    #@41
    .line 763
    return-void

    #@42
    .line 766
    :pswitch_2
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@44
    iput v10, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    #@46
    .line 767
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@48
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@4a
    .line 769
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@4c
    check-cast v1, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    #@4e
    .line 770
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@50
    check-cast v9, Landroid/os/IBinder;

    #@52
    .line 771
    .local v9, "windowToken":Landroid/os/IBinder;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@55
    .line 772
    if-eqz v1, :cond_1

    #@57
    .line 773
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@5a
    move-result-object v10

    #@5b
    iget v11, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    #@5d
    invoke-virtual {v10, v11, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V

    #@60
    .line 775
    iget-object v10, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    #@62
    iget v11, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    #@64
    invoke-interface {v10, v11, v9}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->init(ILandroid/os/IBinder;)V

    #@67
    .line 776
    iget-object v10, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    #@69
    invoke-interface {v10}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onServiceConnected()V

    #@6c
    .line 784
    :goto_1
    return-void

    #@6d
    .line 778
    :cond_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@70
    move-result-object v10

    #@71
    .line 779
    iget v11, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    #@73
    .line 778
    invoke-virtual {v10, v11}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    #@76
    .line 780
    iput v13, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    #@78
    .line 781
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@7b
    move-result-object v10

    #@7c
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache()V

    #@7f
    .line 782
    iget-object v10, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    #@81
    invoke-interface {v10, v13, v12}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->init(ILandroid/os/IBinder;)V

    #@84
    goto :goto_1

    #@85
    .line 787
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v9    # "windowToken":Landroid/os/IBinder;
    :pswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@87
    .line 788
    .local v4, "gestureId":I
    iget-object v10, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    #@89
    invoke-interface {v10, v4}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onGesture(I)Z

    #@8c
    .line 789
    return-void

    #@8d
    .line 792
    .end local v4    # "gestureId":I
    :pswitch_4
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@90
    move-result-object v10

    #@91
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache()V

    #@94
    .line 793
    return-void

    #@95
    .line 796
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@97
    check-cast v2, Landroid/view/KeyEvent;

    #@99
    .line 798
    .local v2, "event":Landroid/view/KeyEvent;
    :try_start_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@9c
    move-result-object v10

    #@9d
    .line 799
    iget v11, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    #@9f
    .line 798
    invoke-virtual {v10, v11}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    #@a2
    move-result-object v1

    #@a3
    .line 800
    .restart local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v1, :cond_2

    #@a5
    .line 801
    iget-object v10, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    #@a7
    invoke-interface {v10, v2}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onKeyEvent(Landroid/view/KeyEvent;)Z

    #@aa
    move-result v7

    #@ab
    .line 802
    .local v7, "result":Z
    iget v8, p1, Landroid/os/Message;->arg1:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ad
    .line 804
    .local v8, "sequence":I
    :try_start_2
    invoke-interface {v1, v7, v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setOnKeyEventResult(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b0
    .line 812
    .end local v7    # "result":Z
    .end local v8    # "sequence":I
    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Landroid/view/KeyEvent;->recycle()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    #@b3
    .line 817
    :goto_3
    return-void

    #@b4
    .line 805
    .restart local v7    # "result":Z
    .restart local v8    # "sequence":I
    :catch_1
    move-exception v6

    #@b5
    .local v6, "re":Landroid/os/RemoteException;
    goto :goto_2

    #@b6
    .line 813
    .end local v6    # "re":Landroid/os/RemoteException;
    .end local v7    # "result":Z
    .end local v8    # "sequence":I
    :catch_2
    move-exception v5

    #@b7
    .restart local v5    # "ise":Ljava/lang/IllegalStateException;
    goto :goto_3

    #@b8
    .line 809
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v5    # "ise":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v10

    #@b9
    .line 812
    :try_start_4
    invoke-virtual {v2}, Landroid/view/KeyEvent;->recycle()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    #@bc
    .line 809
    :goto_4
    throw v10

    #@bd
    .line 813
    :catch_3
    move-exception v5

    #@be
    .restart local v5    # "ise":Ljava/lang/IllegalStateException;
    goto :goto_4

    #@bf
    .line 746
    nop

    #@c0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .param p2, "connectionId"    # I
    .param p3, "windowToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 713
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    const/4 v2, 0x1

    #@3
    invoke-virtual {v1, v2, p2, p1, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 715
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@9
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@c
    .line 712
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 724
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    const/4 v2, 0x3

    #@3
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 725
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@9
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@c
    .line 723
    return-void
.end method

.method public onGesture(I)V
    .locals 3
    .param p1, "gestureId"    # I

    #@0
    .prologue
    .line 729
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    const/4 v2, 0x4

    #@3
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 730
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@9
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@c
    .line 728
    return-void
.end method

.method public onInterrupt()V
    .locals 3

    #@0
    .prologue
    .line 719
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    const/4 v2, 0x2

    #@3
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 720
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@9
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@c
    .line 718
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "sequence"    # I

    #@0
    .prologue
    .line 740
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    const/4 v2, 0x6

    #@3
    invoke-virtual {v1, v2, p2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 741
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@9
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@c
    .line 739
    return-void
.end method
