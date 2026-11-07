.class Landroid/adservices/adselection/AdSelectionManager$1;
.super Landroid/adservices/adselection/GetAdSelectionDataCallback$Stub;
.source "AdSelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/adselection/AdSelectionManager;->getAdSelectionData(Landroid/adservices/adselection/GetAdSelectionDataRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/adservices/adselection/AdSelectionManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$receiver:Landroid/os/OutcomeReceiver;


# direct methods
.method public static synthetic blacklist $r8$lambda$gwc4VD-KttJEDMosH8qtTvb9x54(Landroid/adservices/adselection/AdSelectionManager$1;Landroid/adservices/adselection/GetAdSelectionDataResponse;Landroid/os/OutcomeReceiver;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/adservices/adselection/AdSelectionManager$1;->lambda$onSuccess$0(Landroid/adservices/adselection/GetAdSelectionDataResponse;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/adservices/adselection/AdSelectionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "this$0"    # Landroid/adservices/adselection/AdSelectionManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 246
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionManager$1;->this$0:Landroid/adservices/adselection/AdSelectionManager;

    iput-object p2, p0, Landroid/adservices/adselection/AdSelectionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/adservices/adselection/AdSelectionManager$1;->val$receiver:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/adservices/adselection/GetAdSelectionDataCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$1(Landroid/os/OutcomeReceiver;Landroid/adservices/common/FledgeErrorResponse;)V
    .registers 3
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;
    .param p1, "failureParcel"    # Landroid/adservices/common/FledgeErrorResponse;

    .line 274
    nop

    .line 275
    invoke-static {p1}, Landroid/adservices/common/AdServicesStatusUtils;->asException(Landroid/adservices/common/AdServicesResponse;)Ljava/lang/Exception;

    move-result-object v0

    .line 274
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 276
    return-void
.end method

.method private synthetic blacklist lambda$onSuccess$0(Landroid/adservices/adselection/GetAdSelectionDataResponse;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "resultParcel"    # Landroid/adservices/adselection/GetAdSelectionDataResponse;
    .param p2, "receiver"    # Landroid/os/OutcomeReceiver;

    .line 253
    :try_start_0
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionManager$1;->this$0:Landroid/adservices/adselection/AdSelectionManager;

    invoke-static {v0, p1}, Landroid/adservices/adselection/AdSelectionManager;->-$$Nest$mgetAdSelectionData(Landroid/adservices/adselection/AdSelectionManager;Landroid/adservices/adselection/GetAdSelectionDataResponse;)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_20

    .line 260
    .local v0, "adSelectionData":[B
    nop

    .line 261
    new-instance v1, Landroid/adservices/adselection/GetAdSelectionDataOutcome$Builder;

    invoke-direct {v1}, Landroid/adservices/adselection/GetAdSelectionDataOutcome$Builder;-><init>()V

    .line 264
    invoke-virtual {p1}, Landroid/adservices/adselection/GetAdSelectionDataResponse;->getAdSelectionId()J

    move-result-wide v2

    .line 263
    invoke-virtual {v1, v2, v3}, Landroid/adservices/adselection/GetAdSelectionDataOutcome$Builder;->setAdSelectionId(J)Landroid/adservices/adselection/GetAdSelectionDataOutcome$Builder;

    move-result-object v1

    .line 265
    invoke-virtual {v1, v0}, Landroid/adservices/adselection/GetAdSelectionDataOutcome$Builder;->setAdSelectionData([B)Landroid/adservices/adselection/GetAdSelectionDataOutcome$Builder;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Landroid/adservices/adselection/GetAdSelectionDataOutcome$Builder;->build()Landroid/adservices/adselection/GetAdSelectionDataOutcome;

    move-result-object v1

    .line 261
    invoke-interface {p2, v1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 267
    return-void

    .line 254
    .end local v0    # "adSelectionData":[B
    :catch_20
    move-exception v0

    .line 255
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to return the AdSelectionData"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 259
    return-void
.end method


# virtual methods
.method public blacklist onFailure(Landroid/adservices/common/FledgeErrorResponse;)V
    .registers 5
    .param p1, "failureParcel"    # Landroid/adservices/common/FledgeErrorResponse;

    .line 272
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionManager$1;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/adselection/AdSelectionManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/adservices/adselection/AdSelectionManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Landroid/adservices/common/FledgeErrorResponse;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 277
    return-void
.end method

.method public blacklist onSuccess(Landroid/adservices/adselection/GetAdSelectionDataResponse;)V
    .registers 5
    .param p1, "resultParcel"    # Landroid/adservices/adselection/GetAdSelectionDataResponse;

    .line 249
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionManager$1;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/adselection/AdSelectionManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1}, Landroid/adservices/adselection/AdSelectionManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/adservices/adselection/AdSelectionManager$1;Landroid/adservices/adselection/GetAdSelectionDataResponse;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 268
    return-void
.end method
