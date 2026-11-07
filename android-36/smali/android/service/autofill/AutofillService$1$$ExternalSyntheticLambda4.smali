.class public final synthetic Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    check-cast p1, Landroid/service/autofill/AutofillService;

    check-cast p2, Landroid/service/autofill/SaveRequest;

    check-cast p3, Landroid/service/autofill/SaveCallback;

    invoke-virtual {p1, p2, p3}, Landroid/service/autofill/AutofillService;->onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/SaveCallback;)V

    return-void
.end method
