.class public final Landroid/os/ArtModuleServiceManager$ServiceRegisterer;
.super Ljava/lang/Object;
.source "ArtModuleServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ArtModuleServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceRegisterer"
.end annotation


# instance fields
.field private final blacklist mRetry:Z

.field private final blacklist mServiceName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "retry"    # Z

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    .line 45
    iput-boolean p2, p0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;->mRetry:Z

    .line 46
    return-void
.end method


# virtual methods
.method public blacklist waitForService()Landroid/os/IBinder;
    .registers 5

    .line 58
    iget-boolean v0, p0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;->mRetry:Z

    if-eqz v0, :cond_b

    .line 59
    iget-object v0, p0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 61
    :cond_b
    iget-object v0, p0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 62
    .local v0, "binder":Landroid/os/IBinder;
    const/16 v1, 0x1388

    .local v1, "remainingTimeMs":I
    :goto_13
    if-nez v0, :cond_2c

    if-lez v1, :cond_2c

    .line 74
    const-string v2, "ctl.start"

    iget-object v3, p0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 76
    iget-object v2, p0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 63
    add-int/lit8 v1, v1, -0x64

    goto :goto_13

    .line 78
    .end local v1    # "remainingTimeMs":I
    :cond_2c
    return-object v0
.end method
