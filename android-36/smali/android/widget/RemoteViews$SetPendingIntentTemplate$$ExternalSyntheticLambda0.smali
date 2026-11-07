.class public final synthetic Landroid/widget/RemoteViews$SetPendingIntentTemplate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

.field public final synthetic blacklist f$1:Landroid/widget/RemoteViews$ActionApplyParams;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/RemoteViews$SetPendingIntentTemplate;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RemoteViews$ActionApplyParams;

    return-void
.end method


# virtual methods
.method public final whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13

    .line 0
    iget-object v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    iget-object v1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RemoteViews$ActionApplyParams;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->$r8$lambda$HZunZfjaLDh4Ro7VuCHx2dZp1Is(Landroid/widget/RemoteViews$SetPendingIntentTemplate;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
