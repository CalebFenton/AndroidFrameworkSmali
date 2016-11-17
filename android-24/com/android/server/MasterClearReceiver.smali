.class public Lcom/android/server/MasterClearReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MasterClear"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    const-string/jumbo v2, "com.google.android.c2dm.intent.RECEIVE"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 40
    const-string/jumbo v1, "google.com"

    #@11
    const-string/jumbo v2, "from"

    #@14
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_0

    #@1e
    .line 41
    const-string/jumbo v1, "MasterClear"

    #@21
    const-string/jumbo v2, "Ignoring master clear request -- not from trusted server."

    #@24
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 42
    return-void

    #@28
    .line 46
    :cond_0
    const-string/jumbo v1, "shutdown"

    #@2b
    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@2e
    move-result v4

    #@2f
    .line 47
    .local v4, "shutdown":Z
    const-string/jumbo v1, "android.intent.extra.REASON"

    #@32
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    .line 49
    .local v5, "reason":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    #@39
    .line 48
    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@3c
    move-result v6

    #@3d
    .line 51
    .local v6, "wipeExternalStorage":Z
    const-string/jumbo v1, "MasterClear"

    #@40
    const-string/jumbo v2, "!!! FACTORY RESET !!!"

    #@43
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 53
    new-instance v0, Lcom/android/server/MasterClearReceiver$1;

    #@48
    const-string/jumbo v2, "Reboot"

    #@4b
    move-object v1, p0

    #@4c
    move-object v3, p1

    #@4d
    invoke-direct/range {v0 .. v5}, Lcom/android/server/MasterClearReceiver$1;-><init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;)V

    #@50
    .line 67
    .local v0, "thr":Ljava/lang/Thread;
    if-eqz v6, :cond_1

    #@52
    .line 69
    new-instance v1, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;

    #@54
    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Ljava/lang/Thread;)V

    #@57
    new-array v2, v7, [Ljava/lang/Void;

    #@59
    invoke-virtual {v1, v2}, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@5c
    .line 38
    :goto_0
    return-void

    #@5d
    .line 71
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@60
    goto :goto_0
.end method
