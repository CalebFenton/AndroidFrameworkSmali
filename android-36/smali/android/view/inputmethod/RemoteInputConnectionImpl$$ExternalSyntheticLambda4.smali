.class public final synthetic Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

.field public final synthetic blacklist f$1:Landroid/view/inputmethod/InputContentInfo;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

.field public final synthetic blacklist f$4:I

.field public final synthetic blacklist f$5:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/view/inputmethod/InputContentInfo;ILcom/android/internal/inputmethod/InputConnectionCommandHeader;ILandroid/os/Bundle;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda4;->f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    iput-object p2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda4;->f$1:Landroid/view/inputmethod/InputContentInfo;

    iput p3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda4;->f$2:I

    iput-object p4, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda4;->f$3:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iput p5, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda4;->f$4:I

    iput-object p6, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda4;->f$5:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 7

    .line 0
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda4;->f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda4;->f$1:Landroid/view/inputmethod/InputContentInfo;

    iget v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda4;->f$2:I

    iget-object v3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda4;->f$3:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iget v4, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda4;->f$4:I

    iget-object v5, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda4;->f$5:Landroid/os/Bundle;

    invoke-static/range {v0 .. v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->$r8$lambda$P1GDz5k6xJZtEkJ1DmJ85vgIoU8(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/view/inputmethod/InputContentInfo;ILcom/android/internal/inputmethod/InputConnectionCommandHeader;ILandroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
