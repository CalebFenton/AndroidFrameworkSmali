.class Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4;
.super Ljava/lang/Object;
.source "SettingsPreferenceServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->createServiceConnection(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/content/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/settings/preferences/SettingsPreferenceServiceClient;

.field final synthetic blacklist val$callbackExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$clientCallback:Landroid/os/OutcomeReceiver;


# direct methods
.method public static synthetic blacklist $r8$lambda$9yNs99SvYfH1RQRQCbBL7pTTOMM(Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4;Landroid/os/OutcomeReceiver;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4;->lambda$onServiceConnected$0(Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/settings/preferences/SettingsPreferenceServiceClient;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "this$0"    # Landroid/service/settings/preferences/SettingsPreferenceServiceClient;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 243
    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4;->this$0:Landroid/service/settings/preferences/SettingsPreferenceServiceClient;

    iput-object p2, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4;->val$clientCallback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onNullBinding$1(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "clientCallback"    # Landroid/os/OutcomeReceiver;

    .line 263
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to connect client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceConnected$0(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p1, "clientCallback"    # Landroid/os/OutcomeReceiver;

    .line 248
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4;->this$0:Landroid/service/settings/preferences/SettingsPreferenceServiceClient;

    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 258
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4;->this$0:Landroid/service/settings/preferences/SettingsPreferenceServiceClient;

    invoke-virtual {v0}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->close()V

    .line 259
    return-void
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 263
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4;->val$clientCallback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 265
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4;->this$0:Landroid/service/settings/preferences/SettingsPreferenceServiceClient;

    invoke-virtual {v0}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->close()V

    .line 266
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 246
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4;->this$0:Landroid/service/settings/preferences/SettingsPreferenceServiceClient;

    invoke-static {p2}, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/settings/preferences/ISettingsPreferenceService;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->-$$Nest$fputmRemoteService(Landroid/service/settings/preferences/SettingsPreferenceServiceClient;Landroid/service/settings/preferences/ISettingsPreferenceService;)V

    .line 247
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4;->val$clientCallback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4$$ExternalSyntheticLambda0;-><init>(Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 253
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4;->this$0:Landroid/service/settings/preferences/SettingsPreferenceServiceClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->-$$Nest$fputmRemoteService(Landroid/service/settings/preferences/SettingsPreferenceServiceClient;Landroid/service/settings/preferences/ISettingsPreferenceService;)V

    .line 254
    return-void
.end method
