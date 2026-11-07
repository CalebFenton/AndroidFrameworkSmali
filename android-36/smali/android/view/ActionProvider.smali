.class public abstract Landroid/view/ActionProvider;
.super Ljava/lang/Object;
.source "ActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ActionProvider$VisibilityListener;,
        Landroid/view/ActionProvider$SubUiVisibilityListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ActionProvider"


# instance fields
.field private greylist-max-o mSubUiVisibilityListener:Landroid/view/ActionProvider$SubUiVisibilityListener;

.field private greylist-max-o mVisibilityListener:Landroid/view/ActionProvider$VisibilityListener;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method


# virtual methods
.method public whitelist hasSubMenu()Z
    .registers 2

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isVisible()Z
    .registers 2

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public abstract whitelist onCreateActionView()Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 3
    .param p1, "forItem"    # Landroid/view/MenuItem;

    .line 102
    invoke-virtual {p0}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onPerformDefaultAction()Z
    .registers 2

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onPrepareSubMenu(Landroid/view/SubMenu;)V
    .registers 2
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .line 206
    return-void
.end method

.method public whitelist overridesItemVisibility()Z
    .registers 2

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist refreshVisibility()V
    .registers 3

    .line 138
    iget-object v0, p0, Landroid/view/ActionProvider;->mVisibilityListener:Landroid/view/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 139
    iget-object v0, p0, Landroid/view/ActionProvider;->mVisibilityListener:Landroid/view/ActionProvider$VisibilityListener;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/ActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V

    .line 141
    :cond_13
    return-void
.end method

.method public greylist reset()V
    .registers 2

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ActionProvider;->mVisibilityListener:Landroid/view/ActionProvider$VisibilityListener;

    .line 250
    iput-object v0, p0, Landroid/view/ActionProvider;->mSubUiVisibilityListener:Landroid/view/ActionProvider$SubUiVisibilityListener;

    .line 251
    return-void
.end method

.method public greylist setSubUiVisibilityListener(Landroid/view/ActionProvider$SubUiVisibilityListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/ActionProvider$SubUiVisibilityListener;

    .line 226
    iput-object p1, p0, Landroid/view/ActionProvider;->mSubUiVisibilityListener:Landroid/view/ActionProvider$SubUiVisibilityListener;

    .line 227
    return-void
.end method

.method public whitelist setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/ActionProvider$VisibilityListener;

    .line 236
    iget-object v0, p0, Landroid/view/ActionProvider;->mVisibilityListener:Landroid/view/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_2b

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " instance while it is still in use somewhere else?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    const-string v1, "ActionProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_2b
    iput-object p1, p0, Landroid/view/ActionProvider;->mVisibilityListener:Landroid/view/ActionProvider$VisibilityListener;

    .line 242
    return-void
.end method

.method public greylist-max-o subUiVisibilityChanged(Z)V
    .registers 3
    .param p1, "isVisible"    # Z

    .line 216
    iget-object v0, p0, Landroid/view/ActionProvider;->mSubUiVisibilityListener:Landroid/view/ActionProvider$SubUiVisibilityListener;

    if-eqz v0, :cond_9

    .line 217
    iget-object v0, p0, Landroid/view/ActionProvider;->mSubUiVisibilityListener:Landroid/view/ActionProvider$SubUiVisibilityListener;

    invoke-interface {v0, p1}, Landroid/view/ActionProvider$SubUiVisibilityListener;->onSubUiVisibilityChanged(Z)V

    .line 219
    :cond_9
    return-void
.end method
