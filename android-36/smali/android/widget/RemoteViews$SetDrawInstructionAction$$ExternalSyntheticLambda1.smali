.class public final synthetic Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

.field public final synthetic blacklist f$3:Landroid/widget/RemoteViews$ActionApplyParams;


# direct methods
.method public synthetic constructor blacklist <init>(ILjava/lang/String;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda1;->f$2:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    iput-object p4, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda1;->f$3:Landroid/widget/RemoteViews$ActionApplyParams;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda1;->f$0:I

    iget-object v1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda1;->f$2:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    iget-object v3, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda1;->f$3:Landroid/widget/RemoteViews$ActionApplyParams;

    check-cast p1, Landroid/widget/RemoteViews$Action;

    invoke-static {v0, v1, v2, v3, p1}, Landroid/widget/RemoteViews$SetDrawInstructionAction;->lambda$apply$0(ILjava/lang/String;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/widget/RemoteViews$Action;)V

    return-void
.end method
