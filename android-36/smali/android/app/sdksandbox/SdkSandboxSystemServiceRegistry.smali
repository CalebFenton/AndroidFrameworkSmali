.class public final Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;
.super Ljava/lang/Object;
.source "SdkSandboxSystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry$ServiceMutator;
    }
.end annotation


# static fields
.field private static blacklist sInstance:Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mServiceMutators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry$ServiceMutator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->sLock:Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    sput-object v0, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->sInstance:Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->mServiceMutators:Ljava/util/Map;

    .line 54
    return-void
.end method

.method public static blacklist getInstance()Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;
    .registers 2

    .line 64
    sget-object v0, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_3
    sget-object v1, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->sInstance:Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;

    if-nez v1, :cond_e

    .line 66
    new-instance v1, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;

    invoke-direct {v1}, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;-><init>()V

    sput-object v1, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->sInstance:Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;

    .line 68
    :cond_e
    sget-object v1, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->sInstance:Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;

    monitor-exit v0

    return-object v1

    .line 69
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public blacklist getServiceMutator(Ljava/lang/String;)Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry$ServiceMutator;
    .registers 4
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->mServiceMutators:Ljava/util/Map;

    monitor-enter v0

    .line 95
    :try_start_3
    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->mServiceMutators:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry$ServiceMutator;

    monitor-exit v0

    return-object v1

    .line 96
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public blacklist registerServiceMutator(Ljava/lang/String;Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry$ServiceMutator;)V
    .registers 5
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "mutator"    # Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry$ServiceMutator;

    .line 83
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->mServiceMutators:Ljava/util/Map;

    monitor-enter v0

    .line 84
    :try_start_3
    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->mServiceMutators:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
