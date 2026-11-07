.class public final synthetic Landroid/adservices/common/AdServicesCommonManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/adservices/common/AdServicesOutcomeReceiver;

.field public final synthetic blacklist f$1:Landroid/os/RemoteException;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/adservices/common/AdServicesOutcomeReceiver;Landroid/os/RemoteException;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/adservices/common/AdServicesCommonManager$$ExternalSyntheticLambda5;->f$0:Landroid/adservices/common/AdServicesOutcomeReceiver;

    iput-object p2, p0, Landroid/adservices/common/AdServicesCommonManager$$ExternalSyntheticLambda5;->f$1:Landroid/os/RemoteException;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/adservices/common/AdServicesCommonManager$$ExternalSyntheticLambda5;->f$0:Landroid/adservices/common/AdServicesOutcomeReceiver;

    iget-object v1, p0, Landroid/adservices/common/AdServicesCommonManager$$ExternalSyntheticLambda5;->f$1:Landroid/os/RemoteException;

    invoke-static {v0, v1}, Landroid/adservices/common/AdServicesCommonManager;->lambda$requestAdServicesModuleUserChoices$3(Landroid/adservices/common/AdServicesOutcomeReceiver;Landroid/os/RemoteException;)V

    return-void
.end method
