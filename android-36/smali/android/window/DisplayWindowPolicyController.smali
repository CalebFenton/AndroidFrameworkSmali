.class public abstract Landroid/window/DisplayWindowPolicyController;
.super Ljava/lang/Object;
.source "DisplayWindowPolicyController.java"


# instance fields
.field private final blacklist mSupportedWindowingModes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSystemWindowFlags:I

.field private blacklist mWindowFlags:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/window/DisplayWindowPolicyController;->mSupportedWindowingModes:Ljava/util/Set;

    .line 69
    iget-object v0, p0, Landroid/window/DisplayWindowPolicyController;->mSupportedWindowingModes:Ljava/util/Set;

    monitor-enter v0

    .line 70
    :try_start_d
    iget-object v1, p0, Landroid/window/DisplayWindowPolicyController;->mSupportedWindowingModes:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v1, p0, Landroid/window/DisplayWindowPolicyController;->mSupportedWindowingModes:Ljava/util/Set;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 72
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_23

    throw v1
.end method


# virtual methods
.method public abstract blacklist canActivityBeLaunched(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IIZZLjava/util/function/Supplier;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/Intent;",
            "IIZZ",
            "Ljava/util/function/Supplier<",
            "Landroid/content/IntentSender;",
            ">;)Z"
        }
    .end annotation
.end method

.method public blacklist canContainActivities(Ljava/util/List;I)Z
    .registers 7
    .param p2, "windowingMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ActivityInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 128
    .local p1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 129
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, p2, v2, v3}, Landroid/window/DisplayWindowPolicyController;->canContainActivity(Landroid/content/pm/ActivityInfo;IIZ)Z

    move-result v1

    if-nez v1, :cond_16

    .line 131
    return v3

    .line 128
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract blacklist canContainActivity(Landroid/content/pm/ActivityInfo;IIZ)Z
.end method

.method public abstract blacklist canShowTasksInHostDeviceRecents()Z
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DisplayWindowPolicyController{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mWindowFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/DisplayWindowPolicyController;->mWindowFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mSystemWindowFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/DisplayWindowPolicyController;->mSystemWindowFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public abstract blacklist getCustomHomeComponent()Landroid/content/ComponentName;
.end method

.method public blacklist isEnteringPipAllowed(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 190
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/window/DisplayWindowPolicyController;->isWindowingModeSupported(I)Z

    move-result v0

    return v0
.end method

.method public final blacklist isInterestedWindowFlags(II)Z
    .registers 4
    .param p1, "windowFlags"    # I
    .param p2, "systemWindowFlags"    # I

    .line 79
    iget v0, p0, Landroid/window/DisplayWindowPolicyController;->mWindowFlags:I

    and-int/2addr v0, p1

    if-nez v0, :cond_d

    iget v0, p0, Landroid/window/DisplayWindowPolicyController;->mSystemWindowFlags:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public final blacklist isWindowingModeSupported(I)Z
    .registers 5
    .param p1, "windowingMode"    # I

    .line 96
    iget-object v0, p0, Landroid/window/DisplayWindowPolicyController;->mSupportedWindowingModes:Ljava/util/Set;

    monitor-enter v0

    .line 97
    :try_start_3
    iget-object v1, p0, Landroid/window/DisplayWindowPolicyController;->mSupportedWindowingModes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 98
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public abstract blacklist keepActivityOnWindowFlagsChanged(Landroid/content/pm/ActivityInfo;II)Z
.end method

.method public blacklist onRunningAppsChanged(Landroid/util/ArraySet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p1, "runningUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    return-void
.end method

.method public blacklist onTopActivityChanged(Landroid/content/ComponentName;II)V
    .registers 4
    .param p1, "topActivity"    # Landroid/content/ComponentName;
    .param p2, "uid"    # I
    .param p3, "userId"    # I

    .line 176
    return-void
.end method

.method public final blacklist setInterestedWindowFlags(II)V
    .registers 3
    .param p1, "windowFlags"    # I
    .param p2, "systemWindowFlags"    # I

    .line 87
    iput p1, p0, Landroid/window/DisplayWindowPolicyController;->mWindowFlags:I

    .line 88
    iput p2, p0, Landroid/window/DisplayWindowPolicyController;->mSystemWindowFlags:I

    .line 89
    return-void
.end method

.method public final blacklist setSupportedWindowingModes(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p1, "supportedWindowingModes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/window/DisplayWindowPolicyController;->mSupportedWindowingModes:Ljava/util/Set;

    monitor-enter v0

    .line 109
    :try_start_3
    iget-object v1, p0, Landroid/window/DisplayWindowPolicyController;->mSupportedWindowingModes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 110
    iget-object v1, p0, Landroid/window/DisplayWindowPolicyController;->mSupportedWindowingModes:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 111
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method
