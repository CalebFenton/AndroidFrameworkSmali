.class public Landroid/app/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/Window$OnWindowDismissedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Dialog$ListenersHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-p CANCEL:I = 0x44

.field private static final greylist-max-o DIALOG_HIERARCHY_TAG:Ljava/lang/String; = "android:dialogHierarchy"

.field private static final greylist-max-o DIALOG_SHOWING_TAG:Ljava/lang/String; = "android:dialogShowing"

.field private static final greylist-max-o DISMISS:I = 0x43

.field private static final greylist-max-o SHOW:I = 0x45

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Dialog"


# instance fields
.field private greylist-max-o mActionBar:Landroid/app/ActionBar;

.field private greylist-max-o mActionMode:Landroid/view/ActionMode;

.field private greylist-max-o mActionModeTypeStarting:I

.field private greylist-max-o mCancelAndDismissTaken:Ljava/lang/String;

.field private greylist mCancelMessage:Landroid/os/Message;

.field protected greylist-max-o mCancelable:Z

.field private greylist-max-o mCanceled:Z

.field final greylist mContext:Landroid/content/Context;

.field private greylist-max-o mCreated:Z

.field greylist-max-o mDecor:Landroid/view/View;

.field private blacklist mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

.field private final greylist-max-o mDismissAction:Ljava/lang/Runnable;

.field private greylist mDismissMessage:Landroid/os/Message;

.field private blacklist mDismissOverride:Ljava/lang/Runnable;

.field private final greylist-max-p mHandler:Landroid/os/Handler;

.field private final greylist mListenersHandler:Landroid/os/Handler;

.field private greylist mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private greylist mOwnerActivity:Landroid/app/Activity;

.field private greylist-max-o mSearchEvent:Landroid/view/SearchEvent;

.field private greylist mShowMessage:Landroid/os/Message;

.field private greylist mShowing:Z

.field final greylist mWindow:Landroid/view/Window;

