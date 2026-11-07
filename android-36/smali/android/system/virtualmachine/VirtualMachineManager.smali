.class public Landroid/system/virtualmachine/VirtualMachineManager;
.super Ljava/lang/Object;
.source "VirtualMachineManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/virtualmachine/VirtualMachineManager$Features;,
        Landroid/system/virtualmachine/VirtualMachineManager$Capability;
    }
.end annotation


# static fields
.field public static final whitelist CAPABILITY_NON_PROTECTED_VM:I = 0x2

.field public static final whitelist CAPABILITY_PROTECTED_VM:I = 0x1

.field public static final blacklist FEATURE_DICE_CHANGES:Ljava/lang/String; = "com.android.kvm.DICE_CHANGES"

.field public static final blacklist FEATURE_LLPVM_CHANGES:Ljava/lang/String; = "com.android.kvm.LLPVM_CHANGES"

.field public static final blacklist FEATURE_MULTI_TENANT:Ljava/lang/String; = "com.android.kvm.MULTI_TENANT"

.field public static final blacklist FEATURE_NETWORK:Ljava/lang/String; = "com.android.kvm.NETWORK"

.field public static final blacklist FEATURE_REMOTE_ATTESTATION:Ljava/lang/String; = "com.android.kvm.REMOTE_ATTESTATION"

.field public static final blacklist FEATURE_VENDOR_MODULES:Ljava/lang/String; = "com.android.kvm.VENDOR_MODULES"

.field private static final blacklist JSON_SUFFIX:Ljava/lang/String; = ".json"

.field private static final blacklist SUPPORTED_OS_LIST_FROM_CFG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sCreateLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mVmsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/system/virtualmachine/VirtualMachine;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/system/virtualmachine/VirtualMachineManager;->sCreateLock:Ljava/lang/Object;

    .line 365
    invoke-static {}, Landroid/system/virtualmachine/VirtualMachineManager;->extractSupportedOSListFromConfig()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/system/virtualmachine/VirtualMachineManager;->SUPPORTED_OS_LIST_FROM_CFG:Ljava/util/List;

    .line 364
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mVmsByName:Ljava/util/Map;

    .line 78
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method private blacklist createLocked(Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;)Landroid/system/virtualmachine/VirtualMachine;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/system/virtualmachine/VirtualMachineConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/system/virtualmachine/VirtualMachine;->create(Landroid/content/Context;Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;)Landroid/system/virtualmachine/VirtualMachine;

    move-result-object v0

    .line 230
    .local v0, "vm":Landroid/system/virtualmachine/VirtualMachine;
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mVmsByName:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-object v0
.end method

