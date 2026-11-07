.class Landroid/app/assist/AssistStructure$ViewNodeBuilder$1;
.super Landroid/os/ResultReceiver;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/assist/AssistStructure$ViewNodeBuilder;->setUpResultReceiver(Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;


# direct methods
.method constructor blacklist <init>(Landroid/app/assist/AssistStructure$ViewNodeBuilder;Landroid/os/Handler;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "this$0"    # Landroid/app/assist/AssistStructure$ViewNodeBuilder;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2301
    iput-object p3, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder$1;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 9
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 2304
    const-string v0, "AssistStructure"

    if-nez p1, :cond_1a

    .line 2305
    const-string/jumbo v1, "onReceiveResult from Credential Manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    const-class v0, Landroid/credentials/GetCredentialResponse;

    .line 2307
    const-string v1, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/credentials/GetCredentialResponse;

    .line 2311
    .local v0, "getCredentialResponse":Landroid/credentials/GetCredentialResponse;
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder$1;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-interface {v1, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 2312
    .end local v0    # "getCredentialResponse":Landroid/credentials/GetCredentialResponse;
    goto :goto_74

    :cond_1a
    const/4 v1, -0x1

    if-ne p1, v1, :cond_5e

    .line 2313
    const-string v1, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2315
    .local v1, "exception":[Ljava/lang/String;
    if-eqz v1, :cond_5d

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5d

    .line 2316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Credman bottom sheet from pinned entry failed with: + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/credentials/GetCredentialException;

    aget-object v3, v1, v3

    aget-object v4, v1, v4

    invoke-direct {v2, v3, v4}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 2322
    .end local v1    # "exception":[Ljava/lang/String;
    :cond_5d
    goto :goto_74

    .line 2323
    :cond_5e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown resultCode from credential manager bottom sheet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    :goto_74
    return-void
.end method
