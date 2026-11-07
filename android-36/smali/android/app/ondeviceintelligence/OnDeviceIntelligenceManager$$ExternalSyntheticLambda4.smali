.class public final synthetic Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/CancellationSignal;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/CancellationSignal;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda4;->f$0:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda4;->f$0:Landroid/os/CancellationSignal;

    check-cast p1, Landroid/os/IBinder;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->lambda$configureRemoteCancellationFuture$5(Landroid/os/CancellationSignal;Landroid/os/IBinder;Ljava/lang/Throwable;)V

    return-void
.end method
