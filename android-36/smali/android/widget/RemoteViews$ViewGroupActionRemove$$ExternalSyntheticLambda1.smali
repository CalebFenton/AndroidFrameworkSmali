.class public final synthetic Landroid/widget/RemoteViews$ViewGroupActionRemove$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Landroid/widget/RemoteViews$ViewTree;

    invoke-static {p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->lambda$initActionAsync$0(Landroid/widget/RemoteViews$ViewTree;)Z

    move-result p1

    return p1
.end method
