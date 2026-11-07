.class public final synthetic Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl$$ExternalSyntheticLambda0;
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
    check-cast p1, Landroid/service/autofill/augmented/AugmentedAutofillService;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {p1, p2, p3}, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->$r8$lambda$DTL5UeU4SfJz8RSjns_avtK5nlI(Landroid/service/autofill/augmented/AugmentedAutofillService;ZZ)V

    return-void
.end method
