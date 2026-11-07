.class public interface abstract Landroid/view/autofill/AutofillManager$AutofillClient;
.super Ljava/lang/Object;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AutofillClient"
.end annotation


# virtual methods
.method public abstract blacklist autofillClientAuthenticate(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V
.end method

.method public abstract greylist-max-o autofillClientDispatchUnhandledKey(Landroid/view/View;Landroid/view/KeyEvent;)V
.end method

.method public abstract blacklist autofillClientFindAutofillableViewsByTraversal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o autofillClientFindViewByAccessibilityIdTraversal(II)Landroid/view/View;
.end method

.method public abstract greylist-max-o autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;
.end method

.method public abstract greylist-max-o autofillClientFindViewsByAutofillIdTraversal([Landroid/view/autofill/AutofillId;)[Landroid/view/View;
.end method

.method public abstract greylist-max-o autofillClientGetActivityToken()Landroid/os/IBinder;
.end method

.method public abstract greylist-max-o autofillClientGetComponentName()Landroid/content/ComponentName;
.end method

.method public abstract greylist-max-o autofillClientGetNextAutofillId()Landroid/view/autofill/AutofillId;
.end method

.method public abstract greylist-max-o autofillClientGetViewVisibility([Landroid/view/autofill/AutofillId;)[Z
.end method

.method public abstract greylist-max-o autofillClientIsCompatibilityModeEnabled()Z
.end method

.method public abstract greylist-max-o autofillClientIsFillUiShowing()Z
.end method

.method public abstract greylist-max-o autofillClientIsVisibleForAutofill()Z
.end method

.method public abstract greylist-max-o autofillClientRequestHideFillUi()Z
.end method

.method public abstract greylist-max-o autofillClientRequestShowFillUi(Landroid/view/View;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)Z
.end method

.method public abstract greylist-max-o autofillClientResetableStateAvailable()V
.end method

.method public abstract greylist-max-o autofillClientRunOnUiThread(Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist isActivityResumed()Z
.end method

.method public abstract greylist-max-o isDisablingEnterExitEventForAutofill()Z
.end method
