.class public final synthetic Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl$1;

.field public final synthetic blacklist f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda7;->f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl$1;

    iput-object p2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda7;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iput p3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda7;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda7;->f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl$1;

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda7;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iget v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda7;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->$r8$lambda$sItCemcWTZ6fB0FwT6P0i8Z_-Qg(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
