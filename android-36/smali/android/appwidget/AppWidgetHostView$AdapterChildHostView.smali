.class public Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "AppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterChildHostView"
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 192
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 193
    return-void
.end method


# virtual methods
.method public blacklist getRemoteContextEnsuringCorrectCachedApkPath()Landroid/content/Context;
    .registers 2

    .line 198
    const/4 v0, 0x0

    return-object v0
.end method
