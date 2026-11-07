.class public abstract Landroid/service/vr/VrListenerService;
.super Landroid/app/Service;
.source "VrListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/vr/VrListenerService$VrListenerHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-o MSG_ON_CURRENT_VR_ACTIVITY_CHANGED:I = 0x1

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.vr.VrListenerService"


# instance fields
.field private final greylist-max-o mBinder:Landroid/service/vr/IVrListener$Stub;

.field private final greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/vr/VrListenerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/vr/VrListenerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 103
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 73
    new-instance v0, Landroid/service/vr/VrListenerService$1;

    invoke-direct {v0, p0}, Landroid/service/vr/VrListenerService$1;-><init>(Landroid/service/vr/VrListenerService;)V

    iput-object v0, p0, Landroid/service/vr/VrListenerService;->mBinder:Landroid/service/vr/IVrListener$Stub;

    .line 104
    new-instance v0, Landroid/service/vr/VrListenerService$VrListenerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/service/vr/VrListenerService$VrListenerHandler;-><init>(Landroid/service/vr/VrListenerService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/vr/VrListenerService;->mHandler:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method public static final whitelist isVrModePackageEnabled(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestedComponent"    # Landroid/content/ComponentName;

    .line 169
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 170
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_c

    .line 171
    const/4 v1, 0x0

    return v1

    .line 173
    :cond_c
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 100
    iget-object v0, p0, Landroid/service/vr/VrListenerService;->mBinder:Landroid/service/vr/IVrListener$Stub;

    return-object v0
.end method

.method public whitelist onCurrentVrActivityChanged(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 125
    return-void
.end method

.method public greylist-max-r onCurrentVrActivityChanged(Landroid/content/ComponentName;ZI)V
    .registers 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "running2dInVr"    # Z
    .param p3, "pid"    # I

    .line 148
    if-eqz p2, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    move-object v0, p1

    :goto_5
    invoke-virtual {p0, v0}, Landroid/service/vr/VrListenerService;->onCurrentVrActivityChanged(Landroid/content/ComponentName;)V

    .line 149
    return-void
.end method
