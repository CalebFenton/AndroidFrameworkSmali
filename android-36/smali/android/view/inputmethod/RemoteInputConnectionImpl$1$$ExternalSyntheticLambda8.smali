.class public final synthetic Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;->f$0:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$getCursorCapsMode$9(ILjava/lang/Integer;)[B

    move-result-object p1

    return-object p1
.end method
