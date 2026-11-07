.class public Landroid/widget/Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TN"
.end annotation


# static fields
.field private static final greylist-max-o CANCEL:I = 0x2

.field private static final greylist-max-o HIDE:I = 0x1

.field private static final greylist-max-o SHOW:I


# instance fields
.field private final blacklist mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field greylist-max-o mDuration:I

.field greylist-max-p mGravity:I

.field final greylist-max-o mHandler:Landroid/os/Handler;

.field greylist-max-o mHorizontalMargin:F

.field greylist-max-p mNextView:Landroid/view/View;

.field greylist-max-p mNextViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist-max-p mParams:Landroid/view/WindowManager$LayoutParams;

.field private final blacklist mPresenter:Landroid/widget/ToastPresenter;

.field final blacklist mToken:Landroid/os/Binder;

.field greylist-max-o mVerticalMargin:F

.field greylist-max-p mView:Landroid/view/View;

.field greylist-max-o mWM:Landroid/view/WindowManager;

.field greylist-max-o mX:I

.field greylist-max-p mY:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmParams(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;
    .registers 1

    iget-object p0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Binder;Ljava/util/List;Landroid/os/Looper;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/Binder;
    .param p5, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Binder;",
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 674
    .local p4, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/widget/Toast$Callback;>;"
    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    .line 675
    nop

    .line 676
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 675
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .line 677
    .local v0, "accessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    new-instance v1, Landroid/widget/ToastPresenter;

    invoke-static {}, Landroid/widget/Toast;->-$$Nest$smgetService()Landroid/app/INotificationManager;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2, p2}, Landroid/widget/ToastPresenter;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;Landroid/app/INotificationManager;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mPresenter:Landroid/widget/ToastPresenter;

    .line 679
    iget-object v1, p0, Landroid/widget/Toast$TN;->mPresenter:Landroid/widget/ToastPresenter;

    invoke-virtual {v1}, Landroid/widget/ToastPresenter;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 680
    iput-object p2, p0, Landroid/widget/Toast$TN;->mPackageName:Ljava/lang/String;

    .line 681
    iput-object p3, p0, Landroid/widget/Toast$TN;->mToken:Landroid/os/Binder;

    .line 682
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 684
    new-instance v1, Landroid/widget/Toast$TN$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p5, v2}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    .line 722
    return-void
.end method

.method private blacklist getCallbacks()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;"
        }
    .end annotation

    .line 725
    iget-object v0, p0, Landroid/widget/Toast$TN;->mCallbacks:Ljava/lang/ref/WeakReference;

    monitor-enter v0

    .line 726
    :try_start_3
    iget-object v1, p0, Landroid/widget/Toast$TN;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 727
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/Toast$TN;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 729
    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object v1

    .line 731
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method


# virtual methods
.method public greylist-max-o cancel()V
    .registers 3

    .line 755
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 756
    return-void
.end method

.method public blacklist getNextView()Landroid/view/View;
    .registers 2

    .line 821
    invoke-static {}, Landroid/widget/flags/Flags;->toastNoWeakref()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 822
    iget-object v0, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    return-object v0

    .line 824
    :cond_9
    iget-object v0, p0, Landroid/widget/Toast$TN;->mNextViewWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/widget/Toast$TN;->mNextViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return-object v0
.end method

