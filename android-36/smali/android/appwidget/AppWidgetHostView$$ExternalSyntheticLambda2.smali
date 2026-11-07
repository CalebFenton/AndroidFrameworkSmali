.class public final synthetic Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/appwidget/AppWidgetHostView;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/appwidget/AppWidgetHostView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda2;->f$0:Landroid/appwidget/AppWidgetHostView;

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda2;->f$0:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHostView;->onDefaultViewClicked(Landroid/view/View;)V

    return-void
.end method
