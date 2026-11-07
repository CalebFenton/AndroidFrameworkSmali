.class final Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;
.super Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;
.source "AugmentedAutofillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/AugmentedAutofillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AugmentedAutofillServiceImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;


# direct methods
.method public static synthetic blacklist $r8$lambda$DTL5UeU4SfJz8RSjns_avtK5nlI(Landroid/service/autofill/augmented/AugmentedAutofillService;ZZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$mhandleOnConnected(Landroid/service/autofill/augmented/AugmentedAutofillService;ZZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SRXVlttOnKWHDKz1XXtrWvCPM3o(Landroid/service/autofill/augmented/AugmentedAutofillService;)V
    .registers 1

    invoke-static {p0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$mhandleOnDestroyAllFillWindowsRequest(Landroid/service/autofill/augmented/AugmentedAutofillService;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WTjBWlfB-Ode51JH39k04VhxolM(Landroid/service/autofill/augmented/AugmentedAutofillService;ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V
    .registers 11

    invoke-static/range {p0 .. p10}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$mhandleOnFillRequest(Landroid/service/autofill/augmented/AugmentedAutofillService;ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$adpfhxTumWhYtgvFOS6QCa0rivY(Landroid/service/autofill/augmented/AugmentedAutofillService;)V
    .registers 1

    invoke-static {p0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$mhandleOnDisconnected(Landroid/service/autofill/augmented/AugmentedAutofillService;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/autofill/augmented/AugmentedAutofillService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 99
    iput-object p1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    invoke-direct {p0}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/autofill/augmented/AugmentedAutofillService;Landroid/service/autofill/augmented/AugmentedAutofillService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;-><init>(Landroid/service/autofill/augmented/AugmentedAutofillService;)V

    return-void
.end method


# virtual methods
.method public blacklist onConnected(ZZ)V
    .registers 8
    .param p1, "debug"    # Z
    .param p2, "verbose"    # Z

    .line 103
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    invoke-static {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/augmented/AugmentedAutofillService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    .line 104
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 103
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    return-void
.end method

.method public blacklist onDestroyAllFillWindowsRequest()V
    .registers 4

    .line 125
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    invoke-static {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/augmented/AugmentedAutofillService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    .line 126
    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    return-void
.end method

.method public blacklist onDisconnected()V
    .registers 4

    .line 109
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    invoke-static {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/augmented/AugmentedAutofillService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    return-void
.end method

.method public blacklist onFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V
    .registers 23
    .param p1, "sessionId"    # I
    .param p2, "client"    # Landroid/os/IBinder;
    .param p3, "taskId"    # I
    .param p4, "componentName"    # Landroid/content/ComponentName;
    .param p5, "focusedId"    # Landroid/view/autofill/AutofillId;
    .param p6, "focusedValue"    # Landroid/view/autofill/AutofillValue;
    .param p7, "requestTime"    # J
    .param p9, "inlineSuggestionsRequest"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p10, "callback"    # Landroid/service/autofill/augmented/IFillCallback;

    .line 118
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    invoke-static {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/augmented/AugmentedAutofillService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 120
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 118
    move-object v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-static/range {v1 .. v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/DecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    return-void
.end method
