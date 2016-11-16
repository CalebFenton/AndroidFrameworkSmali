.class Landroid/app/SearchDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "SearchDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SearchDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/SearchDialog;


# direct methods
.method constructor <init>(Landroid/app/SearchDialog;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/SearchDialog;

    #@0
    .prologue
    .line 103
    iput-object p1, p0, Landroid/app/SearchDialog$1;->this$0:Landroid/app/SearchDialog;

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
    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 107
    iget-object v0, p0, Landroid/app/SearchDialog$1;->this$0:Landroid/app/SearchDialog;

    #@f
    invoke-virtual {v0}, Landroid/app/SearchDialog;->onConfigurationChanged()V

    #@12
    .line 105
    :cond_0
    return-void
.end method
