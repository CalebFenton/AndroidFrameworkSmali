.class public final synthetic Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;

.field public final synthetic blacklist f$1:Lcom/android/internal/protolog/IProtoLogClient;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;Lcom/android/internal/protolog/IProtoLogClient;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;

    iput-object p2, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/protolog/IProtoLogClient;

    return-void
.end method


# virtual methods
.method public final whitelist binderDied()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;

    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/protolog/IProtoLogClient;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->$r8$lambda$d0EC1boA3wrFcn2Wn5VRApjmAio(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;Lcom/android/internal/protolog/IProtoLogClient;)V

    return-void
.end method
