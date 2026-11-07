.class public final synthetic Lcom/android/internal/inputmethod/EditableInputConnection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/IntConsumer;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/IntConsumer;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/inputmethod/EditableInputConnection$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/IntConsumer;

    iput p2, p0, Lcom/android/internal/inputmethod/EditableInputConnection$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/IntConsumer;

    iget v1, p0, Lcom/android/internal/inputmethod/EditableInputConnection$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1}, Lcom/android/internal/inputmethod/EditableInputConnection;->lambda$performHandwritingGesture$1(Ljava/util/function/IntConsumer;I)V

    return-void
.end method
