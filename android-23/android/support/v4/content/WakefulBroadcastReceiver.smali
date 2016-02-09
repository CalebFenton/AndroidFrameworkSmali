.class public abstract Landroid/support/v4/content/WakefulBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WakefulBroadcastReceiver.java"


# static fields
.field private static final EXTRA_WAKE_LOCK_ID:Ljava/lang/String; = "android.support.content.wakelockid"

.field private static final mActiveWakeLocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private static mNextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 63
    new-instance v0, Landroid/util/SparseArray;

    #@2
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@5
    .line 62
    sput-object v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    #@7
    .line 64
    const/4 v0, 0x1

    #@8
    sput v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    #@a
    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    return-void
.end method

.method public static completeWakefulIntent(Landroid/content/Intent;)Z
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 113
    const-string/jumbo v2, "android.support.content.wakelockid"

    #@5
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@8
    move-result v0

    #@9
    .line 114
    .local v0, "id":I
    if-nez v0, :cond_0

    #@b
    .line 115
    return v3

    #@c
    .line 117
    :cond_0
    sget-object v3, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    #@e
    monitor-enter v3

    #@f
    .line 118
    :try_start_0
    sget-object v2, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/os/PowerManager$WakeLock;

    #@17
    .line 119
    .local v1, "wl":Landroid/os/PowerManager$WakeLock;
    if-eqz v1, :cond_1

    #@19
    .line 120
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1c
    .line 121
    sget-object v2, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    #@1e
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit v3

    #@22
    .line 122
    return v6

    #@23
    .line 130
    :cond_1
    :try_start_1
    const-string/jumbo v2, "WakefulBroadcastReceiver"

    #@26
    new-instance v4, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v5, "No active wake lock id #"

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    monitor-exit v3

    #@3e
    .line 131
    return v6

    #@3f
    .line 117
    .end local v1    # "wl":Landroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v2

    #@40
    monitor-exit v3

    #@41
    throw v2
.end method

.method public static startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 81
    sget-object v5, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    #@3
    monitor-enter v5

    #@4
    .line 82
    :try_start_0
    sget v1, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    #@6
    .line 83
    .local v1, "id":I
    sget v4, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    #@8
    add-int/lit8 v4, v4, 0x1

    #@a
    sput v4, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    #@c
    .line 84
    sget v4, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    #@e
    if-gtz v4, :cond_0

    #@10
    .line 85
    const/4 v4, 0x1

    #@11
    sput v4, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    #@13
    .line 88
    :cond_0
    const-string/jumbo v4, "android.support.content.wakelockid"

    #@16
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@19
    .line 89
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v0

    #@1d
    .line 90
    .local v0, "comp":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    #@1f
    monitor-exit v5

    #@20
    .line 91
    return-object v6

    #@21
    .line 94
    :cond_1
    :try_start_1
    const-string/jumbo v4, "power"

    #@24
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/os/PowerManager;

    #@2a
    .line 96
    .local v2, "pm":Landroid/os/PowerManager;
    new-instance v4, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v6, "wake:"

    #@32
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    .line 95
    const/4 v6, 0x1

    #@43
    invoke-virtual {v2, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@46
    move-result-object v3

    #@47
    .line 97
    .local v3, "wl":Landroid/os/PowerManager$WakeLock;
    const/4 v4, 0x0

    #@48
    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@4b
    .line 98
    const-wide/32 v6, 0xea60

    #@4e
    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    #@51
    .line 99
    sget-object v4, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    #@53
    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    monitor-exit v5

    #@57
    .line 100
    return-object v0

    #@58
    .line 81
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v1    # "id":I
    .end local v2    # "pm":Landroid/os/PowerManager;
    .end local v3    # "wl":Landroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v4

    #@59
    monitor-exit v5

    #@5a
    throw v4
.end method
