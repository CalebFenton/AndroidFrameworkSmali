.class public Lcom/android/internal/protolog/IProtoLogConfigurationService$Default;
.super Ljava/lang/Object;
.source "IProtoLogConfigurationService.java"

# interfaces
.implements Lcom/android/internal/protolog/IProtoLogConfigurationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/IProtoLogConfigurationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerClient(Lcom/android/internal/protolog/IProtoLogClient;Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;)V
    .registers 3
    .param p1, "client"    # Lcom/android/internal/protolog/IProtoLogClient;
    .param p2, "args"    # Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method