.method private static blacklist extractSupportedOSListFromConfig()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v0, "supportedOsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    const-string v2, "/apex/com.android.virt/etc"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 371
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_39

    .line 372
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_15
    if-ge v5, v3, :cond_39

    aget-object v6, v2, v5

    .line 373
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 374
    .local v7, "fileName":Ljava/lang/String;
    const-string v8, ".json"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 375
    nop

    .line 376
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v9, v8

    invoke-virtual {v7, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 375
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 380
    :cond_39
    return-object v0
.end method

.method private blacklist getLocked(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachine;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 261
    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineManager;->getVmByName(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachine;

    move-result-object v0

    .line 262
    .local v0, "vm":Landroid/system/virtualmachine/VirtualMachine;
    if-eqz v0, :cond_7

    return-object v0

    .line 264
    :cond_7
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/system/virtualmachine/VirtualMachine;->load(Landroid/content/Context;Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachine;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_19

    .line 266
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mVmsByName:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_19
    return-object v0
.end method

.method private blacklist getVmByName(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachine;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 352
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mVmsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 354
    .local v0, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/system/virtualmachine/VirtualMachine;>;"
    if-eqz v0, :cond_1d

    .line 355
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/virtualmachine/VirtualMachine;

    .line 356
    .local v1, "vm":Landroid/system/virtualmachine/VirtualMachine;
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/system/virtualmachine/VirtualMachine;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1d

    .line 357
    return-object v1

    .line 360
    .end local v1    # "vm":Landroid/system/virtualmachine/VirtualMachine;
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public whitelist create(Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;)Landroid/system/virtualmachine/VirtualMachine;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/system/virtualmachine/VirtualMachineConfig;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 220
    sget-object v0, Landroid/system/virtualmachine/VirtualMachineManager;->sCreateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/system/virtualmachine/VirtualMachineManager;->createLocked(Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;)Landroid/system/virtualmachine/VirtualMachine;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 222
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public whitelist delete(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 338
    sget-object v0, Landroid/system/virtualmachine/VirtualMachineManager;->sCreateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineManager;->getVmByName(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachine;

    move-result-object v1

    .line 340
    .local v1, "vm":Landroid/system/virtualmachine/VirtualMachine;
    if-nez v1, :cond_f

    .line 341
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Landroid/system/virtualmachine/VirtualMachine;->vmInstanceCleanup(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_14

    .line 343
    :cond_f
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/system/virtualmachine/VirtualMachine;->delete(Landroid/content/Context;Ljava/lang/String;)V

    .line 345
    :goto_14
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mVmsByName:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    nop

    .end local v1    # "vm":Landroid/system/virtualmachine/VirtualMachine;
    monitor-exit v0

    .line 347
    return-void

    .line 346
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public whitelist get(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachine;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 253
    sget-object v0, Landroid/system/virtualmachine/VirtualMachineManager;->sCreateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_3
    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineManager;->getLocked(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachine;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 255
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public whitelist getCapabilities()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "result":I
    invoke-static {}, Lcom/android/system/virtualmachine/sysprop/HypervisorProperties;->hypervisor_protected_vm_supported()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 191
    or-int/lit8 v0, v0, 0x1

    .line 193
    :cond_18
    invoke-static {}, Lcom/android/system/virtualmachine/sysprop/HypervisorProperties;->hypervisor_vm_supported()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 194
    or-int/lit8 v0, v0, 0x2

    .line 196
    :cond_2a
    return v0
.end method

.method public whitelist getOrCreate(Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;)Landroid/system/virtualmachine/VirtualMachine;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/system/virtualmachine/VirtualMachineConfig;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 312
    sget-object v0, Landroid/system/virtualmachine/VirtualMachineManager;->sCreateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_3
    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineManager;->getLocked(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachine;

    move-result-object v1

    .line 314
    .local v1, "vm":Landroid/system/virtualmachine/VirtualMachine;
    if-eqz v1, :cond_b

    .line 315
    monitor-exit v0

    return-object v1

    .line 317
    :cond_b
    invoke-direct {p0, p1, p2}, Landroid/system/virtualmachine/VirtualMachineManager;->createLocked(Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;)Landroid/system/virtualmachine/VirtualMachine;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 319
    .end local v1    # "vm":Landroid/system/virtualmachine/VirtualMachine;
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist getSupportedOSList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 391
    sget-boolean v0, Landroid/system/virtualmachine/BuildFlags;->VENDOR_MODULES_ENABLED:Z

    if-eqz v0, :cond_7

    .line 392
    sget-object v0, Landroid/system/virtualmachine/VirtualMachineManager;->SUPPORTED_OS_LIST_FROM_CFG:Ljava/util/List;

    return-object v0

    .line 394
    :cond_7
    const-string v0, "microdroid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist importFromDescriptor(Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineDescriptor;)Landroid/system/virtualmachine/VirtualMachine;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vmDescriptor"    # Landroid/system/virtualmachine/VirtualMachineDescriptor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 291
    sget-object v0, Landroid/system/virtualmachine/VirtualMachineManager;->sCreateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_3
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroid/system/virtualmachine/VirtualMachine;->fromDescriptor(Landroid/content/Context;Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineDescriptor;)Landroid/system/virtualmachine/VirtualMachine;

    move-result-object v1

    .line 293
    .local v1, "vm":Landroid/system/virtualmachine/VirtualMachine;
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mVmsByName:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    monitor-exit v0

    .line 295
    return-object v1

    .line 294
    .end local v1    # "vm":Landroid/system/virtualmachine/VirtualMachine;
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public blacklist isFeatureEnabled(Ljava/lang/String;)Z
    .registers 6
    .param p1, "featureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 406
    sget-object v0, Landroid/system/virtualmachine/VirtualMachineManager;->sCreateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_3
    invoke-static {}, Landroid/system/virtualmachine/VirtualizationService;->getInstance()Landroid/system/virtualmachine/VirtualizationService;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_17

    .line 409
    .local v1, "service":Landroid/system/virtualmachine/VirtualizationService;
    :try_start_7
    invoke-virtual {v1}, Landroid/system/virtualmachine/VirtualizationService;->getBinder()Landroid/system/virtualizationservice/IVirtualizationService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/system/virtualizationservice/IVirtualizationService;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_11
    .catchall {:try_start_7 .. :try_end_f} :catchall_17

    :try_start_f
    monitor-exit v0

    return v2

    .line 410
    :catch_11
    move-exception v2

    .line 411
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachineManager;
    .end local p1    # "featureName":Ljava/lang/String;
    throw v3

    .line 413
    .end local v1    # "service":Landroid/system/virtualmachine/VirtualizationService;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachineManager;
    .restart local p1    # "featureName":Ljava/lang/String;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_17

    throw v1
.end method

.method public blacklist isRemoteAttestationSupported()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 425
    sget-object v0, Landroid/system/virtualmachine/VirtualMachineManager;->sCreateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_3
    invoke-static {}, Landroid/system/virtualmachine/VirtualizationService;->getInstance()Landroid/system/virtualmachine/VirtualizationService;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_17

    .line 428
    .local v1, "service":Landroid/system/virtualmachine/VirtualizationService;
    :try_start_7
    invoke-virtual {v1}, Landroid/system/virtualmachine/VirtualizationService;->getBinder()Landroid/system/virtualizationservice/IVirtualizationService;

    move-result-object v2

    invoke-interface {v2}, Landroid/system/virtualizationservice/IVirtualizationService;->isRemoteAttestationSupported()Z

    move-result v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_11
    .catchall {:try_start_7 .. :try_end_f} :catchall_17

    :try_start_f
    monitor-exit v0

    return v2

    .line 429
    :catch_11
    move-exception v2

    .line 430
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachineManager;
    throw v3

    .line 432
    .end local v1    # "service":Landroid/system/virtualmachine/VirtualizationService;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachineManager;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_17

    throw v1
.end method

.method public blacklist isUpdatableVmSupported()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 445
    sget-object v0, Landroid/system/virtualmachine/VirtualMachineManager;->sCreateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_3
    invoke-static {}, Landroid/system/virtualmachine/VirtualizationService;->getInstance()Landroid/system/virtualmachine/VirtualizationService;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_17

    .line 448
    .local v1, "service":Landroid/system/virtualmachine/VirtualizationService;
    :try_start_7
    invoke-virtual {v1}, Landroid/system/virtualmachine/VirtualizationService;->getBinder()Landroid/system/virtualizationservice/IVirtualizationService;

    move-result-object v2

    invoke-interface {v2}, Landroid/system/virtualizationservice/IVirtualizationService;->isUpdatableVmSupported()Z

    move-result v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_11
    .catchall {:try_start_7 .. :try_end_f} :catchall_17

    :try_start_f
    monitor-exit v0

    return v2

    .line 449
    :catch_11
    move-exception v2

    .line 450
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachineManager;
    throw v3

    .line 452
    .end local v1    # "service":Landroid/system/virtualmachine/VirtualizationService;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachineManager;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_17

    throw v1
.end method
