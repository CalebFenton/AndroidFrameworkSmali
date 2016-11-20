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
        Landroid/app/Dialog$-void__init__android_content_Context_context_int_themeResId_boolean_createContextThemeWrapper_LambdaImpl0;,
        Landroid/app/Dialog$ListenersHandler;
    }
.end annotation


# static fields
.field private static final CANCEL:I = 0x44

.field private static final DIALOG_HIERARCHY_TAG:Ljava/lang/String; = "android:dialogHierarchy"

.field private static final DIALOG_SHOWING_TAG:Ljava/lang/String; = "android:dialogShowing"

.field private static final DISMISS:I = 0x43

.field private static final SHOW:I = 0x45

.field private static final TAG:Ljava/lang/String; = "Dialog"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeTypeStarting:I

.field private mCancelAndDismissTaken:Ljava/lang/String;

.field private mCancelMessage:Landroid/os/Message;

.field protected mCancelable:Z

.field private mCanceled:Z

.field final mContext:Landroid/content/Context;

.field private mCreated:Z

.field mDecor:Landroid/view/View;

.field private final mDismissAction:Ljava/lang/Runnable;

.field private mDismissMessage:Landroid/os/Message;

.field private final mHandler:Landroid/os/Handler;

.field private final mListenersHandler:Landroid/os/Handler;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mOwnerActivity:Landroid/app/Activity;

.field private mSearchEvent:Landroid/view/SearchEvent;

.field private mShowMessage:Landroid/os/Message;

.field private mShowing:Z

