.class public final synthetic Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/RemoteViews$RemoteResponse;

.field public final synthetic blacklist f$1:Landroid/view/View;

.field public final synthetic blacklist f$2:Landroid/widget/RemoteViews$ActionApplyParams;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews$RemoteResponse;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-object p3, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse$$ExternalSyntheticLambda0;->f$2:Landroid/widget/RemoteViews$ActionApplyParams;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews$RemoteResponse;

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse$$ExternalSyntheticLambda0;->f$2:Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-static {v0, v1, v2}, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->lambda$apply$0(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$ActionApplyParams;)V

    return-void
.end method
