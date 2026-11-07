.class public final synthetic Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/RemoteViews$ViewGroupActionAdd;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews$ViewGroupActionAdd;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews$ViewGroupActionAdd;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->$r8$lambda$rBlBi8K6ngja77O0hGAUvrG9EY4(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
