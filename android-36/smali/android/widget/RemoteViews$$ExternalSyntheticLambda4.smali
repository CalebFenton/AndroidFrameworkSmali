.class public final synthetic Landroid/widget/RemoteViews$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/RemoteViews$PendingResources;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/RemoteViews;

.field public final synthetic blacklist f$1:Landroid/util/LongSparseArray;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/util/LongSparseArray;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda4;->f$0:Landroid/widget/RemoteViews;

    iput-object p2, p0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda4;->f$1:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
.method public final blacklist create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;
    .registers 11

    .line 0
    iget-object v0, p0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda4;->f$0:Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda4;->f$1:Landroid/util/LongSparseArray;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/widget/RemoteViews;->$r8$lambda$NRekdIqmiueP5fwUC0YmWtpR0E8(Landroid/widget/RemoteViews;Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;

    move-result-object p1

    return-object p1
.end method
