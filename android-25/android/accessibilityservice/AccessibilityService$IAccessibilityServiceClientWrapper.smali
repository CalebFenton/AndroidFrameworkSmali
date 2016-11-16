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

.field private static final DO_GESTURE_COMPLETE:I = 0x9

.field private static final DO_INIT:I = 0x1

.field private static final DO_ON_ACCESSIBILITY_EVENT:I = 0x3

.field private static final DO_ON_GESTURE:I = 0x4

.field private static final DO_ON_INTERRUPT:I = 0x2

.field private static final DO_ON_KEY_EVENT:I = 0x6

.field private static final DO_ON_MAGNIFICATION_CHANGED:I = 0x7

.field private static final DO_ON_SOFT_KEYBOARD_SHOW_MODE_CHANGED:I = 0x8


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
    .line 1515
    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;-><init>()V

    #@3
    .line 1517
    iput-object p3, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    #@5
    .line 1518
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    #@7
    const/4 v1, 0x1

    #@8
    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    #@b
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@d
    .line 1516
    return-void
.end method


# virtual methods
.method public clearAccessibilityCache()V
    .locals 3

    #@0
    .prologue
    .line 1544
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    const/4 v2, 0x5

    #@3
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 1545
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@9
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@c
    .line 1543
    return-void
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1580
    move-object/from16 v0, p1

    #@2
    iget v0, v0, Landroid/os/Message;->what:I

    #@4
    move/from16 v19, v0

    #@6
    packed-switch v19, :pswitch_data_0

    #@9
    .line 1673
    const-string/jumbo v19, "AccessibilityService"

    #@c
    new-instance v20, Ljava/lang/StringBuilder;

    #@e
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v21, "Unknown message type "

    #@14
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v20

    #@18
    move-object/from16 v0, p1

    #@1a
    iget v0, v0, Landroid/os/Message;->what:I

    #@1c
    move/from16 v21, v0

    #@1e
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v20

    #@22
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v20

    #@26
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 1579
    return-void

    #@2a
    .line 1582
    :pswitch_0
    move-object/from16 v0, p1

    #@2c
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2e
    check-cast v8, Landroid/view/accessibility/AccessibilityEvent;

    #@30
    .line 1583
    .local v8, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v8, :cond_0

    #@32
    .line 1584
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@35
    move-result-object v19

    #@36
    move-object/from16 v0, v19

    #@38
    invoke-virtual {v0, v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3b
    .line 1585
    move-object/from16 v0, p0

    #@3d
    iget-object v0, v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    #@3f
    move-object/from16 v19, v0

    #@41
    move-object/from16 v0, v19

    #@43
    invoke-interface {v0, v8}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@46
    .line 1588
    :try_start_0
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    .line 1593
    :cond_0
    :goto_0
    return-void

    #@4a
    .line 1589
    :catch_0
    move-exception v10

    #@4b
    .local v10, "ise":Ljava/lang/IllegalStateException;
    goto :goto_0

    #@4c
    .line 1596
    .end local v8    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v10    # "ise":Ljava/lang/IllegalStateException;
    :pswitch_1
    move-object/from16 v0, p0

    #@4e
    iget-object v0, v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    #@50
    move-object/from16 v19, v0

    #@52
    invoke-interface/range {v19 .. v19}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onInterrupt()V

    #@55
    .line 1597
    return-void

    #@56
    .line 1600
    :pswitch_2
    move-object/from16 v0, p1

    #@58
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@5a
    move/from16 v19, v0

    #@5c
    move/from16 v0, v19

    #@5e
    move-object/from16 v1, p0

    #@60
    iput v0, v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    #@62
    .line 1601
    move-object/from16 v0, p1

    #@64
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@66
    check-cast v3, Lcom/android/internal/os/SomeArgs;

    #@68
    .line 1603
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v6, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6a
    check-cast v6, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    #@6c
    .line 1604
    .local v6, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@6e
    move-object/from16 v18, v0

    #@70
    check-cast v18, Landroid/os/IBinder;

    #@72
    .line 1605
    .local v18, "windowToken":Landroid/os/IBinder;
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@75
    .line 1606
    if-eqz v6, :cond_1

    #@77
    .line 1607
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@7a
    move-result-object v19

    #@7b
    move-object/from16 v0, p0

    #@7d
    iget v0, v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    #@7f
    move/from16 v20, v0

    #@81
    move-object/from16 v0, v19

    #@83
    move/from16 v1, v20

    #@85
    invoke-virtual {v0, v1, v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V

    #@88
    .line 1609
    move-object/from16 v0, p0

    #@8a
    iget-object v0, v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    #@8c
    move-object/from16 v19, v0

    #@8e
    move-object/from16 v0, p0

    #@90
    iget v0, v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    #@92
    move/from16 v20, v0

    #@94
    move-object/from16 v0, v19

    #@96
    move/from16 v1, v20

    #@98
    move-object/from16 v2, v18

    #@9a
    invoke-interface {v0, v1, v2}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->init(ILandroid/os/IBinder;)V

    #@9d
    .line 1610
    move-object/from16 v0, p0

    #@9f
    iget-object v0, v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    #@a1
    move-object/from16 v19, v0

    #@a3
    invoke-interface/range {v19 .. v19}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onServiceConnected()V

    #@a6
    .line 1618
    :goto_1
    return-void

    #@a7
    .line 1612
    :cond_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@aa
    move-result-object v19

    #@ab
    .line 1613
    move-object/from16 v0, p0

    #@ad
    iget v0, v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    #@af
    move/from16 v20, v0

    #@b1
    .line 1612
    invoke-virtual/range {v19 .. v20}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    #@b4
    .line 1614
    const/16 v19, -0x1

    #@b6
    move/from16 v0, v19

    #@b8
    move-object/from16 v1, p0

    #@ba
    iput v0, v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    #@bc
    .line 1615
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@bf
    move-result-object v19

    #@c0
    invoke-virtual/range {v19 .. v19}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache()V

    #@c3
    .line 1616
    move-object/from16 v0, p0

    #@c5
    iget-object v0, v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    #@c7
    move-object/from16 v19, v0

    #@c9
    const/16 v20, -0x1

    #@cb
    const/16 v21, 0x0

    #@cd
    invoke-interface/range {v19 .. v21}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->init(ILandroid/os/IBinder;)V

    #@d0
    goto :goto_1

    #@d1
    .line 1621
    .end local v3    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v6    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v18    # "windowToken":Landroid/os/IBinder;
    :pswitch_3
    move-object/from16 v0, p1

    #@d3
    iget v9, v0, Landroid/os/Message;->arg1:I

    #@d5
    .line 1622
    .local v9, "gestureId":I
    move-object/from16 v0, p0

    #@d7
    iget-object v0, v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    #@d9
    move-object/from16 v19, v0

    #@db
    move-object/from16 v0, v19

    #@dd
    invoke-interface {v0, v9}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onGesture(I)Z

    #@e0
    .line 1623
    return-void

    #@e1
    .line 1626
    .end local v9    # "gestureId":I
    :pswitch_4
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@e4
    move-result-object v19

    #@e5
    invoke-virtual/range {v19 .. v19}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache()V

    #@e8
    .line 1627
    return-void

    #@e9
    .line 1630
    :pswitch_5
    move-object/from16 v0, p1

    #@eb
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ed
    check-cast v7, Landroid/view/KeyEvent;

    #@ef
    .line 1632
    .local v7, "event":Landroid/view/KeyEvent;
    :try_start_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@f2
    move-result-object v19

    #@f3
    .line 1633
    move-object/from16 v0, p0

    #@f5
    iget v0, v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    #@f7
    move/from16 v20, v0

    #@f9
    .line 1632
    invoke-virtual/range {v19 .. v20}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    #@fc
    move-result-object v6

    #@fd
    .line 1634
    .restart local v6    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v6, :cond_2

    #@ff
    .line 1635
    move-object/from16 v0, p0

    #@101
    iget-object v0, v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    #@103
    move-object/from16 v19, v0

    #@105
    move-object/from16 v0, v19

    #@107
    invoke-interface {v0, v7}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onKeyEvent(Landroid/view/KeyEvent;)Z

    #@10a
    move-result v13

    #@10b
    .line 1636
    .local v13, "result":Z
    move-object/from16 v0, p1

    #@10d
    iget v15, v0, Landroid/os/Message;->arg1:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10f
    .line 1638
    .local v15, "sequence":I
    :try_start_2
    invoke-interface {v6, v13, v15}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setOnKeyEventResult(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@112
    .line 1646
    .end local v13    # "result":Z
    .end local v15    # "sequence":I
    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {v7}, Landroid/view/KeyEvent;->recycle()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    #@115
    .line 1651
    :goto_3
    return-void

    #@116
    .line 1639
    .restart local v13    # "result":Z
    .restart local v15    # "sequence":I
    :catch_1
    move-exception v11

    #@117
    .local v11, "re":Landroid/os/RemoteException;
    goto :goto_2

    #@118
    .line 1647
    .end local v11    # "re":Landroid/os/RemoteException;
    .end local v13    # "result":Z
    .end local v15    # "sequence":I
    :catch_2
    move-exception v10

    #@119
    .restart local v10    # "ise":Ljava/lang/IllegalStateException;
    goto :goto_3

    #@11a
    .line 1643
    .end local v6    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v10    # "ise":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v19

    #@11b
    .line 1646
    :try_start_4
    invoke-virtual {v7}, Landroid/view/KeyEvent;->recycle()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    #@11e
    .line 1643
    :goto_4
    throw v19

    #@11f
    .line 1647
    :catch_3
    move-exception v10

    #@120
    .restart local v10    # "ise":Ljava/lang/IllegalStateException;
    goto :goto_4

    #@121
    .line 1654
    .end local v7    # "event":Landroid/view/KeyEvent;
    .end local v10    # "ise":Ljava/lang/IllegalStateException;
    :pswitch_6
    move-object/from16 v0, p1

    #@123
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@125
    check-cast v3, Lcom/android/internal/os/SomeArgs;

    #@127
    .line 1655
    .restart local v3    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v12, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@129
    check-cast v12, Landroid/graphics/Region;

    #@12b
    .line 1656
    .local v12, "region":Landroid/graphics/Region;
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@12d
    move-object/from16 v19, v0

    #@12f
    check-cast v19, Ljava/lang/Float;

    #@131
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    #@134
    move-result v14

    #@135
    .line 1657
    .local v14, "scale":F
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@137
    move-object/from16 v19, v0

    #@139
    check-cast v19, Ljava/lang/Float;

    #@13b
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    #@13e
    move-result v4

    #@13f
    .line 1658
    .local v4, "centerX":F
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@141
    move-object/from16 v19, v0

    #@143
    check-cast v19, Ljava/lang/Float;

    #@145
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    #@148
    move-result v5

    #@149
    .line 1659
    .local v5, "centerY":F
    move-object/from16 v0, p0

    #@14b
    iget-object v0, v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    #@14d
    move-object/from16 v19, v0

    #@14f
    move-object/from16 v0, v19

    #@151
    invoke-interface {v0, v12, v14, v4, v5}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onMagnificationChanged(Landroid/graphics/Region;FFF)V

    #@154
    .line 1660
    return-void

    #@155
    .line 1663
    .end local v3    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "centerX":F
    .end local v5    # "centerY":F
    .end local v12    # "region":Landroid/graphics/Region;
    .end local v14    # "scale":F
    :pswitch_7
    move-object/from16 v0, p1

    #@157
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@159
    move/from16 v16, v0

    #@15b
    .line 1664
    .local v16, "showMode":I
    move-object/from16 v0, p0

    #@15d
    iget-object v0, v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    #@15f
    move-object/from16 v19, v0

    #@161
    move-object/from16 v0, v19

    #@163
    move/from16 v1, v16

    #@165
    invoke-interface {v0, v1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onSoftKeyboardShowModeChanged(I)V

    #@168
    .line 1665
    return-void

    #@169
    .line 1668
    .end local v16    # "showMode":I
    :pswitch_8
    move-object/from16 v0, p1

    #@16b
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@16d
    move/from16 v19, v0

    #@16f
    const/16 v20, 0x1

    #@171
    move/from16 v0, v19

    #@173
    move/from16 v1, v20

    #@175
    if-ne v0, v1, :cond_3

    #@177
    const/16 v17, 0x1

    #@179
    .line 1669
    .local v17, "successfully":Z
    :goto_5
    move-object/from16 v0, p0

    #@17b
    iget-object v0, v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    #@17d
    move-object/from16 v19, v0

    #@17f
    move-object/from16 v0, p1

    #@181
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@183
    move/from16 v20, v0

    #@185
    move-object/from16 v0, v19

    #@187
    move/from16 v1, v20

    #@189
    move/from16 v2, v17

    #@18b
    invoke-interface {v0, v1, v2}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onPerformGestureResult(IZ)V

    #@18e
    .line 1670
    return-void

    #@18f
    .line 1668
    .end local v17    # "successfully":Z
    :cond_3
    const/16 v17, 0x0

    #@191
    .restart local v17    # "successfully":Z
    goto :goto_5

    #@192
    .line 1580
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .param p2, "connectionId"    # I
    .param p3, "windowToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1523
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    const/4 v2, 0x1

    #@3
    invoke-virtual {v1, v2, p2, p1, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 1525
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@9
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@c
    .line 1522
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 1534
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    const/4 v2, 0x3

    #@3
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 1535
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@9
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@c
    .line 1533
    return-void
.end method

.method public onGesture(I)V
    .locals 3
    .param p1, "gestureId"    # I

    #@0
    .prologue
    .line 1539
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    const/4 v2, 0x4

    #@3
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 1540
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@9
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@c
    .line 1538
    return-void
.end method

.method public onInterrupt()V
    .locals 3

    #@0
    .prologue
    .line 1529
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    const/4 v2, 0x2

    #@3
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 1530
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@9
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@c
    .line 1528
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "sequence"    # I

    #@0
    .prologue
    .line 1550
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    const/4 v2, 0x6

    #@3
    invoke-virtual {v1, v2, p2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 1551
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@9
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@c
    .line 1549
    return-void
.end method

.method public onMagnificationChanged(Landroid/graphics/Region;FFF)V
    .locals 4
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    #@0
    .prologue
    .line 1556
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 1557
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 1558
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@9
    move-result-object v2

    #@a
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@c
    .line 1559
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@f
    move-result-object v2

    #@10
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@12
    .line 1560
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@15
    move-result-object v2

    #@16
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@18
    .line 1562
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@1a
    const/4 v3, 0x7

    #@1b
    invoke-virtual {v2, v3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@1e
    move-result-object v1

    #@1f
    .line 1563
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@21
    invoke-virtual {v2, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@24
    .line 1555
    return-void
.end method

.method public onPerformGestureResult(IZ)V
    .locals 4
    .param p1, "sequence"    # I
    .param p2, "successfully"    # Z

    #@0
    .prologue
    .line 1573
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    .line 1574
    if-eqz p2, :cond_0

    #@4
    const/4 v1, 0x1

    #@5
    .line 1573
    :goto_0
    const/16 v3, 0x9

    #@7
    invoke-virtual {v2, v3, p1, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    .line 1575
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@d
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@10
    .line 1572
    return-void

    #@11
    .line 1574
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    #@12
    goto :goto_0
.end method

.method public onSoftKeyboardShowModeChanged(I)V
    .locals 3
    .param p1, "showMode"    # I

    #@0
    .prologue
    .line 1568
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    const/16 v2, 0x8

    #@4
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 1569
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@a
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@d
    .line 1566
    return-void
.end method