.field final mWindow:Landroid/view/Window;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 147
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    #@5
    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    #@0
    .prologue
    .line 166
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    #@4
    .line 165
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "createContextThemeWrapper"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 108
    iput-boolean v4, p0, Landroid/app/Dialog;->mCancelable:Z

    #@8
    .line 117
    iput-boolean v3, p0, Landroid/app/Dialog;->mCreated:Z

    #@a
    .line 118
    iput-boolean v3, p0, Landroid/app/Dialog;->mShowing:Z

    #@c
    .line 119
    iput-boolean v3, p0, Landroid/app/Dialog;->mCanceled:Z

    #@e
    .line 121
    new-instance v2, Landroid/os/Handler;

    #@10
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    #@13
    iput-object v2, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    #@15
    .line 133
    iput v3, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    #@17
    .line 135
    new-instance v2, Landroid/app/Dialog$-void__init__android_content_Context_context_int_themeResId_boolean_createContextThemeWrapper_LambdaImpl0;

    #@19
    invoke-direct {v2, p0}, Landroid/app/Dialog$-void__init__android_content_Context_context_int_themeResId_boolean_createContextThemeWrapper_LambdaImpl0;-><init>(Landroid/app/Dialog;)V

    #@1c
    iput-object v2, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    #@1e
    .line 170
    if-eqz p3, :cond_1

    #@20
    .line 171
    if-nez p2, :cond_0

    #@22
    .line 172
    new-instance v0, Landroid/util/TypedValue;

    #@24
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@27
    .line 173
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@2a
    move-result-object v2

    #@2b
    const v3, 0x1010308

    #@2e
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@31
    .line 174
    iget p2, v0, Landroid/util/TypedValue;->resourceId:I

    #@33
    .line 176
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    #@35
    invoke-direct {v2, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@38
    iput-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    #@3a
    .line 181
    :goto_0
    const-string/jumbo v2, "window"

    #@3d
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@40
    move-result-object v2

    #@41
    check-cast v2, Landroid/view/WindowManager;

    #@43
    iput-object v2, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    #@45
    .line 183
    new-instance v1, Lcom/android/internal/policy/PhoneWindow;

    #@47
    iget-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    #@49
    invoke-direct {v1, v2}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    #@4c
    .line 184
    .local v1, "w":Landroid/view/Window;
    iput-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@4e
    .line 185
    invoke-virtual {v1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    #@51
    .line 186
    invoke-virtual {v1, p0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    #@54
    .line 187
    iget-object v2, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    #@56
    invoke-virtual {v1, v2, v5, v5}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    #@59
    .line 188
    const/16 v2, 0x11

    #@5b
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    #@5e
    .line 190
    new-instance v2, Landroid/app/Dialog$ListenersHandler;

    #@60
    invoke-direct {v2, p0}, Landroid/app/Dialog$ListenersHandler;-><init>(Landroid/app/Dialog;)V

    #@63
    iput-object v2, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    #@65
    .line 169
    return-void

    #@66
    .line 178
    .end local v1    # "w":Landroid/view/Window;
    :cond_1
    iput-object p1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    #@68
    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    #@0
    .prologue
    .line 207
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    #@3
    .line 208
    iput-boolean p2, p0, Landroid/app/Dialog;->mCancelable:Z

    #@5
    .line 209
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    #@8
    .line 206
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelCallback"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    #@3
    .line 201
    iput-boolean p2, p0, Landroid/app/Dialog;->mCancelable:Z

    #@5
    .line 202
    iput-object p3, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    #@7
    .line 199
    return-void
.end method

.method private getAssociatedActivity()Landroid/content/ComponentName;
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1100
    iget-object v0, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    #@3
    .line 1101
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    .line 1102
    :goto_0
    if-nez v0, :cond_2

    #@9
    if-eqz v1, :cond_2

    #@b
    .line 1103
    instance-of v3, v1, Landroid/app/Activity;

    #@d
    if-eqz v3, :cond_0

    #@f
    move-object v0, v1

    #@10
    .line 1104
    check-cast v0, Landroid/app/Activity;

    #@12
    goto :goto_0

    #@13
    .line 1106
    :cond_0
    instance-of v3, v1, Landroid/content/ContextWrapper;

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 1107
    check-cast v1, Landroid/content/ContextWrapper;

    #@19
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "context":Landroid/content/Context;
    goto :goto_0

    #@1e
    .line 1108
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    const/4 v1, 0x0

    #@1f
    .local v1, "context":Landroid/content/Context;
    goto :goto_0

    #@20
    .line 1111
    .end local v1    # "context":Landroid/content/Context;
    :cond_2
    if-nez v0, :cond_3

    #@22
    :goto_1
    return-object v2

    #@23
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    #@26
    move-result-object v2

    #@27
    goto :goto_1
.end method

.method private sendDismissMessage()V
    .locals 1

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 374
    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    #@6
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@d
    .line 371
    :cond_0
    return-void
.end method

.method private sendShowMessage()V
    .locals 1

    #@0
    .prologue
    .line 379
    iget-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 381
    iget-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    #@6
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@d
    .line 378
    :cond_0
    return-void
.end method


# virtual methods
.method synthetic -android_app_Dialog-mthref-0()V
    .locals 0

    #@0
    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/app/Dialog;->dismissDialog()V

    #@3
    return-void
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 540
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@5
    .line 539
    return-void
.end method

.method public cancel()V
    .locals 1

    #@0
    .prologue
    .line 1208
    iget-boolean v0, p0, Landroid/app/Dialog;->mCanceled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1209
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Landroid/app/Dialog;->mCanceled:Z

    #@b
    .line 1211
    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    #@d
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@14
    .line 1213
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    #@17
    .line 1207
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 958
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@3
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 959
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@b
    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    #@e
    .line 957
    :cond_0
    return-void
.end method

.method public create()V
    .locals 1

    #@0
    .prologue
    .line 268
    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 269
    const/4 v0, 0x0

    #@5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    #@8
    .line 267
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    #@0
    .prologue
    .line 339
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    #@6
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@9
    move-result-object v1

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 340
    invoke-virtual {p0}, Landroid/app/Dialog;->dismissDialog()V

    #@f
    .line 338
    :goto_0
    return-void

    #@10
    .line 342
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    #@12
    iget-object v1, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    #@14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@17
    goto :goto_0
.end method

.method dismissDialog()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 347
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 351
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@c
    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 352
    const-string/jumbo v0, "Dialog"

    #@15
    const-string/jumbo v1, "Tried to dismissDialog() but the Dialog\'s window was already destroyed!"

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 353
    return-void

    #@1c
    .line 348
    :cond_0
    return-void

    #@1d
    .line 357
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    #@1f
    iget-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    #@21
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 359
    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 360
    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    #@2a
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    #@2d
    .line 362
    :cond_2
    iput-object v2, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    #@2f
    .line 363
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@31
    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    #@34
    .line 364
    invoke-virtual {p0}, Landroid/app/Dialog;->onStop()V

    #@37
    .line 365
    iput-boolean v3, p0, Landroid/app/Dialog;->mShowing:Z

    #@39
    .line 367
    invoke-direct {p0}, Landroid/app/Dialog;->sendDismissMessage()V

    #@3c
    .line 346
    return-void

    #@3d
    .line 358
    :catchall_0
    move-exception v0

    #@3e
    .line 359
    iget-object v1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    #@40
    if-eqz v1, :cond_3

    #@42
    .line 360
    iget-object v1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    #@44
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    #@47
    .line 362
    :cond_3
    iput-object v2, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    #@49
    .line 363
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@4b
    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    #@4e
    .line 364
    invoke-virtual {p0}, Landroid/app/Dialog;->onStop()V

    #@51
    .line 365
    iput-boolean v3, p0, Landroid/app/Dialog;->mShowing:Z

    #@53
    .line 367
    invoke-direct {p0}, Landroid/app/Dialog;->sendDismissMessage()V

    #@56
    .line 358
    throw v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 829
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 830
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 832
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 754
    iget-object v1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    #@8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@b
    move-result v2

    #@c
    invoke-interface {v1, p0, v2, p1}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 755
    return v3

    #@13
    .line 757
    :cond_0
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@15
    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 758
    return v3

    #@1c
    .line 760
    :cond_1
    iget-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 761
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    #@22
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@25
    move-result-object v0

    #@26
    .line 760
    :cond_2
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    #@29
    move-result v0

    #@2a
    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 775
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 776
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 778
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@d
    move-result v0

    #@e
    invoke-virtual {p0, v0, p1}, Landroid/app/Dialog;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method dispatchOnCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 388
    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 389
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    #@7
    .line 390
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    #@a
    .line 387
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 837
    invoke-virtual {p0}, Landroid/app/Dialog;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    #@d
    .line 838
    iget-object v3, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    #@16
    .line 840
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@1d
    move-result-object v1

    #@1e
    .line 841
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@20
    if-ne v3, v4, :cond_1

    #@22
    .line 842
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@24
    if-ne v3, v4, :cond_0

    #@26
    const/4 v0, 0x1

    #@27
    .line 843
    .local v0, "isFullScreen":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    #@2a
    .line 845
    return v2

    #@2b
    .end local v0    # "isFullScreen":Z
    :cond_0
    move v0, v2

    #@2c
    .line 842
    goto :goto_0

    #@2d
    :cond_1
    move v0, v2

    #@2e
    .line 841
    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 793
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 794
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 796
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 811
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 812
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 814
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 496
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    #@2
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 484
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@7
    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    #@0
    .prologue
    .line 1175
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getOwnerActivity()Landroid/app/Activity;
    .locals 1

    #@0
    .prologue
    .line 251
    iget-object v0, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    #@2
    return-object v0
.end method

.method public final getSearchEvent()Landroid/view/SearchEvent;
    .locals 1

    #@0
    .prologue
    .line 1049
    iget-object v0, p0, Landroid/app/Dialog;->mSearchEvent:Landroid/view/SearchEvent;

    #@2
    return-object v0
.end method

.method public final getVolumeControlStream()I
    .locals 1

    #@0
    .prologue
    .line 1316
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    #@0
    .prologue
    .line 471
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@2
    return-object v0
.end method

.method public hide()V
    .locals 2

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 327
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    #@6
    const/16 v1, 0x8

    #@8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@b
    .line 325
    :cond_0
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 967
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@3
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 968
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@b
    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    #@e
    .line 966
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    #@0
    .prologue
    .line 258
    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    #@2
    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    .line 1091
    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 1092
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    #@7
    .line 1090
    :cond_0
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    .line 1079
    iput-object p1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    #@2
    .line 1078
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    #@0
    .prologue
    .line 730
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    #@0
    .prologue
    .line 629
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 630
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    #@7
    .line 628
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    #@0
    .prologue
    .line 722
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 1004
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 1010
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 402
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    #@0
    .prologue
    .line 976
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 917
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 861
    if-nez p1, :cond_0

    #@3
    .line 862
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 865
    :cond_0
    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    #@0
    .prologue
    .line 853
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    #@0
    .prologue
    .line 734
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 711
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 576
    const/4 v0, 0x4

    #@1
    if-ne p1, v0, :cond_0

    #@3
    .line 577
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    #@6
    .line 578
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 581
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 591
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 620
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 645
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 605
    const/4 v0, 0x4

    #@1
    if-ne p1, v0, :cond_0

    #@3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 606
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 610
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0

    #@11
    .line 607
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->onBackPressed()V

    #@14
    .line 608
    const/4 v0, 0x1

    #@15
    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 895
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 884
    const/16 v0, 0x8

    #@3
    if-ne p1, v0, :cond_0

    #@5
    .line 885
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    #@7
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    #@a
    .line 887
    :cond_0
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 936
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 942
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 903
    const/16 v0, 0x8

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 904
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    #@a
    .line 902
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 929
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 873
    if-nez p1, :cond_1

    #@3
    if-eqz p3, :cond_1

    #@5
    .line 874
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    #@e
    move-result v0

    #@f
    :cond_0
    return v0

    #@10
    .line 876
    :cond_1
    const/4 v0, 0x1

    #@11
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 450
    const-string/jumbo v1, "android:dialogHierarchy"

    #@3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@6
    move-result-object v0

    #@7
    .line 451
    .local v0, "dialogHierarchyState":Landroid/os/Bundle;
    if-nez v0, :cond_0

    #@9
    .line 453
    return-void

    #@a
    .line 455
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    #@d
    .line 456
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@f
    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    #@12
    .line 457
    const-string/jumbo v1, "android:dialogShowing"

    #@15
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 458
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    #@1e
    .line 449
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    #@0
    .prologue
    .line 431
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 432
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "android:dialogShowing"

    #@8
    iget-boolean v2, p0, Landroid/app/Dialog;->mShowing:Z

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@d
    .line 433
    iget-boolean v1, p0, Landroid/app/Dialog;->mCreated:Z

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 434
    const-string/jumbo v1, "android:dialogHierarchy"

    #@14
    iget-object v2, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@16
    invoke-virtual {v2}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@1d
    .line 436
    :cond_0
    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1027
    iget-object v4, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    #@4
    .line 1028
    const-string/jumbo v5, "search"

    #@7
    .line 1027
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/app/SearchManager;

    #@d
    .line 1031
    .local v0, "searchManager":Landroid/app/SearchManager;
    invoke-direct {p0}, Landroid/app/Dialog;->getAssociatedActivity()Landroid/content/ComponentName;

    #@10
    move-result-object v3

    #@11
    .line 1032
    .local v3, "appName":Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    #@13
    invoke-virtual {v0, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    #@16
    move-result-object v4

    #@17
    if-eqz v4, :cond_0

    #@19
    move-object v4, v1

    #@1a
    move v5, v2

    #@1b
    .line 1033
    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    #@1e
    .line 1034
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    #@21
    .line 1035
    const/4 v1, 0x1

    #@22
    return v1

    #@23
    .line 1037
    :cond_0
    return v2
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    #@0
    .prologue
    .line 1018
    iput-object p1, p0, Landroid/app/Dialog;->mSearchEvent:Landroid/view/SearchEvent;

    #@2
    .line 1019
    invoke-virtual {p0}, Landroid/app/Dialog;->onSearchRequested()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected onStart()V
    .locals 2

    #@0
    .prologue
    .line 409
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    #@a
    .line 408
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    #@0
    .prologue
    .line 416
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    #@a
    .line 415
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 659
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@a
    iget-object v1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 660
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    #@15
    .line 661
    const/4 v0, 0x1

    #@16
    return v0

    #@17
    .line 664
    :cond_0
    const/4 v0, 0x0

    #@18
    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 682
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 716
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 717
    iget-object v0, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    #@6
    iget-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    #@8
    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@b
    .line 715
    :cond_0
    return-void
.end method

.method public onWindowDismissed(Z)V
    .locals 0
    .param p1, "finishTask"    # Z

    #@0
    .prologue
    .line 740
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    #@3
    .line 739
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    #@0
    .prologue
    .line 726
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1054
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget v0, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1055
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    #@b
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 1057
    :cond_0
    return-object v1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1063
    :try_start_0
    iput p2, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    #@3
    .line 1064
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    .line 1066
    iput v1, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    #@9
    .line 1064
    return-object v0

    #@a
    .line 1065
    :catchall_0
    move-exception v0

    #@b
    .line 1066
    iput v1, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    #@d
    .line 1065
    throw v0
.end method

.method public openContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 997
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    #@3
    .line 996
    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 949
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@3
    invoke-virtual {v0, v2}, Landroid/view/Window;->hasFeature(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 950
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    #@f
    .line 948
    :cond_0
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 983
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    #@3
    .line 982
    return-void
.end method

.method public final requestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    #@0
    .prologue
    .line 1139
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public setCancelMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1246
    iput-object p1, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    #@2
    .line 1245
    return-void
.end method

.method public setCancelable(Z)V
    .locals 0
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 1183
    iput-boolean p1, p0, Landroid/app/Dialog;->mCancelable:Z

    #@2
    .line 1182
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    #@0
    .prologue
    .line 1195
    if-eqz p1, :cond_0

    #@2
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1199
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@8
    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    #@b
    .line 1194
    return-void

    #@c
    .line 1196
    :cond_1
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    #@f
    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    #@0
    .prologue
    .line 506
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    #@5
    .line 505
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 517
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    #@5
    .line 516
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 529
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@5
    .line 528
    return-void
.end method

.method public setDismissMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1283
    iput-object p1, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    #@2
    .line 1282
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1163
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    #@7
    .line 1162
    return-void
.end method

.method public final setFeatureDrawableAlpha(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    #@0
    .prologue
    .line 1171
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    #@7
    .line 1170
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    #@0
    .prologue
    .line 1147
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    #@7
    .line 1146
    return-void
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1155
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    #@7
    .line 1154
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1228
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1229
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    .line 1230
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "OnCancelListener is already taken by "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    .line 1231
    iget-object v2, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    #@15
    .line 1230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 1231
    const-string/jumbo v2, " and can not be replaced."

    #@1c
    .line 1230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 1229
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 1233
    :cond_0
    if-eqz p1, :cond_1

    #@2a
    .line 1234
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    #@2c
    const/16 v1, 0x44

    #@2e
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    #@34
    .line 1227
    :goto_0
    return-void

    #@35
    .line 1236
    :cond_1
    iput-object v1, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    #@37
    goto :goto_0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1254
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1255
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    .line 1256
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "OnDismissListener is already taken by "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    .line 1257
    iget-object v2, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    #@15
    .line 1256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 1257
    const-string/jumbo v2, " and can not be replaced."

    #@1c
    .line 1256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 1255
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 1259
    :cond_0
    if-eqz p1, :cond_1

    #@2a
    .line 1260
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    #@2c
    const/16 v1, 0x43

    #@2e
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    #@34
    .line 1253
    :goto_0
    return-void

    #@35
    .line 1262
    :cond_1
    iput-object v1, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    #@37
    goto :goto_0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 0
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    #@0
    .prologue
    .line 1323
    iput-object p1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    #@2
    .line 1322
    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/DialogInterface$OnShowListener;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1271
    if-eqz p1, :cond_0

    #@3
    .line 1272
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    #@5
    const/16 v1, 0x45

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    #@d
    .line 1270
    :goto_0
    return-void

    #@e
    .line 1274
    :cond_0
    iput-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    #@10
    goto :goto_0
.end method

.method public final setOwnerActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 237
    iput-object p1, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    #@2
    .line 239
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    #@8
    invoke-virtual {v1}, Landroid/app/Activity;->getVolumeControlStream()I

    #@b
    move-result v1

    #@c
    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    #@f
    .line 236
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    #@0
    .prologue
    .line 560
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    #@9
    .line 559
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 549
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    #@5
    .line 550
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@7
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@e
    .line 548
    return-void
.end method

.method public final setVolumeControlStream(I)V
    .locals 1
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 1309
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    #@7
    .line 1308
    return-void
.end method

.method public show()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/16 v5, 0x8

    #@3
    const/4 v4, 0x0

    #@4
    .line 280
    iget-boolean v3, p0, Landroid/app/Dialog;->mShowing:Z

    #@6
    if-eqz v3, :cond_2

    #@8
    .line 281
    iget-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 282
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@e
    invoke-virtual {v3, v5}, Landroid/view/Window;->hasFeature(I)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 283
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@16
    invoke-virtual {v3, v5}, Landroid/view/Window;->invalidatePanelMenu(I)V

    #@19
    .line 285
    :cond_0
    iget-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    #@1b
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    #@1e
    .line 287
    :cond_1
    return-void

    #@1f
    .line 290
    :cond_2
    iput-boolean v4, p0, Landroid/app/Dialog;->mCanceled:Z

    #@21
    .line 292
    iget-boolean v3, p0, Landroid/app/Dialog;->mCreated:Z

    #@23
    if-nez v3, :cond_3

    #@25
    .line 293
    invoke-virtual {p0, v6}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    #@28
    .line 296
    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->onStart()V

    #@2b
    .line 297
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@2d
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@30
    move-result-object v3

    #@31
    iput-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    #@33
    .line 299
    iget-object v3, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    #@35
    if-nez v3, :cond_4

    #@37
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@39
    invoke-virtual {v3, v5}, Landroid/view/Window;->hasFeature(I)Z

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_4

    #@3f
    .line 300
    iget-object v3, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    #@41
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@44
    move-result-object v0

    #@45
    .line 301
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@47
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    #@49
    invoke-virtual {v3, v4}, Landroid/view/Window;->setDefaultIcon(I)V

    #@4c
    .line 302
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@4e
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    #@50
    invoke-virtual {v3, v4}, Landroid/view/Window;->setDefaultLogo(I)V

    #@53
    .line 303
    new-instance v3, Lcom/android/internal/app/WindowDecorActionBar;

    #@55
    invoke-direct {v3, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    #@58
    iput-object v3, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    #@5a
    .line 306
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@5c
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@5f
    move-result-object v1

    #@60
    .line 307
    .local v1, "l":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@62
    and-int/lit16 v3, v3, 0x100

    #@64
    if-nez v3, :cond_5

    #@66
    .line 309
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    #@68
    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@6b
    .line 310
    .local v2, "nl":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    #@6e
    .line 311
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@70
    or-int/lit16 v3, v3, 0x100

    #@72
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@74
    .line 313
    move-object v1, v2

    #@75
    .line 316
    .end local v2    # "nl":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    iget-object v3, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    #@77
    iget-object v4, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    #@79
    invoke-interface {v3, v4, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@7c
    .line 317
    const/4 v3, 0x1

    #@7d
    iput-boolean v3, p0, Landroid/app/Dialog;->mShowing:Z

    #@7f
    .line 319
    invoke-direct {p0}, Landroid/app/Dialog;->sendShowMessage()V

    #@82
    .line 279
    return-void
.end method

.method public takeCancelAndDismissListeners(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cancel"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p3, "dismiss"    # Landroid/content/DialogInterface$OnDismissListener;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1289
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 1290
    iput-object v1, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    #@7
    .line 1295
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    #@a
    .line 1296
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    #@d
    .line 1297
    iput-object p1, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    #@f
    .line 1299
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 1291
    :cond_1
    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    #@13
    if-nez v0, :cond_2

    #@15
    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 1292
    :cond_2
    const/4 v0, 0x0

    #@1a
    return v0
.end method

.method public takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    #@0
    .prologue
    .line 1124
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    #@5
    .line 1123
    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 990
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    #@4
    .line 989
    return-void
.end method
