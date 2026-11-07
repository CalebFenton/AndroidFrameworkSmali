.class public final synthetic Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper$$ExternalSyntheticLambda0;
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
    check-cast p1, Landroid/service/autofill/AutofillFieldClassificationService;

    check-cast p2, Landroid/os/RemoteCallback;

    check-cast p3, Ljava/util/List;

    check-cast p4, [Ljava/lang/String;

    check-cast p5, [Ljava/lang/String;

    check-cast p6, Ljava/lang/String;

    check-cast p7, Landroid/os/Bundle;

    check-cast p8, Ljava/util/Map;

    check-cast p9, Ljava/util/Map;

    move-object p0, p1

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    move-object p6, p7

    move-object p7, p8

    move-object p8, p9

    invoke-static/range {p0 .. p8}, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;->$r8$lambda$dvS3lrPyQtCXLZTc0rUTFiVI0dE(Landroid/service/autofill/AutofillFieldClassificationService;Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method
