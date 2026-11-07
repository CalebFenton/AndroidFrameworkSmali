.class Landroid/app/SystemServiceRegistry$145;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/security/intrusiondetection/IntrusionDetectionManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1796
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/security/intrusiondetection/IntrusionDetectionManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1800
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->aflApi()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1804
    const-string/jumbo v0, "intrusion_detection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1806
    .local v0, "b":Landroid/os/IBinder;
    nop

    .line 1807
    invoke-static {v0}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/intrusiondetection/IIntrusionDetectionService;

    move-result-object v1

    .line 1808
    .local v1, "service":Landroid/security/intrusiondetection/IIntrusionDetectionService;
    new-instance v2, Landroid/security/intrusiondetection/IntrusionDetectionManager;

    invoke-direct {v2, v1}, Landroid/security/intrusiondetection/IntrusionDetectionManager;-><init>(Landroid/security/intrusiondetection/IIntrusionDetectionService;)V

    return-object v2

    .line 1801
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "service":Landroid/security/intrusiondetection/IIntrusionDetectionService;
    :cond_18
    new-instance v0, Landroid/os/ServiceManager$ServiceNotFoundException;

    const-string v1, "Intrusion Detection is not supported"

    invoke-direct {v0, v1}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1796
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$145;->createService(Landroid/app/ContextImpl;)Landroid/security/intrusiondetection/IntrusionDetectionManager;

    move-result-object p1

    return-object p1
.end method
