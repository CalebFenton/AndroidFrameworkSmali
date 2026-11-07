.class public final synthetic Landroid/widget/RemoteViews$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/RemoteViews$PendingResources;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/ArrayList;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda1;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final blacklist create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda1;->f$0:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;->lambda$populateRemoteCollectionCacheFromProto$3(Ljava/util/ArrayList;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$RemoteCollectionCache;

    move-result-object p1

    return-object p1
.end method
