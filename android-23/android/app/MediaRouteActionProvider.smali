.class public Landroid/app/MediaRouteActionProvider;
.super Landroid/view/ActionProvider;
.source "MediaRouteActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/MediaRouteActionProvider$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaRouteActionProvider"


# instance fields
.field private mButton:Landroid/app/MediaRouteButton;

.field private final mCallback:Landroid/app/MediaRouteActionProvider$MediaRouterCallback;

.field private final mContext:Landroid/content/Context;

.field private mExtendedSettingsListener:Landroid/view/View$OnClickListener;

.field private mRouteTypes:I

.field private final mRouter:Landroid/media/MediaRouter;


# direct methods
.method static synthetic -wrap0(Landroid/app/MediaRouteActionProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/app/MediaRouteActionProvider;->refreshRoute()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    #@3
    .line 59
    iput-object p1, p0, Landroid/app/MediaRouteActionProvider;->mContext:Landroid/content/Context;

    #@5
    .line 60
    const-string/jumbo v0, "media_router"

    #@8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/media/MediaRouter;

    #@e
    iput-object v0, p0, Landroid/app/MediaRouteActionProvider;->mRouter:Landroid/media/MediaRouter;

    #@10
    .line 61
    new-instance v0, Landroid/app/MediaRouteActionProvider$MediaRouterCallback;

    #@12
    invoke-direct {v0, p0}, Landroid/app/MediaRouteActionProvider$MediaRouterCallback;-><init>(Landroid/app/MediaRouteActionProvider;)V

    #@15
    iput-object v0, p0, Landroid/app/MediaRouteActionProvider;->mCallback:Landroid/app/MediaRouteActionProvider$MediaRouterCallback;

    #@17
    .line 66
    const/4 v0, 0x1

    #@18
    invoke-virtual {p0, v0}, Landroid/app/MediaRouteActionProvider;->setRouteTypes(I)V

    #@1b
    .line 56
    return-void
.end method

.method private refreshRoute()V
    .locals 0

    #@0
    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/app/MediaRouteActionProvider;->refreshVisibility()V

    #@3
    .line 150
    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 3

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mRouter:Landroid/media/MediaRouter;

    #@2
    iget v1, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    #@4
    .line 147
    const/4 v2, 0x1

    #@5
    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter;->isRouteAvailable(II)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 2

    #@0
    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Use onCreateActionView(MenuItem) instead."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 116
    const-string/jumbo v0, "MediaRouteActionProvider"

    #@7
    const-string/jumbo v1, "onCreateActionView: this ActionProvider is already associated with a menu item. Don\'t reuse MediaRouteActionProvider instances! Abandoning the old one..."

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 121
    :cond_0
    new-instance v0, Landroid/app/MediaRouteButton;

    #@f
    iget-object v1, p0, Landroid/app/MediaRouteActionProvider;->mContext:Landroid/content/Context;

    #@11
    invoke-direct {v0, v1}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;)V

    #@14
    iput-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    #@16
    .line 122
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    #@18
    const/4 v1, 0x1

    #@19
    invoke-virtual {v0, v1}, Landroid/app/MediaRouteButton;->setCheatSheetEnabled(Z)V

    #@1c
    .line 123
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    #@1e
    iget v1, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    #@20
    invoke-virtual {v0, v1}, Landroid/app/MediaRouteButton;->setRouteTypes(I)V

    #@23
    .line 124
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    #@25
    iget-object v1, p0, Landroid/app/MediaRouteActionProvider;->mExtendedSettingsListener:Landroid/view/View$OnClickListener;

    #@27
    invoke-virtual {v0, v1}, Landroid/app/MediaRouteButton;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    #@2a
    .line 125
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    #@2c
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    #@2e
    .line 126
    const/4 v2, -0x2

    #@2f
    .line 127
    const/4 v3, -0x1

    #@30
    .line 125
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@33
    invoke-virtual {v0, v1}, Landroid/app/MediaRouteButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@36
    .line 128
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    #@38
    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 134
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    #@6
    invoke-virtual {v0}, Landroid/app/MediaRouteButton;->showDialogInternal()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 136
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public overridesItemVisibility()Z
    .locals 1

    #@0
    .prologue
    .line 141
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    #@0
    .prologue
    .line 101
    iput-object p1, p0, Landroid/app/MediaRouteActionProvider;->mExtendedSettingsListener:Landroid/view/View$OnClickListener;

    #@2
    .line 102
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 103
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    #@8
    invoke-virtual {v0, p1}, Landroid/app/MediaRouteButton;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    #@b
    .line 100
    :cond_0
    return-void
.end method

.method public setRouteTypes(I)V
    .locals 3
    .param p1, "types"    # I

    #@0
    .prologue
    .line 76
    iget v0, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    #@2
    if-eq v0, p1, :cond_2

    #@4
    .line 84
    iget v0, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 85
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mRouter:Landroid/media/MediaRouter;

    #@a
    iget-object v1, p0, Landroid/app/MediaRouteActionProvider;->mCallback:Landroid/app/MediaRouteActionProvider$MediaRouterCallback;

    #@c
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    #@f
    .line 87
    :cond_0
    iput p1, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    #@11
    .line 88
    if-eqz p1, :cond_1

    #@13
    .line 89
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mRouter:Landroid/media/MediaRouter;

    #@15
    iget-object v1, p0, Landroid/app/MediaRouteActionProvider;->mCallback:Landroid/app/MediaRouteActionProvider$MediaRouterCallback;

    #@17
    .line 90
    const/16 v2, 0x8

    #@19
    .line 89
    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    #@1c
    .line 92
    :cond_1
    invoke-direct {p0}, Landroid/app/MediaRouteActionProvider;->refreshRoute()V

    #@1f
    .line 94
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 95
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    #@25
    iget v1, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    #@27
    invoke-virtual {v0, v1}, Landroid/app/MediaRouteButton;->setRouteTypes(I)V

    #@2a
    .line 75
    :cond_2
    return-void
.end method
