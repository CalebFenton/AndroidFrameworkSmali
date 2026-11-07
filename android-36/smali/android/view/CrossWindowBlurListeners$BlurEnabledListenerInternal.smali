.class final Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;
.super Landroid/view/ICrossWindowBlurEnabledListener$Stub;
.source "CrossWindowBlurListeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/CrossWindowBlurListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BlurEnabledListenerInternal"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/CrossWindowBlurListeners;


# direct methods
.method private constructor blacklist <init>(Landroid/view/CrossWindowBlurListeners;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 131
    iput-object p1, p0, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;->this$0:Landroid/view/CrossWindowBlurListeners;

    invoke-direct {p0}, Landroid/view/ICrossWindowBlurEnabledListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/CrossWindowBlurListeners;Landroid/view/CrossWindowBlurListeners-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;-><init>(Landroid/view/CrossWindowBlurListeners;)V

    return-void
.end method


# virtual methods
.method public blacklist onCrossWindowBlurEnabledChanged(Z)V
    .registers 9
    .param p1, "enabled"    # Z

    .line 134
    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 135
    :try_start_5
    iget-object v1, p0, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;->this$0:Landroid/view/CrossWindowBlurListeners;

    invoke-static {v1, p1}, Landroid/view/CrossWindowBlurListeners;->-$$Nest$fputmCrossWindowBlurEnabled(Landroid/view/CrossWindowBlurListeners;Z)V

    .line 137
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_47

    .line 139
    .local v1, "token":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    :try_start_f
    iget-object v4, p0, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;->this$0:Landroid/view/CrossWindowBlurListeners;

    invoke-static {v4}, Landroid/view/CrossWindowBlurListeners;->-$$Nest$fgetmListeners(Landroid/view/CrossWindowBlurListeners;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_3b

    .line 140
    iget-object v4, p0, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;->this$0:Landroid/view/CrossWindowBlurListeners;

    iget-object v5, p0, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;->this$0:Landroid/view/CrossWindowBlurListeners;

    invoke-static {v5}, Landroid/view/CrossWindowBlurListeners;->-$$Nest$fgetmListeners(Landroid/view/CrossWindowBlurListeners;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/function/Consumer;

    iget-object v6, p0, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;->this$0:Landroid/view/CrossWindowBlurListeners;

    invoke-static {v6}, Landroid/view/CrossWindowBlurListeners;->-$$Nest$fgetmListeners(Landroid/view/CrossWindowBlurListeners;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Executor;

    invoke-static {v4, v5, v6, p1}, Landroid/view/CrossWindowBlurListeners;->-$$Nest$mnotifyListener(Landroid/view/CrossWindowBlurListeners;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V
    :try_end_38
    .catchall {:try_start_f .. :try_end_38} :catchall_41

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 143
    .end local v3    # "i":I
    :cond_3b
    :try_start_3b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    nop

    .line 145
    .end local v1    # "token":J
    monitor-exit v0

    .line 146
    return-void

    .line 143
    .restart local v1    # "token":J
    :catchall_41
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    nop

    .end local p0    # "this":Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;
    .end local p1    # "enabled":Z
    throw v3

    .line 145
    .end local v1    # "token":J
    .restart local p0    # "this":Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;
    .restart local p1    # "enabled":Z
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3b .. :try_end_49} :catchall_47

    throw v1
.end method
