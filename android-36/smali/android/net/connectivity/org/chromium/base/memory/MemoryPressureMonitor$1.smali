.class Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$1;
.super Ljava/lang/Object;
.source "MemoryPressureMonitor.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->registerComponentCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;


# direct methods
.method public static synthetic blacklist $r8$lambda$XLlJx23_MhoKOAyIyNQlwvKEd3w(Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$1;->lambda$onLowMemory$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ccIwHjL8kjhot_jj-vKl4nnQ33c(Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$1;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$1;->lambda$onTrimMemory$0(Ljava/lang/Integer;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 117
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$1;->this$0:Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onLowMemory$1()V
    .registers 3

    .line 143
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$1;->this$0:Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->notifyPressure(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onTrimMemory$0(Ljava/lang/Integer;)V
    .registers 4
    .param p1, "pressure"    # Ljava/lang/Integer;

    .line 123
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$1;->this$0:Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->notifyPressure(I)V

    return-void
.end method


# virtual methods
.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 147
    return-void
.end method

.method public whitelist onLowMemory()V
    .registers 3

    .line 141
    new-instance v0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$1$$ExternalSyntheticLambda1;-><init>(Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$1;)V

    const/4 v1, 0x7

    invoke-static {v1, v0}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .registers 5
    .param p1, "level"    # I

    .line 120
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->memoryPressureFromTrimLevel(I)Ljava/lang/Integer;

    move-result-object v0

    .line 121
    .local v0, "pressure":Ljava/lang/Integer;
    if-eqz v0, :cond_f

    .line 122
    new-instance v1, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$1$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$1;Ljava/lang/Integer;)V

    const/4 v2, 0x7

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    .line 131
    :cond_f
    const/16 v1, 0x28

    if-ne p1, v1, :cond_1c

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_1c

    .line 135
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->onPreFreeze()V

    .line 137
    :cond_1c
    return-void
.end method
