.class final Landroid/app/SystemServiceRegistry$63;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher",
        "<",
        "Landroid/app/job/JobScheduler;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 653
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService()Landroid/app/job/JobScheduler;
    .locals 3

    #@0
    .prologue
    .line 656
    const-string/jumbo v1, "jobscheduler"

    #@3
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 657
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/app/JobSchedulerImpl;

    #@9
    invoke-static {v0}, Landroid/app/job/IJobScheduler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobScheduler;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v2}, Landroid/app/JobSchedulerImpl;-><init>(Landroid/app/job/IJobScheduler;)V

    #@10
    return-object v1
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 655
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$63;->createService()Landroid/app/job/JobScheduler;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
