.class public final synthetic Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

.field public final synthetic blacklist f$1:Landroid/content/Intent;

.field public final synthetic blacklist f$2:Ljava/util/function/Consumer;

.field public final synthetic blacklist f$3:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;Landroid/content/Intent;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda1;->f$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    iput-object p2, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    iput-object p4, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda1;->f$3:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda1;->f$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda1;->f$3:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2, v3}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->$r8$lambda$v7HIrr9hPZryvu7LbHxJe-cE0YE(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;Landroid/content/Intent;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method
