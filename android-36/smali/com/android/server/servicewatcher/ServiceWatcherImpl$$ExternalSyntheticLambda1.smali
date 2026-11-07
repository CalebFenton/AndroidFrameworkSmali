.class public final synthetic Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

.field public final synthetic blacklist f$1:Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    iput-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;

    invoke-static {v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->lambda$runOnBinder$0(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method
