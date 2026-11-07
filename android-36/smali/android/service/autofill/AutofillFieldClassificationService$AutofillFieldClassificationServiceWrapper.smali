.class final Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;
.super Landroid/service/autofill/IAutofillFieldClassificationService$Stub;
.source "AutofillFieldClassificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/AutofillFieldClassificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutofillFieldClassificationServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/autofill/AutofillFieldClassificationService;


# direct methods
.method public static synthetic blacklist $r8$lambda$dvS3lrPyQtCXLZTc0rUTFiVI0dE(Landroid/service/autofill/AutofillFieldClassificationService;Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V
    .registers 9

    invoke-static/range {p0 .. p8}, Landroid/service/autofill/AutofillFieldClassificationService;->-$$Nest$mcalculateScores(Landroid/service/autofill/AutofillFieldClassificationService;Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/autofill/AutofillFieldClassificationService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 288
    iput-object p1, p0, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;->this$0:Landroid/service/autofill/AutofillFieldClassificationService;

    invoke-direct {p0}, Landroid/service/autofill/IAutofillFieldClassificationService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/autofill/AutofillFieldClassificationService;Landroid/service/autofill/AutofillFieldClassificationService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;-><init>(Landroid/service/autofill/AutofillFieldClassificationService;)V

    return-void
.end method


# virtual methods
.method public blacklist calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V
    .registers 20
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .param p3, "userDataValues"    # [Ljava/lang/String;
    .param p4, "categoryIds"    # [Ljava/lang/String;
    .param p5, "defaultAlgorithm"    # Ljava/lang/String;
    .param p6, "defaultArgs"    # Landroid/os/Bundle;
    .param p7, "algorithms"    # Ljava/util/Map;
    .param p8, "args"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallback;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map;",
            "Ljava/util/Map;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    .local p2, "actualValues":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    iget-object v0, p0, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;->this$0:Landroid/service/autofill/AutofillFieldClassificationService;

    invoke-static {v0}, Landroid/service/autofill/AutofillFieldClassificationService;->-$$Nest$fgetmHandler(Landroid/service/autofill/AutofillFieldClassificationService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;->this$0:Landroid/service/autofill/AutofillFieldClassificationService;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v1 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 300
    return-void
.end method
