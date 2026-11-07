.class public final synthetic Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Consumer;

.field public final synthetic blacklist f$1:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Consumer;Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda8;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda8;->f$1:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda8;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda8;->f$1:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->lambda$getReadOnlyFileDescriptor$1(Ljava/util/function/Consumer;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
