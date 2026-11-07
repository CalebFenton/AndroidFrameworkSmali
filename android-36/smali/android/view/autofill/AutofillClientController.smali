.class public final Landroid/view/autofill/AutofillClientController;
.super Ljava/lang/Object;
.source "AutofillClientController.java"

# interfaces
.implements Landroid/view/autofill/AutofillManager$AutofillClient;
.implements Landroid/util/Dumpable;


# static fields
.field public static final blacklist AUTOFILL_RESET_NEEDED:Ljava/lang/String; = "@android:autofillResetNeeded"

.field public static final blacklist AUTO_FILL_AUTH_WHO_PREFIX:Ljava/lang/String; = "@android:autoFillAuth:"

.field public static final blacklist DEBUG:Z

.field public static final blacklist DUMPABLE_NAME:Ljava/lang/String; = "AutofillManager"

.field public static final blacklist LAST_AUTOFILL_ID:Ljava/lang/String; = "android:lastAutofillId"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "autofill_client"

.field private static final blacklist TAG:Ljava/lang/String; = "AutofillClientController"


# instance fields
.field private final blacklist mActivity:Landroid/app/Activity;

.field private blacklist mAutoFillIgnoreFirstResumePause:Z

.field private blacklist mAutoFillResetNeeded:Z

.field private blacklist mAutofillManager:Landroid/view/autofill/AutofillManager;

.field private blacklist mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

.field public blacklist mLastAutofillId:I

.field private blacklist mRelayoutFix:Ljava/lang/Boolean;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 54
    const-string v0, "autofill_client"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/view/autofill/AutofillClientController;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const v0, 0x3fffffff    # 1.9999999f

    iput v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    .line 81
    iput-object p1, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    .line 82
    return-void
.end method

.method private blacklist forResume()V
    .registers 5

    .line 176
    invoke-virtual {p0}, Landroid/view/autofill/AutofillClientController;->enableAutofillCompatibilityIfNeeded()V

    .line 177
    invoke-virtual {p0}, Landroid/view/autofill/AutofillClientController;->isRelayoutFixEnabled()Z

    move-result v0

    .line 178
    .local v0, "relayoutFix":Z
    const-string v1, "AutofillClientController"

    if-eqz v0, :cond_2f

    .line 179
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/autofill/AutofillManager;->shouldRetryFill()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 180
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_1e

    .line 181
    const-string v2, "forResume(): Autofill potential relayout. Retrying fill."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_1e
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/autofill/AutofillManager;->attemptRefill()Z

    goto :goto_2f

    .line 185
    :cond_26
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_2f

    .line 186
    const-string v2, "forResume(): Not attempting refill."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_2f
    :goto_2f
    iget-boolean v2, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v2, :cond_6b

    .line 192
    iget-boolean v2, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    if-nez v2, :cond_6b

    .line 193
    iget-object v2, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 194
    .local v2, "focus":Landroid/view/View;
    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Landroid/view/View;->canNotifyAutofillEnterExitEvent()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 202
    if-eqz v0, :cond_5b

    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/autofill/AutofillManager;->isAuthenticationPending()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 203
    sget-boolean v3, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_6b

    .line 204
    const-string v3, "forResume(): ignoring focus due to auth pending"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 207
    :cond_5b
    sget-boolean v3, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_64

    .line 208
    const-string v3, "forResume(): notifyViewEntered"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_64
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;)V

    .line 215
    .end local v2    # "focus":Landroid/view/View;
    :cond_6b
    :goto_6b
    return-void
.end method

.method private blacklist getAutofillManager()Landroid/view/autofill/AutofillManager;
    .registers 3

    .line 85
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    if-nez v0, :cond_10

    .line 86
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    iput-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    .line 88
    :cond_10
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    return-object v0
.end method


