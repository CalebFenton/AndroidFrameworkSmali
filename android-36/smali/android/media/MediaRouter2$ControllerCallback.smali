.class public abstract Landroid/media/MediaRouter2$ControllerCallback;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ControllerCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V
    .registers 2
    .param p1, "controller"    # Landroid/media/MediaRouter2$RoutingController;

    .line 1808
    return-void
.end method
