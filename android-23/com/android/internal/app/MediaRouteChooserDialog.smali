.class public Lcom/android/internal/app/MediaRouteChooserDialog;
.super Landroid/app/Dialog;
.source "MediaRouteChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;,
        Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;,
        Lcom/android/internal/app/MediaRouteChooserDialog$RouteComparator;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

.field private mAttachedToWindow:Z

.field private final mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

.field private mExtendedSettingsButton:Landroid/widget/Button;

.field private mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mRouteTypes:I

.field private final mRouter:Landroid/media/MediaRouter;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/MediaRouteChooserDialog;)Landroid/media/MediaRouter;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    #@0
    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #@3
    .line 64
    const-string/jumbo v0, "media_router"

    #@6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/media/MediaRouter;

    #@c
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    #@e
    .line 65
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    #@10
    const/4 v1, 0x0

    #@11
    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteChooserDialog;Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;)V

    #@14
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    #@16
    .line 61
    return-void
.end method

.method private updateExtendedSettingsButton()V
    .locals 2

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 147
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    #@6
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    #@8
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@b
    .line 148
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    #@d
    .line 149
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    #@f
    if-eqz v0, :cond_1

    #@11
    const/4 v0, 0x0

    #@12
    .line 148
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    #@15
    .line 145
    :cond_0
    return-void

    #@16
    .line 149
    :cond_1
    const/16 v0, 0x8

    #@18
    goto :goto_0
.end method


# virtual methods
.method public getRouteTypes()I
    .locals 1

    #@0
    .prologue
    .line 75
    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    #@2
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 155
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    #@4
    .line 157
    iput-boolean v3, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    #@6
    .line 158
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    #@8
    iget v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    #@a
    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    #@c
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    #@f
    .line 159
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->refreshRoutes()V

    #@12
    .line 154
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    .line 122
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    #@4
    .line 124
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->getWindow()Landroid/view/Window;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    #@b
    .line 126
    const v0, 0x109007a

    #@e
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->setContentView(I)V

    #@11
    .line 127
    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    #@13
    const/4 v1, 0x4

    #@14
    if-ne v0, v1, :cond_0

    #@16
    .line 128
    const v0, 0x10404b5

    #@19
    .line 127
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->setTitle(I)V

    #@1c
    .line 132
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->getWindow()Landroid/view/Window;

    #@1f
    move-result-object v0

    #@20
    .line 133
    const v1, 0x108039c

    #@23
    .line 132
    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    #@26
    .line 135
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    #@28
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->getContext()Landroid/content/Context;

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;-><init>(Lcom/android/internal/app/MediaRouteChooserDialog;Landroid/content/Context;)V

    #@2f
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    #@31
    .line 136
    const v0, 0x102035d

    #@34
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->findViewById(I)Landroid/view/View;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Landroid/widget/ListView;

    #@3a
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    #@3c
    .line 137
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    #@3e
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    #@40
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@43
    .line 138
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    #@45
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    #@47
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@4a
    .line 139
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    #@4c
    const v1, 0x1020004

    #@4f
    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->findViewById(I)Landroid/view/View;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    #@56
    .line 141
    const v0, 0x102035e

    #@59
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->findViewById(I)Landroid/view/View;

    #@5c
    move-result-object v0

    #@5d
    check-cast v0, Landroid/widget/Button;

    #@5f
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    #@61
    .line 142
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->updateExtendedSettingsButton()V

    #@64
    .line 121
    return-void

    #@65
    .line 129
    :cond_0
    const v0, 0x10404b4

    #@68
    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    .line 164
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    #@3
    .line 165
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    #@5
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    #@7
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    #@a
    .line 167
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    #@d
    .line 163
    return-void
.end method

.method public onFilterRoute(Landroid/media/MediaRouter$RouteInfo;)Z
    .locals 1
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    #@e
    invoke-virtual {p1, v0}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    #@11
    move-result v0

    #@12
    :goto_0
    return v0

    #@13
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method

.method public refreshRoutes()V
    .locals 1

    #@0
    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 175
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->update()V

    #@9
    .line 173
    :cond_0
    return-void
.end method

.method public setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 100
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    #@6
    .line 101
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->updateExtendedSettingsButton()V

    #@9
    .line 98
    :cond_0
    return-void
.end method

.method public setRouteTypes(I)V
    .locals 3
    .param p1, "types"    # I

    #@0
    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    #@2
    if-eq v0, p1, :cond_1

    #@4
    .line 86
    iput p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    #@6
    .line 88
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 89
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    #@c
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    #@e
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    #@11
    .line 90
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    #@13
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    #@15
    .line 91
    const/4 v2, 0x1

    #@16
    .line 90
    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    #@19
    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->refreshRoutes()V

    #@1c
    .line 84
    :cond_1
    return-void
.end method
