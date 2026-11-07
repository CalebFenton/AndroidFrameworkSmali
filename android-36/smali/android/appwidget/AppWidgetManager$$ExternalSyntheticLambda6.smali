.class public final synthetic Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/appwidget/AppWidgetManager;

.field public final synthetic blacklist f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda6;->f$0:Landroid/appwidget/AppWidgetManager;

    iput-object p2, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final blacklist acceptOrThrow(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda6;->f$0:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    check-cast p1, Landroid/widget/RemoteViews;

    invoke-static {v0, v1, p1}, Landroid/appwidget/AppWidgetManager;->$r8$lambda$f_OVkK3KW0mzmRH9rcv5fxfoLF4(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method
