.class public Landroid/content/integrity/AppIntegrityManager;
.super Ljava/lang/Object;
.source "AppIntegrityManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist EXTRA_STATUS:Ljava/lang/String; = "android.content.integrity.extra.STATUS"

.field public static final whitelist STATUS_FAILURE:I = 0x1

.field public static final whitelist STATUS_SUCCESS:I


# instance fields
.field blacklist mManager:Landroid/content/integrity/IAppIntegrityManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/integrity/IAppIntegrityManager;)V
    .registers 2
    .param p1, "manager"    # Landroid/content/integrity/IAppIntegrityManager;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/content/integrity/AppIntegrityManager;->mManager:Landroid/content/integrity/IAppIntegrityManager;

    .line 65
    return-void
.end method


# virtual methods
.method public blacklist getCurrentRuleSet()Landroid/content/integrity/RuleSet;
    .registers 5

    .line 118
    :try_start_0
    iget-object v0, p0, Landroid/content/integrity/AppIntegrityManager;->mManager:Landroid/content/integrity/IAppIntegrityManager;

    invoke-interface {v0}, Landroid/content/integrity/IAppIntegrityManager;->getCurrentRules()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 119
    .local v0, "rules":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/integrity/Rule;>;"
    iget-object v1, p0, Landroid/content/integrity/AppIntegrityManager;->mManager:Landroid/content/integrity/IAppIntegrityManager;

    invoke-interface {v1}, Landroid/content/integrity/IAppIntegrityManager;->getCurrentRuleSetVersion()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "version":Ljava/lang/String;
    new-instance v2, Landroid/content/integrity/RuleSet$Builder;

    invoke-direct {v2}, Landroid/content/integrity/RuleSet$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/integrity/RuleSet$Builder;->setVersion(Ljava/lang/String;)Landroid/content/integrity/RuleSet$Builder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/integrity/RuleSet$Builder;->addRules(Ljava/util/List;)Landroid/content/integrity/RuleSet$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/integrity/RuleSet$Builder;->build()Landroid/content/integrity/RuleSet;

    move-result-object v2
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    return-object v2

    .line 121
    .end local v0    # "rules":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/integrity/Rule;>;"
    .end local v1    # "version":Ljava/lang/String;
    :catch_22
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getCurrentRuleSetProvider()Ljava/lang/String;
    .registers 3

    .line 101
    :try_start_0
    iget-object v0, p0, Landroid/content/integrity/AppIntegrityManager;->mManager:Landroid/content/integrity/IAppIntegrityManager;

    invoke-interface {v0}, Landroid/content/integrity/IAppIntegrityManager;->getCurrentRuleSetProvider()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 102
    :catch_7
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getCurrentRuleSetVersion()Ljava/lang/String;
    .registers 3

    .line 91
    :try_start_0
    iget-object v0, p0, Landroid/content/integrity/AppIntegrityManager;->mManager:Landroid/content/integrity/IAppIntegrityManager;

    invoke-interface {v0}, Landroid/content/integrity/IAppIntegrityManager;->getCurrentRuleSetVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 92
    :catch_7
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWhitelistedRuleProviders()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    :try_start_0
    iget-object v0, p0, Landroid/content/integrity/AppIntegrityManager;->mManager:Landroid/content/integrity/IAppIntegrityManager;

    invoke-interface {v0}, Landroid/content/integrity/IAppIntegrityManager;->getWhitelistedRuleProviders()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 138
    :catch_7
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateRuleSet(Landroid/content/integrity/RuleSet;Landroid/content/IntentSender;)V
    .registers 7
    .param p1, "updateRequest"    # Landroid/content/integrity/RuleSet;
    .param p2, "statusReceiver"    # Landroid/content/IntentSender;

    .line 78
    :try_start_0
    iget-object v0, p0, Landroid/content/integrity/AppIntegrityManager;->mManager:Landroid/content/integrity/IAppIntegrityManager;

    .line 79
    invoke-virtual {p1}, Landroid/content/integrity/RuleSet;->getVersion()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    .line 80
    invoke-virtual {p1}, Landroid/content/integrity/RuleSet;->getRules()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 78
    invoke-interface {v0, v1, v2, p2}, Landroid/content/integrity/IAppIntegrityManager;->updateRuleSet(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 84
    nop

    .line 85
    return-void

    .line 82
    :catch_14
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
