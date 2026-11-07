.class public abstract Landroid/service/autofill/AutofillService;
.super Landroid/app/Service;
.source "AutofillService.java"


# static fields
.field public static final blacklist EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final whitelist EXTRA_FILL_RESPONSE:Ljava/lang/String; = "android.service.autofill.extra.FILL_RESPONSE"

.field public static final blacklist EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.autofill.AutofillService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.autofill"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AutofillService"

.field public static final blacklist WEBVIEW_REQUESTED_CREDENTIAL_KEY:Ljava/lang/String; = "webview_requested_credential"


# instance fields
.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mInterface:Landroid/service/autofill/IAutoFillService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/AutofillService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 558
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 613
    new-instance v0, Landroid/service/autofill/AutofillService$1;

    invoke-direct {v0, p0}, Landroid/service/autofill/AutofillService$1;-><init>(Landroid/service/autofill/AutofillService;)V

    iput-object v0, p0, Landroid/service/autofill/AutofillService;->mInterface:Landroid/service/autofill/IAutoFillService;

    return-void
.end method


# virtual methods
.method public final whitelist getFillEventHistory()Landroid/service/autofill/FillEventHistory;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 833
    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v0}, Landroid/service/autofill/AutofillService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 835
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-nez v0, :cond_c

    .line 836
    const/4 v1, 0x0

    return-object v1

    .line 838
    :cond_c
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->getFillEventHistory()Landroid/service/autofill/FillEventHistory;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 697
    const-string v0, "android.service.autofill.AutofillService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 698
    iget-object v0, p0, Landroid/service/autofill/AutofillService;->mInterface:Landroid/service/autofill/IAutoFillService;

    invoke-interface {v0}, Landroid/service/autofill/IAutoFillService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 700
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.service.autofill.AutofillService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onConnected()V
    .registers 1

    .line 710
    return-void
.end method

.method public blacklist onConvertCredentialRequest(Landroid/service/autofill/ConvertCredentialRequest;Landroid/service/autofill/ConvertCredentialCallback;)V
    .registers 3
    .param p1, "convertCredentialRequest"    # Landroid/service/autofill/ConvertCredentialRequest;
    .param p2, "convertCredentialCallback"    # Landroid/service/autofill/ConvertCredentialCallback;

    .line 749
    return-void
.end method

.method public whitelist onCreate()V
    .registers 5

    .line 690
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 691
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/autofill/AutofillService;->mHandler:Landroid/os/Handler;

    .line 692
    invoke-static {v3}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 693
    return-void
.end method

.method public whitelist onDisconnected()V
    .registers 1

    .line 794
    return-void
.end method

.method public blacklist onFillCredentialRequest(Landroid/service/autofill/FillRequest;Landroid/os/CancellationSignal;Landroid/service/autofill/FillCallback;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "request"    # Landroid/service/autofill/FillRequest;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "callback"    # Landroid/service/autofill/FillCallback;
    .param p4, "autofillClientCallback"    # Landroid/os/IBinder;

    .line 737
    return-void
.end method

.method public abstract whitelist onFillRequest(Landroid/service/autofill/FillRequest;Landroid/os/CancellationSignal;Landroid/service/autofill/FillCallback;)V
.end method

.method public abstract whitelist onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/SaveCallback;)V
.end method

.method public whitelist onSavedDatasetsInfoRequest(Landroid/service/autofill/SavedDatasetsInfoCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/service/autofill/SavedDatasetsInfoCallback;

    .line 783
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/service/autofill/SavedDatasetsInfoCallback;->onError(I)V

    .line 784
    return-void
.end method

.method public whitelist onSessionDestroyed(Landroid/service/autofill/FillEventHistory;)V
    .registers 2
    .param p1, "history"    # Landroid/service/autofill/FillEventHistory;

    .line 807
    return-void
.end method
