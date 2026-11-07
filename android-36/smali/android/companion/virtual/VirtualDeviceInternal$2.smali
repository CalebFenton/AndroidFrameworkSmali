.class Landroid/companion/virtual/VirtualDeviceInternal$2;
.super Landroid/companion/virtual/IVirtualDeviceSoundEffectListener$Stub;
.source "VirtualDeviceInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/companion/virtual/VirtualDeviceInternal;


# direct methods
.method constructor blacklist <init>(Landroid/companion/virtual/VirtualDeviceInternal;)V
    .registers 2
    .param p1, "this$0"    # Landroid/companion/virtual/VirtualDeviceInternal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 184
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal$2;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-direct {p0}, Landroid/companion/virtual/IVirtualDeviceSoundEffectListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onPlaySoundEffect(I)V
    .registers 7
    .param p1, "soundEffect"    # I

    .line 187
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 189
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal$2;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v2}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmSoundEffectListenersLock(Landroid/companion/virtual/VirtualDeviceInternal;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_33

    .line 190
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    :try_start_c
    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceInternal$2;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v4}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmSoundEffectListeners(Landroid/companion/virtual/VirtualDeviceInternal;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_2a

    .line 191
    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceInternal$2;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v4}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmSoundEffectListeners(Landroid/companion/virtual/VirtualDeviceInternal;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;

    invoke-virtual {v4, p1}, Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;->onPlaySoundEffect(I)V

    .line 190
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 193
    .end local v3    # "i":I
    :cond_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_30

    .line 195
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 196
    nop

    .line 197
    return-void

    .line 193
    :catchall_30
    move-exception v3

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    .end local v0    # "token":J
    .end local p0    # "this":Landroid/companion/virtual/VirtualDeviceInternal$2;
    .end local p1    # "soundEffect":I
    :try_start_32
    throw v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 195
    .restart local v0    # "token":J
    .restart local p0    # "this":Landroid/companion/virtual/VirtualDeviceInternal$2;
    .restart local p1    # "soundEffect":I
    :catchall_33
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 196
    throw v2
.end method
