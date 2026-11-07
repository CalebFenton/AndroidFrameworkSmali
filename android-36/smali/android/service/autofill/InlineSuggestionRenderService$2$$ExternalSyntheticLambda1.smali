.class public final synthetic Landroid/service/autofill/InlineSuggestionRenderService$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/NonaConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    .line 0
    check-cast p1, Landroid/service/autofill/InlineSuggestionRenderService;

    check-cast p2, Landroid/service/autofill/IInlineSuggestionUiCallback;

    check-cast p3, Landroid/service/autofill/InlinePresentation;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    check-cast p6, Landroid/os/IBinder;

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    check-cast p8, Ljava/lang/Integer;

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p8

    check-cast p9, Ljava/lang/Integer;

    invoke-virtual {p9}, Ljava/lang/Integer;->intValue()I

    move-result p9

    move-object p0, p1

    move-object p1, p2

    move-object p2, p3

    move p3, p4

    move p4, p5

    move-object p5, p6

    move p6, p7

    move p7, p8

    move p8, p9

    invoke-static/range {p0 .. p8}, Landroid/service/autofill/InlineSuggestionRenderService$2;->$r8$lambda$NUqL1XYCsWSkEhrEan8cgEKEsSM(Landroid/service/autofill/InlineSuggestionRenderService;Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V

    return-void
.end method
