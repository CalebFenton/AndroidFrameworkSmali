.class Lcom/android/server/pm/ShortcutService$2;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    .line 2507
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$2;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 2510
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$2;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-get0(Lcom/android/server/pm/ShortcutService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 2511
    return-void

    #@d
    .line 2514
    :cond_0
    :try_start_0
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    #@10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 2515
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$2;->this$0:Lcom/android/server/pm/ShortcutService;

    #@1c
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutService;->handleLocaleChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 2509
    :cond_1
    :goto_0
    return-void

    #@20
    .line 2517
    :catch_0
    move-exception v0

    #@21
    .line 2518
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$2;->this$0:Lcom/android/server/pm/ShortcutService;

    #@23
    const-string/jumbo v2, "Exception in mReceiver.onReceive"

    #@26
    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@29
    goto :goto_0
.end method
