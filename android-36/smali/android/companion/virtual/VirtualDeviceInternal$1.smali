.class Landroid/companion/virtual/VirtualDeviceInternal$1;
.super Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;
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

    .line 101
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal$1;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-direct {p0}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onActivityLaunchBlocked(ILandroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/IntentSender;)V
    .registers 10
    .param p1, "displayId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "intentSender"    # Landroid/content/IntentSender;

    .line 138
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 140
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal$1;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v2}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmActivityListenersLock(Landroid/companion/virtual/VirtualDeviceInternal;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_33

    .line 141
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    :try_start_c
    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceInternal$1;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v4}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceInternal;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_2a

    .line 142
    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceInternal$1;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v4}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceInternal;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;

    .line 143
    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->onActivityLaunchBlocked(ILandroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/IntentSender;)V

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 146
    .end local v3    # "i":I
    :cond_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_30

    .line 148
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    nop

    .line 150
    return-void

    .line 146
    :catchall_30
    move-exception v3

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    .end local v0    # "token":J
    .end local p0    # "this":Landroid/companion/virtual/VirtualDeviceInternal$1;
    .end local p1    # "displayId":I
    .end local p2    # "componentName":Landroid/content/ComponentName;
    .end local p3    # "user":Landroid/os/UserHandle;
    .end local p4    # "intentSender":Landroid/content/IntentSender;
    :try_start_32
    throw v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 148
    .restart local v0    # "token":J
    .restart local p0    # "this":Landroid/companion/virtual/VirtualDeviceInternal$1;
    .restart local p1    # "displayId":I
    .restart local p2    # "componentName":Landroid/content/ComponentName;
    .restart local p3    # "user":Landroid/os/UserHandle;
    .restart local p4    # "intentSender":Landroid/content/IntentSender;
    :catchall_33
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    throw v2
.end method

.method public blacklist onDisplayEmpty(I)V
    .registers 7
    .param p1, "displayId"    # I

    .line 123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 125
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal$1;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v2}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmActivityListenersLock(Landroid/companion/virtual/VirtualDeviceInternal;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_33

    .line 126
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    :try_start_c
    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceInternal$1;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v4}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceInternal;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_2a

    .line 127
    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceInternal$1;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v4}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceInternal;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;

    invoke-virtual {v4, p1}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->onDisplayEmpty(I)V

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 129
    .end local v3    # "i":I
    :cond_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_30

    .line 131
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    nop

    .line 133
    return-void

    .line 129
    :catchall_30
    move-exception v3

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    .end local v0    # "token":J
    .end local p0    # "this":Landroid/companion/virtual/VirtualDeviceInternal$1;
    .end local p1    # "displayId":I
    :try_start_32
    throw v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 131
    .restart local v0    # "token":J
    .restart local p0    # "this":Landroid/companion/virtual/VirtualDeviceInternal$1;
    .restart local p1    # "displayId":I
    :catchall_33
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    throw v2
.end method

.method public blacklist onSecureWindowHidden(I)V
    .registers 7
    .param p1, "displayId"    # I

    .line 170
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 172
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal$1;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v2}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmActivityListenersLock(Landroid/companion/virtual/VirtualDeviceInternal;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_33

    .line 173
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    :try_start_c
    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceInternal$1;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v4}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceInternal;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_2a

    .line 174
    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceInternal$1;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v4}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceInternal;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;

    invoke-virtual {v4, p1}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->onSecureWindowHidden(I)V

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 176
    .end local v3    # "i":I
    :cond_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_30

    .line 178
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    nop

    .line 180
    return-void

    .line 176
    :catchall_30
    move-exception v3

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    .end local v0    # "token":J
    .end local p0    # "this":Landroid/companion/virtual/VirtualDeviceInternal$1;
    .end local p1    # "displayId":I
    :try_start_32
    throw v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 178
    .restart local v0    # "token":J
    .restart local p0    # "this":Landroid/companion/virtual/VirtualDeviceInternal$1;
    .restart local p1    # "displayId":I
    :catchall_33
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    throw v2
.end method

.method public blacklist onSecureWindowShown(ILandroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 155
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 157
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal$1;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v2}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmActivityListenersLock(Landroid/companion/virtual/VirtualDeviceInternal;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_33

    .line 158
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    :try_start_c
    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceInternal$1;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v4}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceInternal;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_2a

    .line 159
    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceInternal$1;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v4}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceInternal;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;

    .line 160
    invoke-virtual {v4, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->onSecureWindowShown(ILandroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 162
    .end local v3    # "i":I
    :cond_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_30

    .line 164
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 165
    nop

    .line 166
    return-void

    .line 162
    :catchall_30
    move-exception v3

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    .end local v0    # "token":J
    .end local p0    # "this":Landroid/companion/virtual/VirtualDeviceInternal$1;
    .end local p1    # "displayId":I
    .end local p2    # "componentName":Landroid/content/ComponentName;
    .end local p3    # "user":Landroid/os/UserHandle;
    :try_start_32
    throw v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 164
    .restart local v0    # "token":J
    .restart local p0    # "this":Landroid/companion/virtual/VirtualDeviceInternal$1;
    .restart local p1    # "displayId":I
    .restart local p2    # "componentName":Landroid/content/ComponentName;
    .restart local p3    # "user":Landroid/os/UserHandle;
    :catchall_33
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 165
    throw v2
.end method

.method public blacklist onTopActivityChanged(ILandroid/content/ComponentName;I)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "topActivity"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 108
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal$1;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v2}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmActivityListenersLock(Landroid/companion/virtual/VirtualDeviceInternal;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_42

    .line 109
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    :try_start_c
    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceInternal$1;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v4}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceInternal;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_39

    .line 110
    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceInternal$1;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v4}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceInternal;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;

    .line 111
    invoke-virtual {v4, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->onTopActivityChanged(ILandroid/content/ComponentName;)V

    .line 112
    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceInternal$1;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v4}, Landroid/companion/virtual/VirtualDeviceInternal;->-$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceInternal;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;

    .line 113
    invoke-virtual {v4, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->onTopActivityChanged(ILandroid/content/ComponentName;I)V

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 115
    .end local v3    # "i":I
    :cond_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_3f

    .line 117
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    nop

    .line 119
    return-void

    .line 115
    :catchall_3f
    move-exception v3

    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    .end local v0    # "token":J
    .end local p0    # "this":Landroid/companion/virtual/VirtualDeviceInternal$1;
    .end local p1    # "displayId":I
    .end local p2    # "topActivity":Landroid/content/ComponentName;
    .end local p3    # "userId":I
    :try_start_41
    throw v3
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    .line 117
    .restart local v0    # "token":J
    .restart local p0    # "this":Landroid/companion/virtual/VirtualDeviceInternal$1;
    .restart local p1    # "displayId":I
    .restart local p2    # "topActivity":Landroid/content/ComponentName;
    .restart local p3    # "userId":I
    :catchall_42
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    throw v2
.end method
