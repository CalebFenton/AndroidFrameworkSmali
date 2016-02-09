.class public abstract Landroid/support/v4/view/ActionProvider;
.super Ljava/lang/Object;
.source "ActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;,
        Landroid/support/v4/view/ActionProvider$VisibilityListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionProvider(support)"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSubUiVisibilityListener:Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;

.field private mVisibilityListener:Landroid/support/v4/view/ActionProvider$VisibilityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    iput-object p1, p0, Landroid/support/v4/view/ActionProvider;->mContext:Landroid/content/Context;

    #@5
    .line 78
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v4/view/ActionProvider;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    #@0
    .prologue
    .line 195
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isVisible()Z
    .locals 1

    #@0
    .prologue
    .line 135
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public abstract onCreateActionView()Landroid/view/View;
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1
    .param p1, "forItem"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/support/v4/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    #@0
    .prologue
    .line 182
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 0
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    #@0
    .prologue
    .line 207
    return-void
.end method

.method public overridesItemVisibility()Z
    .locals 1

    #@0
    .prologue
    .line 121
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public refreshVisibility()V
    .locals 2

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Landroid/support/v4/view/ActionProvider;->mVisibilityListener:Landroid/support/v4/view/ActionProvider$VisibilityListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/support/v4/view/ActionProvider;->overridesItemVisibility()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 146
    iget-object v0, p0, Landroid/support/v4/view/ActionProvider;->mVisibilityListener:Landroid/support/v4/view/ActionProvider$VisibilityListener;

    #@c
    invoke-virtual {p0}, Landroid/support/v4/view/ActionProvider;->isVisible()Z

    #@f
    move-result v1

    #@10
    invoke-interface {v0, v1}, Landroid/support/v4/view/ActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V

    #@13
    .line 144
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 248
    iput-object v0, p0, Landroid/support/v4/view/ActionProvider;->mVisibilityListener:Landroid/support/v4/view/ActionProvider$VisibilityListener;

    #@3
    .line 249
    iput-object v0, p0, Landroid/support/v4/view/ActionProvider;->mSubUiVisibilityListener:Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;

    #@5
    .line 247
    return-void
.end method

.method public setSubUiVisibilityListener(Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;

    #@0
    .prologue
    .line 226
    iput-object p1, p0, Landroid/support/v4/view/ActionProvider;->mSubUiVisibilityListener:Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;

    #@2
    .line 225
    return-void
.end method

.method public setVisibilityListener(Landroid/support/v4/view/ActionProvider$VisibilityListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/support/v4/view/ActionProvider$VisibilityListener;

    #@0
    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v4/view/ActionProvider;->mVisibilityListener:Landroid/support/v4/view/ActionProvider$VisibilityListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    if-eqz p1, :cond_0

    #@6
    .line 237
    const-string/jumbo v0, "ActionProvider(support)"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 238
    invoke-virtual {p0}, Landroid/support/v4/view/ActionProvider;->getClass()Ljava/lang/Class;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 239
    const-string/jumbo v2, " instance while it is still in use somewhere else?"

    #@24
    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 241
    :cond_0
    iput-object p1, p0, Landroid/support/v4/view/ActionProvider;->mVisibilityListener:Landroid/support/v4/view/ActionProvider$VisibilityListener;

    #@31
    .line 235
    return-void
.end method

.method public subUiVisibilityChanged(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/v4/view/ActionProvider;->mSubUiVisibilityListener:Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 218
    iget-object v0, p0, Landroid/support/v4/view/ActionProvider;->mSubUiVisibilityListener:Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;

    #@6
    invoke-interface {v0, p1}, Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;->onSubUiVisibilityChanged(Z)V

    #@9
    .line 216
    :cond_0
    return-void
.end method