.method public greylist handleHide()V
    .registers 6

    .line 803
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    if-eqz v0, :cond_29

    .line 804
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mPresenter:Landroid/widget/ToastPresenter;

    invoke-virtual {v1}, Landroid/widget/ToastPresenter;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const-string v1, "Trying to hide toast view different than the last one displayed"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 806
    iget-object v0, p0, Landroid/widget/Toast$TN;->mPresenter:Landroid/widget/ToastPresenter;

    new-instance v1, Landroid/widget/Toast$CallbackBinder;

    invoke-direct {p0}, Landroid/widget/Toast$TN;->getCallbacks()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/Toast$CallbackBinder;-><init>(Ljava/util/List;Landroid/os/Handler;Landroid/widget/Toast-IA;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToastPresenter;->hide(Landroid/app/ITransientNotificationCallback;)V

    .line 807
    iput-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 809
    :cond_29
    return-void
.end method

.method public greylist-max-o handleShow(Landroid/os/IBinder;)V
    .registers 27
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 759
    move-object/from16 v0, p0

    invoke-static {}, Landroid/widget/flags/Flags;->toastNoWeakref()Z

    .line 772
    iget-object v1, v0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_aa

    iget-object v1, v0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_19

    goto/16 :goto_aa

    .line 775
    :cond_19
    invoke-static {}, Landroid/widget/flags/Flags;->toastNoWeakref()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_58

    .line 776
    iget-object v1, v0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    if-eqz v1, :cond_a9

    iget-object v1, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v3, v0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    if-eq v1, v3, :cond_a9

    .line 778
    invoke-virtual {v0}, Landroid/widget/Toast$TN;->handleHide()V

    .line 779
    iget-object v1, v0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    iput-object v1, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 780
    iget-object v1, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    if-eqz v1, :cond_a9

    .line 781
    iget-object v3, v0, Landroid/widget/Toast$TN;->mPresenter:Landroid/widget/ToastPresenter;

    iget-object v4, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v5, v0, Landroid/widget/Toast$TN;->mToken:Landroid/os/Binder;

    iget v7, v0, Landroid/widget/Toast$TN;->mDuration:I

    iget v8, v0, Landroid/widget/Toast$TN;->mGravity:I

    iget v9, v0, Landroid/widget/Toast$TN;->mX:I

    iget v10, v0, Landroid/widget/Toast$TN;->mY:I

    iget v11, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    iget v12, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    new-instance v13, Landroid/widget/Toast$CallbackBinder;

    .line 783
    invoke-direct {v0}, Landroid/widget/Toast$TN;->getCallbacks()Ljava/util/List;

    move-result-object v1

    iget-object v6, v0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    invoke-direct {v13, v1, v6, v2}, Landroid/widget/Toast$CallbackBinder;-><init>(Ljava/util/List;Landroid/os/Handler;Landroid/widget/Toast-IA;)V

    .line 781
    move-object/from16 v6, p1

    invoke-virtual/range {v3 .. v13}, Landroid/widget/ToastPresenter;->show(Landroid/view/View;Landroid/os/IBinder;Landroid/os/IBinder;IIIIFFLandroid/app/ITransientNotificationCallback;)V

    goto :goto_a9

    .line 787
    :cond_58
    iget-object v1, v0, Landroid/widget/Toast$TN;->mNextViewWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_a9

    iget-object v1, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v3, v0, Landroid/widget/Toast$TN;->mNextViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v1, v3, :cond_a9

    .line 789
    invoke-virtual {v0}, Landroid/widget/Toast$TN;->handleHide()V

    .line 790
    iget-object v1, v0, Landroid/widget/Toast$TN;->mNextViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 791
    iget-object v1, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    if-eqz v1, :cond_a9

    .line 792
    iget-object v14, v0, Landroid/widget/Toast$TN;->mPresenter:Landroid/widget/ToastPresenter;

    iget-object v15, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v1, v0, Landroid/widget/Toast$TN;->mToken:Landroid/os/Binder;

    iget v3, v0, Landroid/widget/Toast$TN;->mDuration:I

    iget v4, v0, Landroid/widget/Toast$TN;->mGravity:I

    iget v5, v0, Landroid/widget/Toast$TN;->mX:I

    iget v6, v0, Landroid/widget/Toast$TN;->mY:I

    iget v7, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    iget v8, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    new-instance v9, Landroid/widget/Toast$CallbackBinder;

    .line 794
    invoke-direct {v0}, Landroid/widget/Toast$TN;->getCallbacks()Ljava/util/List;

    move-result-object v10

    iget-object v11, v0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    invoke-direct {v9, v10, v11, v2}, Landroid/widget/Toast$CallbackBinder;-><init>(Ljava/util/List;Landroid/os/Handler;Landroid/widget/Toast-IA;)V

    .line 792
    move-object/from16 v17, p1

    move-object/from16 v16, v1

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    invoke-virtual/range {v14 .. v24}, Landroid/widget/ToastPresenter;->show(Landroid/view/View;Landroid/os/IBinder;Landroid/os/IBinder;IIIIFFLandroid/app/ITransientNotificationCallback;)V

    .line 798
    :cond_a9
    :goto_a9
    return-void

    .line 773
    :cond_aa
    :goto_aa
    return-void
.end method

.method public greylist-max-o hide()V
    .registers 3

    .line 750
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 751
    return-void
.end method

.method public greylist-max-p show(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 741
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 742
    return-void
.end method
