.class Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseDialogReceiver"
.end annotation


# instance fields
.field public dialog:Landroid/app/Dialog;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 186
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    .line 187
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->mContext:Landroid/content/Context;

    #@5
    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    #@7
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    #@a
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@d
    .line 189
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@10
    .line 186
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "unused"    # Landroid/content/DialogInterface;

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@5
    .line 197
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    #@2
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    #@5
    .line 193
    return-void
.end method
