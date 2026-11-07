.class public final synthetic Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

.field public final synthetic blacklist f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

.field public final synthetic blacklist f$2:Landroid/view/inputmethod/CorrectionInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda16;->f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    iput-object p2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda16;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iput-object p3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda16;->f$2:Landroid/view/inputmethod/CorrectionInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda16;->f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda16;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda16;->f$2:Landroid/view/inputmethod/CorrectionInfo;

    invoke-static {v0, v1, v2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->$r8$lambda$j-M_QPFLZ9I4th0U_0AhU8K8-P0(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V

    return-void
.end method
