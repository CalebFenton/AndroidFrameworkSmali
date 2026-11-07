.class public final synthetic Landroid/widget/RemoteViews$SetIntTagAction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/RemoteViews$PendingResources;


# instance fields
.field public final synthetic blacklist f$0:Landroid/util/LongSparseArray;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/util/LongSparseArray;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$SetIntTagAction$$ExternalSyntheticLambda0;->f$0:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
.method public final blacklist create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/widget/RemoteViews$SetIntTagAction$$ExternalSyntheticLambda0;->f$0:Landroid/util/LongSparseArray;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$SetIntTagAction;->lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;

    move-result-object p1

    return-object p1
.end method
