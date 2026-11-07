.class public final synthetic Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/RemoteViews$RemoteCollectionCache;

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/RemoteViews$RemoteCollectionCache;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda1;->f$0:Landroid/widget/RemoteViews$RemoteCollectionCache;

    iput-object p2, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda1;->f$0:Landroid/widget/RemoteViews$RemoteCollectionCache;

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-static {v0, v1, p1}, Landroid/widget/RemoteViews$RemoteCollectionCache;->$r8$lambda$0K3JyZ6BtSC02I0QK9fYDD4Kp3U(Landroid/widget/RemoteViews$RemoteCollectionCache;Ljava/lang/String;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    return-void
.end method
