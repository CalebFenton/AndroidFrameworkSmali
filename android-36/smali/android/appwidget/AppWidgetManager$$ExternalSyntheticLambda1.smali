.class public final synthetic Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->lambda$notifyCollectionWidgetChange$10(I)[Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
