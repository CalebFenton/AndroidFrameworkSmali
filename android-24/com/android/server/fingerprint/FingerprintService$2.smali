.class Lcom/android/server/fingerprint/FingerprintService$2;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;

    #@0
    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 131
    const-string/jumbo v0, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    #@3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 132
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@f
    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->resetFailedAttempts()V

    #@12
    .line 130
    :cond_0
    return-void
.end method
