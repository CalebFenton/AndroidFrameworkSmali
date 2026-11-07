.class public final synthetic Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$$ExternalSyntheticLambda0;->f$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    iput-object p2, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$$ExternalSyntheticLambda0;->f$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    iget-object v1, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/infra/AndroidFuture;

    invoke-static {v0, v1, v2}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->$r8$lambda$WGhlx7Qy9NmPTt2WmxjyjgGi1Ko(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method
