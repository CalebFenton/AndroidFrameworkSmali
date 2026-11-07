.class Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;
.super Landroid/hardware/usb/IDisplayPortAltModeInfoListener$Stub;
.source "UsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayPortAltModeInfoDispatchingListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/usb/UsbManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/usb/UsbManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 808
    iput-object p1, p0, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;->this$0:Landroid/hardware/usb/UsbManager;

    invoke-direct {p0}, Landroid/hardware/usb/IDisplayPortAltModeInfoListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;-><init>(Landroid/hardware/usb/UsbManager;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDisplayPortAltModeInfoChanged$0(Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;Ljava/lang/String;Landroid/hardware/usb/DisplayPortAltModeInfo;)V
    .registers 3
    .param p0, "callback"    # Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "displayPortAltModeInfo"    # Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 820
    invoke-interface {p0, p1, p2}, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;->onDisplayPortAltModeInfoChanged(Ljava/lang/String;Landroid/hardware/usb/DisplayPortAltModeInfo;)V

    return-void
.end method


# virtual methods
.method public blacklist onDisplayPortAltModeInfoChanged(Ljava/lang/String;Landroid/hardware/usb/DisplayPortAltModeInfo;)V
    .registers 14
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "displayPortAltModeInfo"    # Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 813
    iget-object v0, p0, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;->this$0:Landroid/hardware/usb/UsbManager;

    invoke-static {v0}, Landroid/hardware/usb/UsbManager;->-$$Nest$fgetmDisplayPortListenersLock(Landroid/hardware/usb/UsbManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 815
    :try_start_7
    iget-object v1, p0, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;->this$0:Landroid/hardware/usb/UsbManager;

    invoke-static {v1}, Landroid/hardware/usb/UsbManager;->-$$Nest$fgetmDisplayPortListeners(Landroid/hardware/usb/UsbManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 816
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 817
    .local v3, "executor":Ljava/util/concurrent/Executor;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;

    .line 818
    .local v4, "callback":Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_61

    .line 820
    .local v5, "token":J
    :try_start_31
    new-instance v7, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener$$ExternalSyntheticLambda0;

    invoke-direct {v7, v4, p1, p2}, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;Ljava/lang/String;Landroid/hardware/usb/DisplayPortAltModeInfo;)V

    invoke-interface {v3, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_39} :catch_3f
    .catchall {:try_start_31 .. :try_end_39} :catchall_3d

    .line 826
    :goto_39
    :try_start_39
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_61

    .line 827
    goto :goto_59

    .line 826
    :catchall_3d
    move-exception v1

    goto :goto_5a

    .line 822
    :catch_3f
    move-exception v7

    .line 823
    .local v7, "e":Ljava/lang/Exception;
    :try_start_40
    const-string v8, "UsbManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception during onDisplayPortAltModeInfoChanged from executor: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_40 .. :try_end_58} :catchall_3d

    goto :goto_39

    .line 828
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;Ljava/util/concurrent/Executor;>;"
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "callback":Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;
    .end local v5    # "token":J
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_59
    goto :goto_15

    .line 826
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;Ljava/util/concurrent/Executor;>;"
    .restart local v3    # "executor":Ljava/util/concurrent/Executor;
    .restart local v4    # "callback":Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;
    .restart local v5    # "token":J
    :goto_5a
    :try_start_5a
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 827
    nop

    .end local p0    # "this":Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;
    .end local p1    # "portId":Ljava/lang/String;
    .end local p2    # "displayPortAltModeInfo":Landroid/hardware/usb/DisplayPortAltModeInfo;
    throw v1

    .line 829
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;Ljava/util/concurrent/Executor;>;"
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "callback":Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;
    .end local v5    # "token":J
    .restart local p0    # "this":Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;
    .restart local p1    # "portId":Ljava/lang/String;
    .restart local p2    # "displayPortAltModeInfo":Landroid/hardware/usb/DisplayPortAltModeInfo;
    :cond_5f
    monitor-exit v0

    .line 830
    return-void

    .line 829
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_5a .. :try_end_63} :catchall_61

    throw v1
.end method
