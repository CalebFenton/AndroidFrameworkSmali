.class Landroid/nfc/NfcControllerAlwaysOnListener$1;
.super Ljava/lang/Object;
.source "NfcControllerAlwaysOnListener.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nfc/NfcControllerAlwaysOnListener;->linkToNfcDeath()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/nfc/NfcControllerAlwaysOnListener;


# direct methods
.method constructor blacklist <init>(Landroid/nfc/NfcControllerAlwaysOnListener;)V
    .registers 2
    .param p1, "this$0"    # Landroid/nfc/NfcControllerAlwaysOnListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 46
    iput-object p1, p0, Landroid/nfc/NfcControllerAlwaysOnListener$1;->this$0:Landroid/nfc/NfcControllerAlwaysOnListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 5

    .line 49
    monitor-enter p0

    .line 50
    :try_start_1
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener$1;->this$0:Landroid/nfc/NfcControllerAlwaysOnListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/nfc/NfcControllerAlwaysOnListener;->-$$Nest$fputmDeathRecipient(Landroid/nfc/NfcControllerAlwaysOnListener;Landroid/os/IBinder$DeathRecipient;)V

    .line 51
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1c

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/nfc/NfcControllerAlwaysOnListener$1$1;

    invoke-direct {v1, p0, v0}, Landroid/nfc/NfcControllerAlwaysOnListener$1$1;-><init>(Landroid/nfc/NfcControllerAlwaysOnListener$1;Landroid/os/Handler;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    return-void

    .line 51
    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method
