.class Landroid/service/translation/TranslationService$3;
.super Ljava/lang/Object;
.source "TranslationService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/translation/TranslationService;->handleOnCreateTranslationSession(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/translation/TranslationService;

.field final synthetic blacklist val$resultReceiver:Lcom/android/internal/os/IResultReceiver;

.field final synthetic blacklist val$sessionId:I

.field final synthetic blacklist val$translationContext:Landroid/view/translation/TranslationContext;


# direct methods
.method constructor blacklist <init>(Landroid/service/translation/TranslationService;Landroid/view/translation/TranslationContext;Lcom/android/internal/os/IResultReceiver;I)V
    .registers 5
    .param p1, "this$0"    # Landroid/service/translation/TranslationService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 338
    iput-object p1, p0, Landroid/service/translation/TranslationService$3;->this$0:Landroid/service/translation/TranslationService;

    iput-object p2, p0, Landroid/service/translation/TranslationService$3;->val$translationContext:Landroid/view/translation/TranslationContext;

    iput-object p3, p0, Landroid/service/translation/TranslationService$3;->val$resultReceiver:Lcom/android/internal/os/IResultReceiver;

    iput p4, p0, Landroid/service/translation/TranslationService$3;->val$sessionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "created"    # Ljava/lang/Boolean;

    .line 342
    const-string v0, "TranslationService"

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleOnCreateTranslationSession(): context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/translation/TranslationService$3;->val$translationContext:Landroid/view/translation/TranslationContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported by service."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v1, p0, Landroid/service/translation/TranslationService$3;->val$resultReceiver:Lcom/android/internal/os/IResultReceiver;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 346
    return-void

    .line 349
    :cond_2f
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "binder"

    iget-object v3, p0, Landroid/service/translation/TranslationService$3;->this$0:Landroid/service/translation/TranslationService;

    invoke-static {v3}, Landroid/service/translation/TranslationService;->-$$Nest$fgetmClientInterface(Landroid/service/translation/TranslationService;)Landroid/view/translation/ITranslationDirectManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/translation/ITranslationDirectManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 351
    const-string/jumbo v2, "sessionId"

    iget v3, p0, Landroid/service/translation/TranslationService$3;->val$sessionId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 352
    iget-object v2, p0, Landroid/service/translation/TranslationService$3;->val$resultReceiver:Lcom/android/internal/os/IResultReceiver;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_51} :catch_52

    .line 355
    .end local v1    # "extras":Landroid/os/Bundle;
    goto :goto_69

    .line 353
    :catch_52
    move-exception v1

    .line 354
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException sending client interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_69
    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 338
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroid/service/translation/TranslationService$3;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
