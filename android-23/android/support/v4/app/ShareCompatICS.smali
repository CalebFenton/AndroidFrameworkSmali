.class Landroid/support/v4/app/ShareCompatICS;
.super Ljava/lang/Object;
.source "ShareCompatICS.java"


# static fields
.field private static final HISTORY_FILENAME_PREFIX:Ljava/lang/String; = ".sharecompat_"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static configureMenuItem(Landroid/view/MenuItem;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 4
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "callingActivity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 29
    invoke-interface {p0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    #@3
    move-result-object v0

    #@4
    .line 30
    .local v0, "itemProvider":Landroid/view/ActionProvider;
    const/4 v1, 0x0

    #@5
    .line 31
    .local v1, "provider":Landroid/widget/ShareActionProvider;
    instance-of v2, v0, Landroid/widget/ShareActionProvider;

    #@7
    if-nez v2, :cond_0

    #@9
    .line 32
    new-instance v1, Landroid/widget/ShareActionProvider;

    #@b
    .end local v1    # "provider":Landroid/widget/ShareActionProvider;
    invoke-direct {v1, p1}, Landroid/widget/ShareActionProvider;-><init>(Landroid/content/Context;)V

    #@e
    .line 36
    .local v1, "provider":Landroid/widget/ShareActionProvider;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, ".sharecompat_"

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    #@2d
    .line 38
    invoke-virtual {v1, p2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    #@30
    .line 39
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    #@33
    .line 28
    return-void

    #@34
    .local v1, "provider":Landroid/widget/ShareActionProvider;
    :cond_0
    move-object v1, v0

    #@35
    .line 34
    check-cast v1, Landroid/widget/ShareActionProvider;

    #@37
    .local v1, "provider":Landroid/widget/ShareActionProvider;
    goto :goto_0
.end method
