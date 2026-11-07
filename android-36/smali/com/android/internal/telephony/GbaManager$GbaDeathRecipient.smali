.class final Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;
.super Ljava/lang/Object;
.source "GbaManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GbaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GbaDeathRecipient"
.end annotation


# instance fields
.field private blacklist mBinder:Landroid/os/IBinder;

.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/GbaManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/GbaManager;Landroid/content/ComponentName;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p2, p0, Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;->this$0:Lcom/android/internal/telephony/GbaManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GbaService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") has died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$mlogd(Lcom/android/internal/telephony/GbaManager;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;->unlinkToDeath()V

    .line 180
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p0}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$mretryBind(Lcom/android/internal/telephony/GbaManager;)V

    return-void
.end method

.method public blacklist linkToDeath(Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 159
    iput-object p1, p0, Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 160
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :cond_8
    return-void
.end method

.method public declared-synchronized blacklist unlinkToDeath()V
    .registers 3

    monitor-enter p0

    .line 165
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;->mBinder:Landroid/os/IBinder;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 167
    :try_start_6
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_9
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_9} :catch_c
    .catchall {:try_start_6 .. :try_end_9} :catchall_a

    goto :goto_c

    :catchall_a
    move-exception v0

    goto :goto_11

    :catch_c
    :goto_c
    const/4 v0, 0x0

    .line 171
    :try_start_d
    iput-object v0, p0, Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;->mBinder:Landroid/os/IBinder;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_a

    .line 173
    :cond_f
    monitor-exit p0

    return-void

    :goto_11
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_a

    throw v0
.end method
