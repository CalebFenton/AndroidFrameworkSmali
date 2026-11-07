.class public final synthetic Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

.field public final synthetic blacklist f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

.field public final synthetic blacklist f$2:Landroid/os/ResultReceiver;

.field public final synthetic blacklist f$3:Landroid/view/inputmethod/HandwritingGesture;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/view/inputmethod/HandwritingGesture;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda29;->f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    iput-object p2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda29;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iput-object p3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda29;->f$2:Landroid/os/ResultReceiver;

    iput-object p4, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda29;->f$3:Landroid/view/inputmethod/HandwritingGesture;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda29;->f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda29;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda29;->f$2:Landroid/os/ResultReceiver;

    iget-object v3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda29;->f$3:Landroid/view/inputmethod/HandwritingGesture;

    invoke-static {v0, v1, v2, v3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->$r8$lambda$oCGT6VRG2saCoErDu6z0JYMxcYg(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/view/inputmethod/HandwritingGesture;)V

    return-void
.end method
