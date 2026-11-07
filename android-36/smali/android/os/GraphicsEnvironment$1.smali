.class Landroid/os/GraphicsEnvironment$1;
.super Landroid/content/BroadcastReceiver;
.source "GraphicsEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/GraphicsEnvironment;->showAngleInUseDialogBox(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/os/GraphicsEnvironment;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/GraphicsEnvironment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 724
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 727
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/GraphicsEnvironment$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v1

    .line 729
    .local v1, "results":Landroid/os/Bundle;
    const-string v2, "A4A Toast Message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 730
    .local v2, "toastMsg":Ljava/lang/String;
    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 731
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 732
    return-void
.end method
