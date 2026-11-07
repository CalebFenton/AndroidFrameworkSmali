.class public interface abstract Landroid/view/ViewRootImpl$ActivityConfigCallback;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityConfigCallback"
.end annotation


# virtual methods
.method public greylist-max-o onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .registers 5
    .param p1, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p2, "newDisplayId"    # I

    .line 503
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;)V
    .registers 4
    .param p1, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p2, "newDisplayId"    # I
    .param p3, "activityWindowInfo"    # Landroid/window/ActivityWindowInfo;

    .line 514
    invoke-interface {p0, p1, p2}, Landroid/view/ViewRootImpl$ActivityConfigCallback;->onConfigurationChanged(Landroid/content/res/Configuration;I)V

    .line 515
    return-void
.end method
