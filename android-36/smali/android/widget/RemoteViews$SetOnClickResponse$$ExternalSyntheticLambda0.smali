.class public final synthetic Landroid/widget/RemoteViews$SetOnClickResponse$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/RemoteViews$SetOnClickResponse;

.field public final synthetic blacklist f$1:Landroid/widget/RemoteViews$ActionApplyParams;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/RemoteViews$SetOnClickResponse;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickResponse$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews$SetOnClickResponse;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetOnClickResponse$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RemoteViews$ActionApplyParams;

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnClickResponse$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews$SetOnClickResponse;

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnClickResponse$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-static {v0, v1, p1}, Landroid/widget/RemoteViews$SetOnClickResponse;->$r8$lambda$5d0TjNg2qU3bJibIWO5ZBiK4YAg(Landroid/widget/RemoteViews$SetOnClickResponse;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/view/View;)V

    return-void
.end method
