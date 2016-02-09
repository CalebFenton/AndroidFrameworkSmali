.class public abstract Landroid/widget/ListPopupWindow$ForwardingListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForwardingListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;,
        Landroid/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field private final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private mTriggerLongPress:Ljava/lang/Runnable;

.field private mWasLongPress:Z


# direct methods
.method static synthetic -get0(Landroid/widget/ListPopupWindow$ForwardingListener;)Landroid/view/View;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/ListPopupWindow$ForwardingListener;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->onLongPress()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "src"    # Landroid/view/View;

    #@0
    .prologue
    .line 1255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1256
    iput-object p1, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    #@5
    .line 1257
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@8
    move-result-object v0

    #@9
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@10
    move-result v0

    #@11
    int-to-float v0, v0

    #@12
    iput v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    #@14
    .line 1258
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    #@17
    move-result v0

    #@18
    iput v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    #@1a
    .line 1261
    iget v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    #@1c
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@1f
    move-result v1

    #@20
    add-int/2addr v0, v1

    #@21
    div-int/lit8 v0, v0, 0x2

    #@23
    iput v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mLongPressTimeout:I

    #@25
    .line 1263
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@28
    .line 1255
    return-void
.end method

.method private clearCallbacks()V
    .locals 2

    #@0
    .prologue
    .line 1403
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1404
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    #@6
    iget-object v1, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    #@8
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@b
    .line 1407
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 1408
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    #@11
    iget-object v1, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    #@13
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@16
    .line 1402
    :cond_1
    return-void
.end method

