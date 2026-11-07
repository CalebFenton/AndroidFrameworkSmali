.class public final synthetic Landroid/view/View$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/View$$ExternalSyntheticLambda13;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/view/View$$ExternalSyntheticLambda13;->f$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hideTooltip()V

    return-void
.end method
