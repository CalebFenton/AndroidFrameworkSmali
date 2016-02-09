.class public abstract Lcom/android/server/SystemService;
.super Ljava/lang/Object;
.source "SystemService.java"


# static fields
.field public static final PHASE_ACTIVITY_MANAGER_READY:I = 0x226

.field public static final PHASE_BOOT_COMPLETED:I = 0x3e8

.field public static final PHASE_LOCK_SETTINGS_READY:I = 0x1e0

.field public static final PHASE_SYSTEM_SERVICES_READY:I = 0x1f4

.field public static final PHASE_THIRD_PARTY_APPS_CAN_START:I = 0x258

.field public static final PHASE_WAIT_FOR_DEFAULT_DISPLAY:I = 0x64


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 95
    iput-object p1, p0, Lcom/android/server/SystemService;->mContext:Landroid/content/Context;

    #@5
    .line 94
    return-void
.end method

.method private getManager()Lcom/android/server/SystemServiceManager;
    .locals 1

    #@0
    .prologue
    .line 197
    const-class v0, Lcom/android/server/SystemServiceManager;

    #@2
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/SystemServiceManager;

    #@8
    return-object v0
.end method


# virtual methods
.method protected final getBinderService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 179
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/SystemService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method protected final getLocalService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 193
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final isSafeMode()Z
    .locals 1

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/SystemService;->getManager()Lcom/android/server/SystemServiceManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->isSafeMode()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public onBootPhase(I)V
    .locals 0
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 126
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 158
    return-void
.end method

.method public abstract onStart()V
.end method

.method public onStartUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 133
    return-void
.end method

.method public onStopUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 150
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 141
    return-void
.end method

.method protected final publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 164
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    #@4
    .line 163
    return-void
.end method

.method protected final publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/os/IBinder;
    .param p3, "allowIsolated"    # Z

    #@0
    .prologue
    .line 172
    invoke-static {p1, p2, p3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    #@3
    .line 171
    return-void
.end method

.method protected final publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 186
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "service":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@3
    .line 185
    return-void
.end method
