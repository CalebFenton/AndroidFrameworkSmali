.class Landroid/app/ActivityClient$ActivityClientControllerSingleton;
.super Landroid/util/Singleton;
.source "ActivityClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityClientControllerSingleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/app/IActivityClientController;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist mKnownInstance:Landroid/app/IActivityClientController;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 692
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ActivityClient-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/ActivityClient$ActivityClientControllerSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/app/IActivityClientController;
    .registers 3

    .line 703
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 704
    :catch_9
    move-exception v0

    .line 705
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .registers 2

    .line 692
    invoke-virtual {p0}, Landroid/app/ActivityClient$ActivityClientControllerSingleton;->create()Landroid/app/IActivityClientController;

    move-result-object v0

    return-object v0
.end method