.field private final greylist-max-o mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$cECM51mPbGJgkgyXR7h7zYpLOpo(Landroid/app/Dialog;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/Dialog;->lambda$new$0()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 171
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 172
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 190
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 191
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;IZ)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "createContextThemeWrapper"    # Z

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 133
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Dialog;->mCreated:Z

    .line 134
    iput-boolean v1, p0, Landroid/app/Dialog;->mShowing:Z

    .line 136
    iput-boolean v1, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 138
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    .line 153
    iput v1, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 155
    new-instance v1, Landroid/app/Dialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/app/Dialog$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    .line 195
    if-eqz p3, :cond_3a

    .line 196
    if-nez p2, :cond_32

    .line 197
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 198
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010308

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 199
    iget p2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 201
    .end local v1    # "outValue":Landroid/util/TypedValue;
    :cond_32
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    goto :goto_3c

    .line 203
    :cond_3a
    iput-object p1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 206
    :goto_3c
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    .line 208
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 209
    .local v0, "w":Landroid/view/Window;
    iput-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    .line 210
    invoke-virtual {v0, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 211
    invoke-virtual {v0, p0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    .line 212
    new-instance v1, Landroid/app/Dialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/app/Dialog$$ExternalSyntheticLambda1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setOnWindowSwipeDismissedCallback(Landroid/view/Window$OnWindowSwipeDismissedCallback;)V

    .line 217
    iget-object v1, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 218
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 220
    new-instance v1, Landroid/app/Dialog$ListenersHandler;

    invoke-direct {v1, p0}, Landroid/app/Dialog$ListenersHandler;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    .line 221
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 237
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 238
    iput-boolean p2, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 239
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 240
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/content/Context;ZLandroid/os/Message;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelCallback"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 231
    iput-boolean p2, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 232
    iput-object p3, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 233
    return-void
.end method

.method private greylist-max-o getAssociatedActivity()Landroid/content/ComponentName;
    .registers 5

    .line 1244
    iget-object v0, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    .line 1245
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1246
    .local v1, "context":Landroid/content/Context;
    :goto_6
    const/4 v2, 0x0

    if-nez v0, :cond_22

    if-eqz v1, :cond_22

    .line 1247
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_13

    .line 1248
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    goto :goto_6

    .line 1250
    :cond_13
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1f

    .line 1251
    move-object v2, v1

    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_20

    .line 1252
    :cond_1f
    nop

    :goto_20
    move-object v1, v2

    goto :goto_6

    .line 1255
    :cond_22
    if-nez v0, :cond_25

    goto :goto_29

    :cond_25
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    :goto_29
    return-object v2
.end method

.method private synthetic blacklist lambda$new$0()V
    .registers 2

    .line 213
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_7

    .line 214
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 216
    :cond_7
    return-void
.end method

.method private greylist-max-o sendDismissMessage()V
    .registers 2

    .line 419
    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_d

    .line 421
    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 423
    :cond_d
    return-void
.end method

.method private greylist-max-o sendShowMessage()V
    .registers 2

    .line 426
    iget-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    if-eqz v0, :cond_d

    .line 428
    iget-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 430
    :cond_d
    return-void
.end method


# virtual methods
.method public whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 640
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    return-void
.end method

.method protected blacklist allowsRegisterDefaultOnBackInvokedCallback()Z
    .registers 2

    .line 481
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist cancel()V
    .registers 2

    .line 1352
    iget-boolean v0, p0, Landroid/app/Dialog;->mCanceled:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    if-eqz v0, :cond_14

    .line 1353
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 1355
    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1357
    :cond_14
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1358
    return-void
.end method

.method public whitelist closeOptionsMenu()V
    .registers 3

    .line 1102
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1103
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 1105
    :cond_e
    return-void
.end method

.method public whitelist create()V
    .registers 2

    .line 300
    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v0, :cond_8

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 303
    :cond_8
    return-void
.end method

.method public whitelist dismiss()V
    .registers 3

    .line 380
    iget-object v0, p0, Landroid/app/Dialog;->mDismissOverride:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 381
    iget-object v0, p0, Landroid/app/Dialog;->mDismissOverride:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 382
    return-void

    .line 385
    :cond_a
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1a

    .line 386
    invoke-virtual {p0}, Landroid/app/Dialog;->dismissDialog()V

    goto :goto_21

    .line 388
    :cond_1a
    iget-object v0, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    :goto_21
    return-void
.end method

.method greylist dismissDialog()V
    .registers 5

    .line 394
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_56

    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    if-nez v0, :cond_9

    goto :goto_56

    .line 398
    :cond_9
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 399
    const-string v0, "Dialog"

    const-string v1, "Tried to dismissDialog() but the Dialog\'s window was already destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void

    .line 404
    :cond_19
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1b
    iget-object v2, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_3c

    .line 406
    iget-object v2, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_2b

    .line 407
    iget-object v2, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 409
    :cond_2b
    iput-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 410
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    .line 411
    invoke-virtual {p0}, Landroid/app/Dialog;->onStop()V

    .line 412
    iput-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    .line 414
    invoke-direct {p0}, Landroid/app/Dialog;->sendDismissMessage()V

    .line 415
    nop

    .line 416
    return-void

    .line 406
    :catchall_3c
    move-exception v2

    iget-object v3, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_46

    .line 407
    iget-object v3, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    .line 409
    :cond_46
    iput-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 410
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    .line 411
    invoke-virtual {p0}, Landroid/app/Dialog;->onStop()V

    .line 412
    iput-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    .line 414
    invoke-direct {p0}, Landroid/app/Dialog;->sendDismissMessage()V

    .line 415
    throw v2

    .line 395
    :cond_56
    :goto_56
    return-void
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 973
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 974
    const/4 v0, 0x1

    return v0

    .line 976
    :cond_a
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 898
    iget-object v0, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v0, p0, v2, p1}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 899
    return v1

    .line 901
    :cond_12
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 902
    return v1

    .line 904
    :cond_1b
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_26

    .line 905
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 904
    :goto_27
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 919
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 920
    const/4 v0, 0x1

    return v0

    .line 922
    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Dialog;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o dispatchOnCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 435
    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v0, :cond_a

    .line 436
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    .line 439
    :cond_a
    return-void
.end method

.method public whitelist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 981
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 982
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 984
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 985
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_28

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v3, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    move v1, v2

    .line 987
    .local v1, "isFullScreen":Z
    :goto_29
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 989
    return v2
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 937
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 938
    const/4 v0, 0x1

    return v0

    .line 940
    :cond_a
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 955
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 956
    const/4 v0, 0x1

    return v0

    .line 958
    :cond_a
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist findViewById(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 572
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getActionBar()Landroid/app/ActionBar;
    .registers 2

    .line 259
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method public final whitelist getContext()Landroid/content/Context;
    .registers 2

    .line 250
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getCurrentFocus()Landroid/view/View;
    .registers 2

    .line 549
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 1319
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;
    .registers 2

    .line 1514
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getOwnerActivity()Landroid/app/Activity;
    .registers 2

    .line 283
    iget-object v0, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final whitelist getSearchEvent()Landroid/view/SearchEvent;
    .registers 2

    .line 1193
    iget-object v0, p0, Landroid/app/Dialog;->mSearchEvent:Landroid/view/SearchEvent;

    return-object v0
.end method

.method public final whitelist getVolumeControlStream()I
    .registers 2

    .line 1475
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public whitelist getWindow()Landroid/view/Window;
    .registers 2

    .line 536
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public whitelist hide()V
    .registers 3

    .line 367
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 368
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 370
    :cond_b
    return-void
.end method

.method public whitelist invalidateOptionsMenu()V
    .registers 3

    .line 1111
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1112
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 1114
    :cond_e
    return-void
.end method

.method public whitelist isShowing()Z
    .registers 3

    .line 290
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    :cond_5
    goto :goto_f

    :cond_6
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v1, 0x1

    :goto_f
    return v1
.end method

.method public whitelist onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 1235
    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-ne p1, v0, :cond_7

    .line 1236
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    .line 1238
    :cond_7
    return-void
.end method

.method public whitelist onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 1223
    iput-object p1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    .line 1224
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .registers 1

    .line 875
    return-void
.end method

.method public whitelist onBackPressed()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 773
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_7

    .line 774
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 776
    :cond_7
    return-void
.end method

.method public whitelist onContentChanged()V
    .registers 1

    .line 867
    return-void
.end method

.method public whitelist onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 1148
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onContextMenuClosed(Landroid/view/Menu;)V
    .registers 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1155
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 450
    return-void
.end method

.method public whitelist onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1121
    return-void
.end method

.method public whitelist onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1061
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 1005
    if-nez p1, :cond_7

    .line 1006
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1009
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCreatePanelView(I)Landroid/view/View;
    .registers 3
    .param p1, "featureId"    # I

    .line 997
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 1

    .line 879
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 855
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 677
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    .line 678
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 679
    return v1

    .line 681
    :cond_8
    const/16 v0, 0x6f

    if-ne p1, v0, :cond_26

    .line 682
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_17

    .line 683
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 684
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 685
    return v1

    .line 686
    :cond_17
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->shouldCloseOnTouchOutside()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 687
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 688
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 689
    return v1

    .line 693
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 703
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 789
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 718
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_24

    .line 719
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_26

    goto :goto_24

    .line 728
    :sswitch_11
    return v0

    .line 721
    :sswitch_12
    iget-object v1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 722
    invoke-virtual {p0}, Landroid/app/Dialog;->allowsRegisterDefaultOnBackInvokedCallback()Z

    move-result v1

    if-nez v1, :cond_24

    .line 723
    :cond_20
    invoke-virtual {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 724
    return v0

    .line 731
    :cond_24
    :goto_24
    const/4 v0, 0x0

    return v0

    :sswitch_data_26
    .sparse-switch
        0x4 -> :sswitch_12
        0x6f -> :sswitch_11
    .end sparse-switch
.end method

.method public whitelist onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 1039
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onMenuOpened(ILandroid/view/Menu;)Z
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 1028
    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p1, v0, :cond_a

    .line 1029
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 1031
    :cond_a
    return v1
.end method

.method public whitelist onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 1080
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1087
    return-void
.end method

.method public whitelist onPanelClosed(ILandroid/view/Menu;)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 1047
    const/16 v0, 0x8

    if-ne p1, v0, :cond_a

    .line 1048
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 1050
    :cond_a
    return-void
.end method

.method public whitelist onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1073
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 1017
    const/4 v0, 0x1

    if-nez p1, :cond_12

    .line 1018
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    .line 1020
    :cond_12
    return v0
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 515
    const-string v0, "android:dialogHierarchy"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 516
    .local v0, "dialogHierarchyState":Landroid/os/Bundle;
    if-nez v0, :cond_9

    .line 518
    return-void

    .line 520
    :cond_9
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 521
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 522
    const-string v1, "android:dialogShowing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 523
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 525
    :cond_1c
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .line 496
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 497
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android:dialogShowing"

    iget-boolean v2, p0, Landroid/app/Dialog;->mShowing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 498
    iget-boolean v1, p0, Landroid/app/Dialog;->mCreated:Z

    if-eqz v1, :cond_1b

    .line 499
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android:dialogHierarchy"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 501
    :cond_1b
    return-object v0
.end method

.method public whitelist onSearchRequested()Z
    .registers 8

    .line 1171
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 1172
    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/SearchManager;

    .line 1175
    .local v1, "searchManager":Landroid/app/SearchManager;
    invoke-direct {p0}, Landroid/app/Dialog;->getAssociatedActivity()Landroid/content/ComponentName;

    move-result-object v4

    .line 1176
    .local v4, "appName":Landroid/content/ComponentName;
    if-eqz v4, :cond_24

    invoke-virtual {v1, v4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1177
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 1178
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1179
    const/4 v0, 0x1

    return v0

    .line 1181
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onSearchRequested(Landroid/view/SearchEvent;)Z
    .registers 3
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .line 1162
    iput-object p1, p0, Landroid/app/Dialog;->mSearchEvent:Landroid/view/SearchEvent;

    .line 1163
    invoke-virtual {p0}, Landroid/app/Dialog;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected whitelist onStart()V
    .registers 3

    .line 456
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 457
    :cond_a
    invoke-virtual {p0}, Landroid/app/Dialog;->allowsRegisterDefaultOnBackInvokedCallback()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 458
    invoke-static {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 460
    new-instance v0, Landroid/app/Dialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/app/Dialog$$ExternalSyntheticLambda2;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Landroid/app/Dialog;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 461
    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 463
    :cond_2c
    return-void
.end method

.method protected whitelist onStop()V
    .registers 3

    .line 469
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 470
    :cond_a
    iget-object v0, p0, Landroid/app/Dialog;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_1a

    .line 471
    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 474
    :cond_1a
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 803
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 804
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 805
    const/4 v0, 0x1

    return v0

    .line 808
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 826
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 860
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 861
    iget-object v0, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    :cond_b
    return-void
.end method

.method public greylist-max-o onWindowDismissed(ZZ)V
    .registers 3
    .param p1, "finishTask"    # Z
    .param p2, "suppressWindowTransition"    # Z

    .line 884
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 885
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasFocus"    # Z

    .line 871
    return-void
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 1198
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    if-nez v0, :cond_f

    .line 1199
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 1201
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 5
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 1207
    const/4 v0, 0x0

    :try_start_1
    iput p2, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 1208
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    .line 1210
    iput v0, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 1208
    return-object v1

    .line 1210
    :catchall_a
    move-exception v1

    iput v0, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 1211
    throw v1
.end method

.method public whitelist openContextMenu(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 1141
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 1142
    return-void
.end method

.method public whitelist openOptionsMenu()V
    .registers 4

    .line 1093
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1094
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    .line 1096
    :cond_f
    return-void
.end method

.method public whitelist registerForContextMenu(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 1127
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1128
    return-void
.end method

.method public final whitelist requestWindowFeature(I)Z
    .registers 3
    .param p1, "featureId"    # I

    .line 1283
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist requireViewById(I)Landroid/view/View;
    .registers 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 592
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 593
    .local v0, "view":Landroid/view/View;, "TT;"
    if-eqz v0, :cond_7

    .line 596
    return-object v0

    .line 594
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this Dialog"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setCancelMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1390
    iput-object p1, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 1391
    return-void
.end method

.method public whitelist setCancelable(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 1327
    iput-boolean p1, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 1328
    return-void
.end method

.method public whitelist setCanceledOnTouchOutside(Z)V
    .registers 3
    .param p1, "cancel"    # Z

    .line 1339
    if-eqz p1, :cond_9

    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-nez v0, :cond_9

    .line 1340
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 1343
    :cond_9
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 1344
    return-void
.end method

.method public whitelist setContentView(I)V
    .registers 3
    .param p1, "layoutResID"    # I

    .line 606
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 607
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 617
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 618
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 629
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    return-void
.end method

.method public whitelist setDismissMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1427
    iput-object p1, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    .line 1428
    return-void
.end method

.method public blacklist setDismissOverride(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "override"    # Ljava/lang/Runnable;

    .line 1442
    iput-object p1, p0, Landroid/app/Dialog;->mDismissOverride:Ljava/lang/Runnable;

    .line 1443
    return-void
.end method

.method public final whitelist setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1307
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 1308
    return-void
.end method

.method public final whitelist setFeatureDrawableAlpha(II)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .line 1315
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 1316
    return-void
.end method

.method public final whitelist setFeatureDrawableResource(II)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .line 1291
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 1292
    return-void
.end method

.method public final whitelist setFeatureDrawableUri(ILandroid/net/Uri;)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1299
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    .line 1300
    return-void
.end method

.method public whitelist setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 1372
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 1377
    if-eqz p1, :cond_11

    .line 1378
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    goto :goto_14

    .line 1380
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 1382
    :goto_14
    return-void

    .line 1373
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCancelListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and can not be replaced."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 1398
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 1403
    if-eqz p1, :cond_11

    .line 1404
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    goto :goto_14

    .line 1406
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    .line 1408
    :goto_14
    return-void

    .line 1399
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDismissListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and can not be replaced."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .registers 2
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .line 1482
    iput-object p1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 1483
    return-void
.end method

.method public whitelist setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/content/DialogInterface$OnShowListener;

    .line 1415
    if-eqz p1, :cond_d

    .line 1416
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    goto :goto_10

    .line 1418
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    .line 1420
    :goto_10
    return-void
.end method

.method public final whitelist setOwnerActivity(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 269
    iput-object p1, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    .line 271
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 272
    return-void
.end method

.method public whitelist setTitle(I)V
    .registers 3
    .param p1, "titleId"    # I

    .line 660
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 661
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 649
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 650
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 651
    return-void
.end method

.method public final whitelist setVolumeControlStream(I)V
    .registers 3
    .param p1, "streamType"    # I

    .line 1468
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 1469
    return-void
.end method

.method public whitelist show()V
    .registers 5

    .line 312
    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1e

    .line 313
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_1d

    .line 314
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 315
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 317
    :cond_18
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    :cond_1d
    return-void

    .line 322
    :cond_1e
    iput-boolean v1, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 324
    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v0, :cond_29

    .line 325
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    goto :goto_3c

    .line 329
    :cond_29
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 330
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 333
    .end local v0    # "config":Landroid/content/res/Configuration;
    :goto_3c
    invoke-virtual {p0}, Landroid/app/Dialog;->onStart()V

    .line 334
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 336
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_6e

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 337
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 338
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultIcon(I)V

    .line 339
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultLogo(I)V

    .line 340
    new-instance v1, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v1, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    .line 343
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_6e
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 344
    .local v0, "l":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    .line 345
    .local v1, "restoreSoftInputMode":Z
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_82

    .line 347
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 349
    const/4 v1, 0x1

    .line 352
    :cond_82
    iget-object v2, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    if-eqz v1, :cond_91

    .line 354
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0x101

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 358
    :cond_91
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/Dialog;->mShowing:Z

    .line 360
    invoke-direct {p0}, Landroid/app/Dialog;->sendShowMessage()V

    .line 361
    return-void
.end method

.method public greylist-max-o takeCancelAndDismissListeners(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Z
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cancel"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p3, "dismiss"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 1448
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1449
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    goto :goto_11

    .line 1450
    :cond_8
    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_11

    goto :goto_1b

    .line 1454
    :cond_11
    :goto_11
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1455
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1456
    iput-object p1, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    .line 1458
    const/4 v0, 0x1

    return v0

    .line 1451
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist takeKeyEvents(Z)V
    .registers 3
    .param p1, "get"    # Z

    .line 1268
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    .line 1269
    return-void
.end method

.method public whitelist unregisterForContextMenu(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 1134
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1135
    return-void
.end method
