.class Landroid/app/SystemServiceRegistry$89;
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
        "Landroid/media/soundtrigger/SoundTriggerManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1178
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/media/soundtrigger/SoundTriggerManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1181
    const-string/jumbo v0, "soundtrigger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1182
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/media/soundtrigger/SoundTriggerManager;

    invoke-static {v0}, Lcom/android/internal/app/ISoundTriggerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerService;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/media/soundtrigger/SoundTriggerManager;-><init>(Landroid/content/Context;Lcom/android/internal/app/ISoundTriggerService;)V

    return-object v1
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

    .line 1178
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$89;->createService(Landroid/app/ContextImpl;)Landroid/media/soundtrigger/SoundTriggerManager;

    move-result-object p1

    return-object p1
.end method
