.class Landroid/app/sdksandbox/SharedPreferencesSyncManager$SharedPreferencesSyncCallback;
.super Landroid/app/sdksandbox/ISharedPreferencesSyncCallback$Stub;
.source "SharedPreferencesSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/sdksandbox/SharedPreferencesSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedPreferencesSyncCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/sdksandbox/SharedPreferencesSyncManager;


# direct methods
.method private constructor blacklist <init>(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 313
    iput-object p1, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager$SharedPreferencesSyncCallback;->this$0:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    invoke-direct {p0}, Landroid/app/sdksandbox/ISharedPreferencesSyncCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/sdksandbox/SharedPreferencesSyncManager;Landroid/app/sdksandbox/SharedPreferencesSyncManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/sdksandbox/SharedPreferencesSyncManager$SharedPreferencesSyncCallback;-><init>(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(ILjava/lang/String;)V
    .registers 8
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 327
    iget-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager$SharedPreferencesSyncCallback;->this$0:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    invoke-static {v0}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->-$$Nest$fgetmLock(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 329
    :try_start_7
    iget-object v1, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager$SharedPreferencesSyncCallback;->this$0:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    invoke-static {v1}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->-$$Nest$fgetmWaitingForSandbox(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)Z

    move-result v1

    if-nez v1, :cond_31

    const/4 v1, 0x1

    if-ne p1, v1, :cond_31

    .line 331
    const-string v2, "SdkSandboxSyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting for SdkSandbox: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v2, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager$SharedPreferencesSyncCallback;->this$0:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    invoke-static {v2, v1}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->-$$Nest$fputmWaitingForSandbox(Landroid/app/sdksandbox/SharedPreferencesSyncManager;Z)V

    .line 334
    monitor-exit v0

    return-void

    .line 336
    :cond_31
    const-string v1, "SdkSandboxSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errorMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    monitor-exit v0

    .line 338
    return-void

    .line 337
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_7 .. :try_end_57} :catchall_55

    throw v1
.end method

.method public blacklist onSandboxStart()V
    .registers 4

    .line 316
    iget-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager$SharedPreferencesSyncCallback;->this$0:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    invoke-static {v0}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->-$$Nest$fgetmLock(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 317
    :try_start_7
    iget-object v1, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager$SharedPreferencesSyncCallback;->this$0:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    invoke-static {v1}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->-$$Nest$fgetmWaitingForSandbox(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 319
    iget-object v1, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager$SharedPreferencesSyncCallback;->this$0:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->-$$Nest$fputmWaitingForSandbox(Landroid/app/sdksandbox/SharedPreferencesSyncManager;Z)V

    .line 320
    iget-object v1, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager$SharedPreferencesSyncCallback;->this$0:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    invoke-static {v1}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->-$$Nest$mbulkSyncData(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)V

    .line 322
    :cond_1a
    monitor-exit v0

    .line 323
    return-void

    .line 322
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method
