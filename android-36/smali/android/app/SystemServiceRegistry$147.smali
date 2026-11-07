.class Landroid/app/SystemServiceRegistry$147;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SystemServiceRegistry;->registerForeverStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<",
        "TTServiceClass;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$serviceName:Ljava/lang/String;

.field final synthetic blacklist val$serviceProducer:Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;


# direct methods
.method constructor blacklist <init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;Ljava/lang/String;)V
    .registers 3

    .line 2164
    iput-object p1, p0, Landroid/app/SystemServiceRegistry$147;->val$serviceProducer:Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;

    iput-object p2, p0, Landroid/app/SystemServiceRegistry$147;->val$serviceName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTServiceClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 2167
    iget-object v0, p0, Landroid/app/SystemServiceRegistry$147;->val$serviceProducer:Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;

    iget-object v1, p0, Landroid/app/SystemServiceRegistry$147;->val$serviceName:Ljava/lang/String;

    .line 2168
    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2167
    invoke-interface {v0, v1}, Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;->createService(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist supportsFetchWithoutContext()Z
    .registers 2

    .line 2173
    const/4 v0, 0x1

    return v0
.end method
