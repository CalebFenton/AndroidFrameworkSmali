.class public final synthetic Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 0
    check-cast p1, Landroid/service/autofill/AutofillService;

    check-cast p2, Landroid/service/autofill/FillRequest;

    check-cast p3, Landroid/os/CancellationSignal;

    check-cast p4, Landroid/service/autofill/FillCallback;

    check-cast p5, Landroid/os/IBinder;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/service/autofill/AutofillService;->onFillCredentialRequest(Landroid/service/autofill/FillRequest;Landroid/os/CancellationSignal;Landroid/service/autofill/FillCallback;Landroid/os/IBinder;)V

    return-void
.end method
