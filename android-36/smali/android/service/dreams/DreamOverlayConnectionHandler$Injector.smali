.class public Landroid/service/dreams/DreamOverlayConnectionHandler$Injector;
.super Ljava/lang/Object;
.source "DreamOverlayConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamOverlayConnectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist buildConnection(Landroid/content/Context;Landroid/os/Handler;Landroid/content/Intent;)Lcom/android/internal/util/ObservableServiceConnection;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "serviceIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/android/internal/util/ObservableServiceConnection<",
            "Landroid/service/dreams/IDreamOverlay;",
            ">;"
        }
    .end annotation

    .line 220
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    move-object v3, v0

    .line 221
    .local v3, "executor":Ljava/util/concurrent/Executor;
    const v0, 0x4000001

    .line 222
    .local v0, "flags":I
    new-instance v1, Lcom/android/internal/util/ObservableServiceConnection;

    new-instance v4, Landroid/service/dreams/DreamOverlayConnectionHandler$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/service/dreams/DreamOverlayConnectionHandler$Injector$$ExternalSyntheticLambda0;-><init>()V

    const v6, 0x4000001

    move-object v2, p1

    move-object v5, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p3    # "serviceIntent":Landroid/content/Intent;
    .local v2, "context":Landroid/content/Context;
    .local v5, "serviceIntent":Landroid/content/Intent;
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/util/ObservableServiceConnection;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer;Landroid/content/Intent;I)V

    return-object v1
.end method
