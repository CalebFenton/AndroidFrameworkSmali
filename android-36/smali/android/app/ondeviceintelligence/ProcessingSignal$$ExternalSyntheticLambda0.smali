.class public final synthetic Landroid/app/ondeviceintelligence/ProcessingSignal$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;

.field public final synthetic blacklist f$1:Landroid/os/PersistableBundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;Landroid/os/PersistableBundle;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal$$ExternalSyntheticLambda0;->f$0:Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;

    iput-object p2, p0, Landroid/app/ondeviceintelligence/ProcessingSignal$$ExternalSyntheticLambda0;->f$1:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/ondeviceintelligence/ProcessingSignal$$ExternalSyntheticLambda0;->f$0:Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal$$ExternalSyntheticLambda0;->f$1:Landroid/os/PersistableBundle;

    invoke-static {v0, v1}, Landroid/app/ondeviceintelligence/ProcessingSignal;->lambda$setOnProcessingSignalCallback$1(Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;Landroid/os/PersistableBundle;)V

    return-void
.end method