.method private onLongPress()V
    .locals 11

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    .line 1413
    invoke-direct {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    #@5
    .line 1415
    iget-object v9, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    #@7
    .line 1416
    .local v9, "src":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->isEnabled()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    invoke-virtual {v9}, Landroid/view/View;->isLongClickable()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 1419
    :cond_0
    return-void

    #@14
    .line 1422
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->onForwardingStarted()Z

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_2

    #@1a
    .line 1423
    return-void

    #@1b
    .line 1427
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@1e
    move-result-object v2

    #@1f
    invoke-interface {v2, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@22
    .line 1430
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@25
    move-result-wide v0

    #@26
    .line 1431
    .local v0, "now":J
    const/4 v4, 0x3

    #@27
    const/4 v7, 0x0

    #@28
    move-wide v2, v0

    #@29
    move v6, v5

    #@2a
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@2d
    move-result-object v8

    #@2e
    .line 1432
    .local v8, "e":Landroid/view/MotionEvent;
    invoke-virtual {v9, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@31
    .line 1433
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    #@34
    .line 1435
    iput-boolean v10, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    #@36
    .line 1436
    iput-boolean v10, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    #@38
    .line 1412
    return-void
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1447
    iget-object v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    #@3
    .line 1448
    .local v6, "src":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/widget/ListPopupWindow;

    #@6
    move-result-object v5

    #@7
    .line 1449
    .local v5, "popup":Landroid/widget/ListPopupWindow;
    if-eqz v5, :cond_0

    #@9
    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@c
    move-result v8

    #@d
    if-eqz v8, :cond_0

    #@f
    .line 1453
    invoke-static {v5}, Landroid/widget/ListPopupWindow;->-get0(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$DropDownListView;

    #@12
    move-result-object v1

    #@13
    .line 1454
    .local v1, "dst":Landroid/widget/ListPopupWindow$DropDownListView;
    if-eqz v1, :cond_1

    #@15
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow$DropDownListView;->isShown()Z

    #@18
    move-result v8

    #@19
    if-eqz v8, :cond_1

    #@1b
    .line 1459
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@1e
    move-result-object v2

    #@1f
    .line 1460
    .local v2, "dstEvent":Landroid/view/MotionEvent;
    invoke-virtual {v6, v2}, Landroid/view/View;->toGlobalMotionEvent(Landroid/view/MotionEvent;)Z

    #@22
    .line 1461
    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow$DropDownListView;->toLocalMotionEvent(Landroid/view/MotionEvent;)Z

    #@25
    .line 1464
    iget v8, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    #@27
    invoke-virtual {v1, v2, v8}, Landroid/widget/ListPopupWindow$DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    #@2a
    move-result v3

    #@2b
    .line 1465
    .local v3, "handled":Z
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    #@2e
    .line 1468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@31
    move-result v0

    #@32
    .line 1469
    .local v0, "action":I
    const/4 v8, 0x1

    #@33
    if-eq v0, v8, :cond_3

    #@35
    .line 1470
    const/4 v8, 0x3

    #@36
    if-eq v0, v8, :cond_2

    #@38
    const/4 v4, 0x1

    #@39
    .line 1472
    .local v4, "keepForwarding":Z
    :goto_0
    if-eqz v3, :cond_4

    #@3b
    .end local v4    # "keepForwarding":Z
    :goto_1
    return v4

    #@3c
    .line 1450
    .end local v0    # "action":I
    .end local v1    # "dst":Landroid/widget/ListPopupWindow$DropDownListView;
    .end local v2    # "dstEvent":Landroid/view/MotionEvent;
    .end local v3    # "handled":Z
    :cond_0
    return v7

    #@3d
    .line 1455
    .restart local v1    # "dst":Landroid/widget/ListPopupWindow$DropDownListView;
    :cond_1
    return v7

    #@3e
    .line 1470
    .restart local v0    # "action":I
    .restart local v2    # "dstEvent":Landroid/view/MotionEvent;
    .restart local v3    # "handled":Z
    :cond_2
    const/4 v4, 0x0

    #@3f
    .restart local v4    # "keepForwarding":Z
    goto :goto_0

    #@40
    .line 1469
    .end local v4    # "keepForwarding":Z
    :cond_3
    const/4 v4, 0x0

    #@41
    .restart local v4    # "keepForwarding":Z
    goto :goto_0

    #@42
    :cond_4
    move v4, v7

    #@43
    .line 1472
    goto :goto_1
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 1356
    iget-object v2, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    #@5
    .line 1357
    .local v2, "src":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    #@8
    move-result v5

    #@9
    if-nez v5, :cond_0

    #@b
    .line 1358
    return v8

    #@c
    .line 1361
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@f
    move-result v0

    #@10
    .line 1362
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    #@13
    .line 1399
    :cond_1
    :goto_0
    return v8

    #@14
    .line 1364
    :pswitch_0
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@17
    move-result v5

    #@18
    iput v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    #@1a
    .line 1365
    iput-boolean v8, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    #@1c
    .line 1367
    iget-object v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    #@1e
    if-nez v5, :cond_2

    #@20
    .line 1368
    new-instance v5, Landroid/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;

    #@22
    invoke-direct {v5, p0, v9}, Landroid/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;-><init>(Landroid/widget/ListPopupWindow$ForwardingListener;Landroid/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;)V

    #@25
    iput-object v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    #@27
    .line 1370
    :cond_2
    iget-object v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    #@29
    iget v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    #@2b
    int-to-long v6, v6

    #@2c
    invoke-virtual {v2, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@2f
    .line 1372
    iget-object v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    #@31
    if-nez v5, :cond_3

    #@33
    .line 1373
    new-instance v5, Landroid/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;

    #@35
    invoke-direct {v5, p0, v9}, Landroid/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;-><init>(Landroid/widget/ListPopupWindow$ForwardingListener;Landroid/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;)V

    #@38
    iput-object v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    #@3a
    .line 1375
    :cond_3
    iget-object v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    #@3c
    iget v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mLongPressTimeout:I

    #@3e
    int-to-long v6, v6

    #@3f
    invoke-virtual {v2, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@42
    goto :goto_0

    #@43
    .line 1378
    :pswitch_1
    iget v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    #@45
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@48
    move-result v1

    #@49
    .line 1379
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_1

    #@4b
    .line 1380
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    #@4e
    move-result v3

    #@4f
    .line 1381
    .local v3, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    #@52
    move-result v4

    #@53
    .line 1384
    .local v4, "y":F
    iget v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    #@55
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->pointInView(FFF)Z

    #@58
    move-result v5

    #@59
    if-nez v5, :cond_1

    #@5b
    .line 1385
    invoke-direct {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    #@5e
    .line 1388
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@61
    move-result-object v5

    #@62
    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@65
    .line 1389
    return v6

    #@66
    .line 1395
    .end local v1    # "activePointerIndex":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    #@69
    goto :goto_0

    #@6a
    .line 1362
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public abstract getPopup()Landroid/widget/ListPopupWindow;
.end method

.method protected onForwardingStarted()Z
    .locals 2

    #@0
    .prologue
    .line 1325
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/widget/ListPopupWindow;

    #@3
    move-result-object v0

    #@4
    .line 1326
    .local v0, "popup":Landroid/widget/ListPopupWindow;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 1329
    :cond_0
    :goto_0
    const/4 v1, 0x1

    #@d
    return v1

    #@e
    .line 1327
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    #@11
    goto :goto_0
.end method

.method protected onForwardingStopped()Z
    .locals 2

    #@0
    .prologue
    .line 1342
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/widget/ListPopupWindow;

    #@3
    move-result-object v0

    #@4
    .line 1343
    .local v0, "popup":Landroid/widget/ListPopupWindow;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1344
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    #@f
    .line 1346
    :cond_0
    const/4 v1, 0x1

    #@10
    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1280
    iget-boolean v10, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    #@3
    .line 1282
    .local v10, "wasForwarding":Z
    if-eqz v10, :cond_2

    #@5
    .line 1283
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_1

    #@b
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->onForwardingStopped()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    const/4 v9, 0x0

    #@12
    .line 1297
    :cond_0
    :goto_0
    iput-boolean v9, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    #@14
    .line 1298
    if-nez v9, :cond_4

    #@16
    .end local v10    # "wasForwarding":Z
    :goto_1
    return v10

    #@17
    .line 1283
    .restart local v10    # "wasForwarding":Z
    :cond_1
    const/4 v9, 0x1

    #@18
    .local v9, "forwarding":Z
    goto :goto_0

    #@19
    .line 1285
    .end local v9    # "forwarding":Z
    :cond_2
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_3

    #@1f
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->onForwardingStarted()Z

    #@22
    move-result v9

    #@23
    .line 1287
    :goto_2
    if-eqz v9, :cond_0

    #@25
    .line 1289
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@28
    move-result-wide v0

    #@29
    .line 1290
    .local v0, "now":J
    const/4 v4, 0x3

    #@2a
    .line 1291
    const/4 v7, 0x0

    #@2b
    move-wide v2, v0

    #@2c
    move v6, v5

    #@2d
    .line 1290
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@30
    move-result-object v8

    #@31
    .line 1292
    .local v8, "e":Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    #@33
    invoke-virtual {v2, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@36
    .line 1293
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    #@39
    goto :goto_0

    #@3a
    .line 1285
    .end local v0    # "now":J
    .end local v8    # "e":Landroid/view/MotionEvent;
    :cond_3
    const/4 v9, 0x0

    #@3b
    .restart local v9    # "forwarding":Z
    goto :goto_2

    #@3c
    .line 1298
    .end local v9    # "forwarding":Z
    :cond_4
    const/4 v10, 0x1

    #@3d
    goto :goto_1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 1302
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 1307
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    #@3
    .line 1308
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    #@6
    .line 1310
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1311
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    #@c
    iget-object v1, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    #@e
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@11
    .line 1306
    :cond_0
    return-void
.end method
