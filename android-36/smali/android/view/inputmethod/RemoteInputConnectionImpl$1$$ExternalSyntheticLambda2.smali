.class public final synthetic Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl$1;

.field public final synthetic blacklist f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

.field public final synthetic blacklist f$2:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda2;->f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl$1;

    iput-object p2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iput-object p3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda2;->f$2:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda2;->f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl$1;

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda2;->f$2:Landroid/view/KeyEvent;

    invoke-static {v0, v1, v2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->$r8$lambda$Mg3pt59RqjLud-5e4Ud3_FIstiM(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    return-void
.end method
