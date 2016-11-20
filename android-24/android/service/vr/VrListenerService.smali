.class public abstract Landroid/service/vr/VrListenerService;
.super Landroid/app/Service;
.source "VrListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/vr/VrListenerService$1;,
        Landroid/service/vr/VrListenerService$VrListenerHandler;
    }
.end annotation


# static fields
.field private static final MSG_ON_CURRENT_VR_ACTIVITY_CHANGED:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.vr.VrListenerService"


# instance fields
.field private final mBinder:Landroid/service/vr/IVrListener$Stub;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/service/vr/VrListenerService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/vr/VrListenerService;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 71
    new-instance v0, Landroid/service/vr/VrListenerService$1;

    #@5
    invoke-direct {v0, p0}, Landroid/service/vr/VrListenerService$1;-><init>(Landroid/service/vr/VrListenerService;)V

    #@8
    iput-object v0, p0, Landroid/service/vr/VrListenerService;->mBinder:Landroid/service/vr/IVrListener$Stub;

    #@a
    .line 99
    new-instance v0, Landroid/service/vr/VrListenerService$VrListenerHandler;

    #@c
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, p0, v1}, Landroid/service/vr/VrListenerService$VrListenerHandler;-><init>(Landroid/service/vr/VrListenerService;Landroid/os/Looper;)V

    #@13
    iput-object v0, p0, Landroid/service/vr/VrListenerService;->mHandler:Landroid/os/Handler;

    #@15
    .line 98
    return-void
.end method

.method public static final isVrModePackageEnabled(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestedComponent"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 140
    const-class v1, Landroid/app/ActivityManager;

    #@2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActivityManager;

    #@8
    .line 141
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_0

    #@a
    .line 142
    const/4 v1, 0x0

    #@b
    return v1

    #@c
    .line 144
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    #@f
    move-result v1

    #@10
    return v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Landroid/service/vr/VrListenerService;->mBinder:Landroid/service/vr/IVrListener$Stub;

    #@2
    return-object v0
.end method

.method public onCurrentVrActivityChanged(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 118
    return-void
.end method
