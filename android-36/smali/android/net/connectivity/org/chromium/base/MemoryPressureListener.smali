.class public Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;
.super Ljava/lang/Object;
.source "MemoryPressureListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/MemoryPressureListener$Natives;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist ACTION_LOW_MEMORY:Ljava/lang/String; = "org.chromium.base.ACTION_LOW_MEMORY"

.field private static final blacklist ACTION_TRIM_MEMORY:Ljava/lang/String; = "org.chromium.base.ACTION_TRIM_MEMORY"

.field private static final blacklist ACTION_TRIM_MEMORY_MODERATE:Ljava/lang/String; = "org.chromium.base.ACTION_TRIM_MEMORY_MODERATE"

.field private static final blacklist ACTION_TRIM_MEMORY_RUNNING_CRITICAL:Ljava/lang/String; = "org.chromium.base.ACTION_TRIM_MEMORY_RUNNING_CRITICAL"

.field private static blacklist sCallbacks:Landroid/net/connectivity/org/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/ObserverList<",
            "Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sSelfFreezeCallbacks:Landroid/net/connectivity/org/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/ObserverList<",
            "Landroid/net/connectivity/org/chromium/base/memory/SelfFreezeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sSelfFreezeHandler:Landroid/os/Handler;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 33
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addCallback(Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureCallback;

    .line 78
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 79
    sget-object v0, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->sCallbacks:Landroid/net/connectivity/org/chromium/base/ObserverList;

    if-nez v0, :cond_e

    new-instance v0, Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->sCallbacks:Landroid/net/connectivity/org/chromium/base/ObserverList;

    .line 80
    :cond_e
    sget-object v0, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->sCallbacks:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method private static blacklist addNativeCallback()V
    .registers 1

    .line 68
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 69
    new-instance v0, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->addCallback(Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureCallback;)V

    .line 70
    return-void
.end method

.method public static blacklist addSelfFreezeCallback(Landroid/net/connectivity/org/chromium/base/memory/SelfFreezeCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/net/connectivity/org/chromium/base/memory/SelfFreezeCallback;

    .line 85
    sget-object v0, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->sSelfFreezeCallbacks:Landroid/net/connectivity/org/chromium/base/ObserverList;

    if-nez v0, :cond_b

    new-instance v0, Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->sSelfFreezeCallbacks:Landroid/net/connectivity/org/chromium/base/ObserverList;

    .line 86
    :cond_b
    sget-object v0, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->sSelfFreezeCallbacks:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->sSelfFreezeHandler:Landroid/os/Handler;

    if-nez v0, :cond_1c

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->sSelfFreezeHandler:Landroid/os/Handler;

    .line 91
    nop

    .line 93
    :cond_1c
    nop

    .line 94
    return-void
.end method

.method public static blacklist handleDebugIntent(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "action"    # Ljava/lang/String;

    .line 160
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 161
    const-string v0, "org.chromium.base.ACTION_LOW_MEMORY"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 162
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->simulateLowMemoryPressureSignal(Landroid/app/Activity;)V

    goto :goto_38

    .line 163
    :cond_f
    const-string v0, "org.chromium.base.ACTION_TRIM_MEMORY"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 164
    const/16 v0, 0x50

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->simulateTrimMemoryPressureSignal(Landroid/app/Activity;I)V

    goto :goto_38

    .line 165
    :cond_1d
    const-string v0, "org.chromium.base.ACTION_TRIM_MEMORY_RUNNING_CRITICAL"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 166
    const/16 v0, 0xf

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->simulateTrimMemoryPressureSignal(Landroid/app/Activity;I)V

    goto :goto_38

    .line 168
    :cond_2b
    const-string v0, "org.chromium.base.ACTION_TRIM_MEMORY_MODERATE"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 169
    const/16 v0, 0x3c

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->simulateTrimMemoryPressureSignal(Landroid/app/Activity;I)V

    .line 174
    :goto_38
    const/4 v0, 0x1

    return v0

    .line 171
    :cond_3a
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isTrimMemoryBackgroundCritical()Z
    .registers 1

    .line 151
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->getInstance()Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 152
    :cond_c
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/MemoryPressureListenerJni;->get()Landroid/net/connectivity/org/chromium/base/MemoryPressureListener$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener$Natives;->isTrimMemoryBackgroundCritical()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$addNativeCallback$0(I)V
    .registers 2
    .param p0, "pressure"    # I

    .line 69
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/MemoryPressureListenerJni;->get()Landroid/net/connectivity/org/chromium/base/MemoryPressureListener$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener$Natives;->onMemoryPressure(I)V

    return-void
.end method

.method static synthetic blacklist lambda$notifySelfFreeze$1()V
    .registers 2

    .line 133
    sget-object v0, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->sSelfFreezeCallbacks:Landroid/net/connectivity/org/chromium/base/ObserverList;

    if-nez v0, :cond_5

    return-void

    .line 134
    :cond_5
    sget-object v0, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->sSelfFreezeCallbacks:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/memory/SelfFreezeCallback;

    .line 135
    .local v1, "callback":Landroid/net/connectivity/org/chromium/base/memory/SelfFreezeCallback;
    invoke-interface {v1}, Landroid/net/connectivity/org/chromium/base/memory/SelfFreezeCallback;->onSelfFreeze()V

    .line 136
    .end local v1    # "callback":Landroid/net/connectivity/org/chromium/base/memory/SelfFreezeCallback;
    goto :goto_b

    .line 137
    :cond_1b
    return-void
.end method

.method public static blacklist notifyMemoryPressure(I)V
    .registers 3
    .param p0, "pressure"    # I

    .line 121
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 122
    sget-object v0, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->sCallbacks:Landroid/net/connectivity/org/chromium/base/ObserverList;

    if-nez v0, :cond_8

    return-void

    .line 123
    :cond_8
    sget-object v0, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->sCallbacks:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureCallback;

    .line 124
    .local v1, "callback":Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureCallback;
    invoke-interface {v1, p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureCallback;->onPressure(I)V

    .line 125
    .end local v1    # "callback":Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureCallback;
    goto :goto_e

    .line 126
    :cond_1e
    return-void
.end method

.method public static blacklist notifySelfFreeze()V
    .registers 2

    .line 129
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 130
    sget-object v0, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->sSelfFreezeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    .line 131
    sget-object v0, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->sSelfFreezeHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    :cond_11
    return-void
.end method

.method public static blacklist onPreFreeze()V
    .registers 1

    .line 146
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->getInstance()Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 147
    :cond_b
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/MemoryPressureListenerJni;->get()Landroid/net/connectivity/org/chromium/base/MemoryPressureListener$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener$Natives;->onPreFreeze()V

    .line 148
    return-void
.end method

.method public static blacklist removeCallback(Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureCallback;

    .line 101
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 102
    sget-object v0, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->sCallbacks:Landroid/net/connectivity/org/chromium/base/ObserverList;

    if-nez v0, :cond_8

    return-void

    .line 103
    :cond_8
    sget-object v0, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->sCallbacks:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public static blacklist removeSelfFreezeCallback(Landroid/net/connectivity/org/chromium/base/memory/SelfFreezeCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/net/connectivity/org/chromium/base/memory/SelfFreezeCallback;

    .line 107
    nop

    .line 108
    nop

    .line 109
    sget-object v0, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->sSelfFreezeCallbacks:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method private static blacklist simulateLowMemoryPressureSignal(Landroid/app/Activity;)V
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->onLowMemory()V

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 183
    return-void
.end method

.method private static blacklist simulateTrimMemoryPressureSignal(Landroid/app/Activity;I)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "level"    # I

    .line 189
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 190
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 191
    return-void
.end method
