.class final Landroid/service/games/GameSession$GameSessionRootView;
.super Landroid/widget/FrameLayout;
.source "GameSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/GameSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GameSessionRootView"
.end annotation


# instance fields
.field private final blacklist mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/view/SurfaceControlViewHost;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "surfaceControlViewHost"    # Landroid/view/SurfaceControlViewHost;

    .line 352
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 353
    iput-object p2, p0, Landroid/service/games/GameSession$GameSessionRootView;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    .line 354
    return-void
.end method


# virtual methods
.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 358
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 362
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 363
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/service/games/GameSession$GameSessionRootView;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControlViewHost;->relayout(II)V

    .line 364
    return-void
.end method
