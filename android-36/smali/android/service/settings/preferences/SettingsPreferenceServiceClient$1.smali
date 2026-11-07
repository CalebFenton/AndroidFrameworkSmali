.class Landroid/service/settings/preferences/SettingsPreferenceServiceClient$1;
.super Landroid/service/settings/preferences/IMetadataCallback$Stub;
.source "SettingsPreferenceServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->getAllPreferenceMetadata(Landroid/service/settings/preferences/MetadataRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$receiver:Landroid/os/OutcomeReceiver;


# direct methods
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

    .line 119
    iput-object p2, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$1;->val$receiver:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/service/settings/preferences/IMetadataCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$1(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service call failure"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$0(Landroid/os/OutcomeReceiver;Landroid/service/settings/preferences/MetadataResult;)V
    .registers 2
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;
    .param p1, "result"    # Landroid/service/settings/preferences/MetadataResult;

    .line 122
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onFailure()V
    .registers 4

    .line 127
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$1;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method public blacklist onSuccess(Landroid/service/settings/preferences/MetadataResult;)V
    .registers 5
    .param p1, "result"    # Landroid/service/settings/preferences/MetadataResult;

    .line 122
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$1;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/service/settings/preferences/MetadataResult;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method