# virtual methods
.method public blacklist autofillClientAuthenticate(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .registers 14
    .param p1, "authenticationId"    # I
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "authenticateInline"    # Z

    .line 583
    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 584
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 586
    .local v0, "activityOptions":Landroid/app/ActivityOptions;
    iget-object v1, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    const-string v3, "@android:autoFillAuth:"

    .line 587
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8
    :try_end_11
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_11} :catch_1d

    .line 586
    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    move-object v2, p2

    move-object v5, p3

    .end local p1    # "authenticationId":I
    .end local p2    # "intent":Landroid/content/IntentSender;
    .end local p3    # "fillInIntent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/IntentSender;
    .local v4, "authenticationId":I
    .local v5, "fillInIntent":Landroid/content/Intent;
    :try_start_16
    invoke-virtual/range {v1 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    :try_end_19
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 590
    .end local v0    # "activityOptions":Landroid/app/ActivityOptions;
    goto :goto_3a

    .line 588
    :catch_1a
    move-exception v0

    move-object p1, v0

    goto :goto_22

    .end local v2    # "intent":Landroid/content/IntentSender;
    .end local v4    # "authenticationId":I
    .end local v5    # "fillInIntent":Landroid/content/Intent;
    .restart local p1    # "authenticationId":I
    .restart local p2    # "intent":Landroid/content/IntentSender;
    .restart local p3    # "fillInIntent":Landroid/content/Intent;
    :catch_1d
    move-exception v0

    move v4, p1

    move-object v2, p2

    move-object v5, p3

    move-object p1, v0

    .line 589
    .end local p2    # "intent":Landroid/content/IntentSender;
    .end local p3    # "fillInIntent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/IntentSender;
    .restart local v4    # "authenticationId":I
    .restart local v5    # "fillInIntent":Landroid/content/Intent;
    .local p1, "e":Landroid/content/IntentSender$SendIntentException;
    :goto_22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "authenticate() failed for intent:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AutofillClientController"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    .end local p1    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_3a
    return-void
.end method

.method public blacklist autofillClientDispatchUnhandledKey(Landroid/view/View;Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 555
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 556
    .local v0, "rootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_9

    .line 560
    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl;->dispatchKeyFromAutofill(Landroid/view/KeyEvent;)V

    .line 562
    :cond_9
    return-void
.end method

.method public blacklist autofillClientFindAutofillableViewsByTraversal()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v1

    .line 512
    .local v1, "roots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    const/4 v2, 0x0

    .local v2, "rootNum":I
    :goto_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 513
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    .line 515
    .local v3, "rootView":Landroid/view/View;
    if-eqz v3, :cond_29

    .line 516
    invoke-virtual {v3, v0}, Landroid/view/View;->findAutofillableViewsByTraversal(Ljava/util/List;)V

    .line 512
    .end local v3    # "rootView":Landroid/view/View;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 519
    .end local v2    # "rootNum":I
    :cond_2c
    return-object v0
.end method

.method public blacklist autofillClientFindViewByAccessibilityIdTraversal(II)Landroid/view/View;
    .registers 7
    .param p1, "viewId"    # I
    .param p2, "windowId"    # I

    .line 452
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    .line 453
    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v0

    .line 454
    .local v0, "roots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    const/4 v1, 0x0

    .local v1, "rootNum":I
    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 455
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    .line 456
    .local v2, "rootView":Landroid/view/View;
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v3

    if-ne v3, p2, :cond_2e

    .line 457
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 458
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_2e

    .line 459
    return-object v3

    .line 454
    .end local v2    # "rootView":Landroid/view/View;
    .end local v3    # "view":Landroid/view/View;
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 463
    .end local v1    # "rootNum":I
    :cond_31
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;
    .registers 7
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 468
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 470
    :cond_4
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v1

    .line 471
    .local v1, "roots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    const/4 v2, 0x0

    .local v2, "rootNum":I
    :goto_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 472
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    .line 474
    .local v3, "rootView":Landroid/view/View;
    if-eqz v3, :cond_30

    .line 475
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v4

    .line 476
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_30

    .line 477
    return-object v4

    .line 471
    .end local v3    # "rootView":Landroid/view/View;
    .end local v4    # "view":Landroid/view/View;
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 481
    .end local v2    # "rootNum":I
    :cond_33
    return-object v0
.end method

.method public blacklist autofillClientFindViewsByAutofillIdTraversal([Landroid/view/autofill/AutofillId;)[Landroid/view/View;
    .registers 9
    .param p1, "autofillIds"    # [Landroid/view/autofill/AutofillId;

    .line 486
    array-length v0, p1

    new-array v0, v0, [Landroid/view/View;

    .line 488
    .local v0, "views":[Landroid/view/View;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v1

    .line 490
    .local v1, "roots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    const/4 v2, 0x0

    .local v2, "rootNum":I
    :goto_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_42

    .line 491
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    .line 493
    .local v3, "rootView":Landroid/view/View;
    if-eqz v3, :cond_3f

    .line 494
    array-length v4, p1

    .line 495
    .local v4, "viewCount":I
    const/4 v5, 0x0

    .local v5, "viewNum":I
    :goto_26
    if-ge v5, v4, :cond_3f

    .line 496
    aget-object v6, p1, v5

    if-eqz v6, :cond_3c

    aget-object v6, v0, v5

    if-nez v6, :cond_3c

    .line 497
    aget-object v6, p1, v5

    .line 498
    invoke-virtual {v6}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v6

    .line 497
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v0, v5

    .line 495
    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 490
    .end local v3    # "rootView":Landroid/view/View;
    .end local v4    # "viewCount":I
    .end local v5    # "viewNum":I
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 503
    .end local v2    # "rootNum":I
    :cond_42
    return-object v0
.end method

.method public blacklist autofillClientGetActivityToken()Landroid/os/IBinder;
    .registers 2

    .line 422
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist autofillClientGetComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 417
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public blacklist autofillClientGetNextAutofillId()Landroid/view/autofill/AutofillId;
    .registers 3

    .line 402
    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillClientController;->getNextAutofillId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/autofill/AutofillId;-><init>(I)V

    return-object v0
.end method

.method public blacklist autofillClientGetViewVisibility([Landroid/view/autofill/AutofillId;)[Z
    .registers 8
    .param p1, "autofillIds"    # [Landroid/view/autofill/AutofillId;

    .line 427
    array-length v0, p1

    .line 428
    .local v0, "autofillIdCount":I
    new-array v1, v0, [Z

    .line 429
    .local v1, "visible":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_2e

    .line 430
    aget-object v3, p1, v2

    .line 431
    .local v3, "autofillId":Landroid/view/autofill/AutofillId;
    if-nez v3, :cond_e

    .line 432
    const/4 v4, 0x0

    aput-boolean v4, v1, v2

    .line 433
    goto :goto_2b

    .line 435
    :cond_e
    invoke-virtual {p0, v3}, Landroid/view/autofill/AutofillClientController;->autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v4

    .line 436
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_2b

    .line 437
    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v5

    if-nez v5, :cond_21

    .line 438
    invoke-virtual {v4}, Landroid/view/View;->isVisibleToUser()Z

    move-result v5

    aput-boolean v5, v1, v2

    goto :goto_2b

    .line 440
    :cond_21
    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->isVisibleToUserForAutofill(I)Z

    move-result v5

    aput-boolean v5, v1, v2

    .line 429
    .end local v3    # "autofillId":Landroid/view/autofill/AutofillId;
    .end local v4    # "view":Landroid/view/View;
    :cond_2b
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 444
    .end local v2    # "i":I
    :cond_2e
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_4e

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autofillClientGetViewVisibility(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillClientController"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_4e
    return-object v1
.end method

.method public blacklist autofillClientIsCompatibilityModeEnabled()Z
    .registers 2

    .line 407
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isAutofillCompatibilityEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist autofillClientIsFillUiShowing()Z
    .registers 2

    .line 524
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    invoke-virtual {v0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist autofillClientIsVisibleForAutofill()Z
    .registers 2

    .line 412
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isVisibleForAutofill()Z

    move-result v0

    return v0
.end method

.method public blacklist autofillClientRequestHideFillUi()Z
    .registers 2

    .line 529
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    if-nez v0, :cond_6

    .line 530
    const/4 v0, 0x0

    return v0

    .line 532
    :cond_6
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    invoke-virtual {v0}, Landroid/view/autofill/AutofillPopupWindow;->dismiss()V

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    .line 534
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist autofillClientRequestShowFillUi(Landroid/view/View;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)Z
    .registers 14
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "anchorBounds"    # Landroid/graphics/Rect;
    .param p5, "presenter"    # Landroid/view/autofill/IAutofillWindowPresenter;

    .line 542
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    if-nez v0, :cond_d

    .line 543
    const/4 v0, 0x0

    .line 544
    .local v0, "wasShowing":Z
    new-instance v1, Landroid/view/autofill/AutofillPopupWindow;

    invoke-direct {v1, p5}, Landroid/view/autofill/AutofillPopupWindow;-><init>(Landroid/view/autofill/IAutofillWindowPresenter;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    goto :goto_13

    .line 546
    .end local v0    # "wasShowing":Z
    :cond_d
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    invoke-virtual {v0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    .line 548
    .restart local v0    # "wasShowing":Z
    :goto_13
    iget-object v1, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    .end local p1    # "anchor":Landroid/view/View;
    .end local p2    # "width":I
    .end local p3    # "height":I
    .end local p4    # "anchorBounds":Landroid/graphics/Rect;
    .local v2, "anchor":Landroid/view/View;
    .local v5, "width":I
    .local v6, "height":I
    .local v7, "anchorBounds":Landroid/graphics/Rect;
    invoke-virtual/range {v1 .. v7}, Landroid/view/autofill/AutofillPopupWindow;->update(Landroid/view/View;IIIILandroid/graphics/Rect;)V

    .line 550
    if-nez v0, :cond_2a

    iget-object p1, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    return p1
.end method

.method public blacklist autofillClientResetableStateAvailable()V
    .registers 2

    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    .line 572
    return-void
.end method

.method public blacklist autofillClientRunOnUiThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 576
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 577
    return-void
.end method

.method public whitelist dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 371
    const-string v0, ""

    .line 372
    .local v0, "prefix":Ljava/lang/String;
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v1

    .line 373
    .local v1, "afm":Landroid/view/autofill/AutofillManager;
    const-string v2, ""

    if-eqz v1, :cond_1f

    .line 374
    invoke-virtual {v1, v2, p1}, Landroid/view/autofill/AutofillManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 375
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Autofill Compat Mode: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 376
    iget-object v2, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isAutofillCompatibilityEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_27

    .line 378
    :cond_1f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "No AutofillManager"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    :goto_27
    return-void
.end method

.method public blacklist enableAutofillCompatibilityIfNeeded()V
    .registers 3

    .line 356
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isAutofillCompatibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 357
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 358
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_17

    .line 359
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->enableCompatibilityMode()V

    .line 362
    .end local v0    # "afm":Landroid/view/autofill/AutofillManager;
    :cond_17
    return-void
.end method

.method public whitelist getDumpableName()Ljava/lang/String;
    .registers 2

    .line 366
    const-string v0, "AutofillManager"

    return-object v0
.end method

.method public blacklist getNextAutofillId()I
    .registers 3

    .line 389
    iget v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    const v1, 0x7ffffffe

    if-ne v0, v1, :cond_c

    .line 390
    const v0, 0x3fffffff    # 1.9999999f

    iput v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    .line 393
    :cond_c
    iget v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    .line 395
    iget v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    return v0
.end method

.method public blacklist isActivityResumed()Z
    .registers 2

    .line 595
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    return v0
.end method

.method public blacklist isDisablingEnterExitEventForAutofill()Z
    .registers 2

    .line 566
    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist isRelayoutFixEnabled()Z
    .registers 4

    .line 97
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    .line 98
    .local v0, "autofillManager":Landroid/view/autofill/AutofillManager;
    if-nez v0, :cond_13

    .line 99
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_11

    .line 100
    const-string v1, "AutofillClientController"

    const-string v2, "isRelayoutFixEnabled() : getAutofillManager() == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_11
    const/4 v1, 0x0

    return v1

    .line 104
    :cond_13
    iget-object v1, p0, Landroid/view/autofill/AutofillClientController;->mRelayoutFix:Ljava/lang/Boolean;

    if-nez v1, :cond_21

    .line 105
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isRelayoutFixEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/view/autofill/AutofillClientController;->mRelayoutFix:Ljava/lang/Boolean;

    .line 107
    :cond_21
    iget-object v1, p0, Landroid/view/autofill/AutofillClientController;->mRelayoutFix:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public blacklist onActivityAttached(Landroid/app/Application;)V
    .registers 4
    .param p1, "application"    # Landroid/app/Application;

    .line 116
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Application;->getAutofillOptions()Landroid/content/AutofillOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setAutofillOptions(Landroid/content/AutofillOptions;)V

    .line 117
    return-void
.end method

.method public blacklist onActivityBackPressed(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 302
    if-eqz p1, :cond_d

    const-string v0, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 303
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillClientController;->restoreAutofillSaveUi(Landroid/content/Intent;)V

    .line 305
    :cond_d
    return-void
.end method

.method public blacklist onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 123
    const-string v0, "@android:autofillResetNeeded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    .line 124
    const-string v0, "android:lastAutofillId"

    const v1, 0x3fffffff    # 1.9999999f

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    .line 125
    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_1f

    .line 126
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/autofill/AutofillManager;->onCreate(Landroid/os/Bundle;)V

    .line 128
    :cond_1f
    return-void
.end method

.method public blacklist onActivityDestroyed()V
    .registers 2

    .line 269
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_13

    .line 270
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->onActivityFinishing()V

    .line 272
    :cond_13
    return-void
.end method

.method public blacklist onActivityFinish(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 291
    if-eqz p1, :cond_d

    const-string v0, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 292
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillClientController;->restoreAutofillSaveUi(Landroid/content/Intent;)V

    .line 294
    :cond_d
    return-void
.end method

.method public blacklist onActivityPaused()V
    .registers 4

    .line 236
    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_57

    .line 237
    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    const-string v1, "AutofillClientController"

    if-nez v0, :cond_3a

    .line 238
    sget-boolean v0, Landroid/view/autofill/AutofillClientController;->DEBUG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autofill notifyViewExited "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_24
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 240
    .local v0, "focus":Landroid/view/View;
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/View;->canNotifyAutofillEnterExitEvent()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 241
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewExited(Landroid/view/View;)V

    .line 243
    .end local v0    # "focus":Landroid/view/View;
    :cond_39
    goto :goto_57

    .line 245
    :cond_3a
    sget-boolean v0, Landroid/view/autofill/AutofillClientController;->DEBUG:Z

    if-eqz v0, :cond_54

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autofill got first pause "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    .line 249
    :cond_57
    :goto_57
    return-void
.end method

.method public blacklist onActivityPerformResume(Z)V
    .registers 4
    .param p1, "followedByPause"    # Z

    .line 221
    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_26

    .line 225
    iput-boolean p1, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    .line 226
    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    if-eqz v0, :cond_26

    sget-boolean v0, Landroid/view/autofill/AutofillClientController;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autofill will ignore first pause when relaunching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillClientController"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_26
    return-void
.end method

.method public blacklist onActivityPostResumed()V
    .registers 3

    .line 160
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    const-string v1, "AutofillClientController"

    if-eqz v0, :cond_b

    .line 161
    const-string v0, "onActivityPostResumed()"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_b
    invoke-virtual {p0}, Landroid/view/autofill/AutofillClientController;->isRelayoutFixEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 164
    return-void

    .line 166
    :cond_12
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1b

    .line 167
    const-string v0, "onActivityPostResumed(): Relayout fix enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1b
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->forResume()V

    .line 170
    return-void
.end method

.method public blacklist onActivityResumed()V
    .registers 3

    .line 143
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    const-string v1, "AutofillClientController"

    if-eqz v0, :cond_b

    .line 144
    const-string v0, "onActivityResumed()"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_b
    invoke-virtual {p0}, Landroid/view/autofill/AutofillClientController;->isRelayoutFixEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 148
    return-void

    .line 150
    :cond_12
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1b

    .line 151
    const-string v0, "onActivityResumed(): Relayout fix not enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1b
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->forResume()V

    .line 154
    return-void
.end method

.method public blacklist onActivityStarted()V
    .registers 2

    .line 134
    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_b

    .line 135
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->onVisibleForAutofill()V

    .line 137
    :cond_b
    return-void
.end method

.method public blacklist onActivityStopped(Landroid/content/Intent;Z)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "changingConfigurations"    # Z

    .line 255
    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_e

    .line 257
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->onInvisibleForAutofill(Z)V

    goto :goto_23

    .line 258
    :cond_e
    if-eqz p1, :cond_23

    .line 259
    const-string v0, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 260
    const-string v0, "android.view.autofill.extra.RESTORE_CROSS_ACTIVITY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 261
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillClientController;->restoreAutofillSaveUi(Landroid/content/Intent;)V

    .line 263
    :cond_23
    :goto_23
    return-void
.end method

.method public blacklist onDispatchActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 311
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    move-object v0, p3

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 312
    .local v0, "resultData":Landroid/content/Intent;
    :goto_6
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    .line 313
    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 312
    invoke-virtual {v1, p1, v0, v2}, Landroid/view/autofill/AutofillManager;->onAuthenticationResult(ILandroid/content/Intent;Landroid/view/View;)V

    .line 314
    return-void
.end method

.method public blacklist onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 278
    const-string v0, "android:lastAutofillId"

    iget v1, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_18

    .line 280
    const-string v0, "@android:autofillResetNeeded"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 281
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/autofill/AutofillManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 283
    :cond_18
    return-void
.end method

.method public blacklist onStartActivity(Landroid/content/Intent;Landroid/content/Intent;)V
    .registers 7
    .param p1, "startIntent"    # Landroid/content/Intent;
    .param p2, "cachedIntent"    # Landroid/content/Intent;

    .line 320
    if-eqz p2, :cond_3e

    .line 321
    const-string v0, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 322
    const-string v1, "android.view.autofill.extra.RESTORE_CROSS_ACTIVITY"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 323
    iget-object v2, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    .line 324
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 326
    nop

    .line 327
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 329
    .local v2, "token":Landroid/os/IBinder;
    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 333
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 336
    .end local v2    # "token":Landroid/os/IBinder;
    :cond_3e
    return-void
.end method

.method public blacklist restoreAutofillSaveUi(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 342
    nop

    .line 343
    const-string v0, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 345
    .local v1, "token":Landroid/os/IBinder;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 346
    const-string v0, "android.view.autofill.extra.RESTORE_CROSS_ACTIVITY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 347
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/autofill/AutofillManager;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 349
    return-void
.end method
