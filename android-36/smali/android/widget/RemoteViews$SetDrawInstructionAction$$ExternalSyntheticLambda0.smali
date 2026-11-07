.class public final synthetic Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/RemoteViews$SetDrawInstructionAction;

.field public final synthetic blacklist f$1:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

.field public final synthetic blacklist f$2:Landroid/widget/RemoteViews$ActionApplyParams;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/RemoteViews$SetDrawInstructionAction;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews$SetDrawInstructionAction;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    iput-object p3, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda0;->f$2:Landroid/widget/RemoteViews$ActionApplyParams;

    return-void
.end method


# virtual methods
.method public final blacklist onAction(ILjava/lang/String;)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews$SetDrawInstructionAction;

    iget-object v1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    iget-object v2, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda0;->f$2:Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-static {v0, v1, v2, p1, p2}, Landroid/widget/RemoteViews$SetDrawInstructionAction;->$r8$lambda$pOE8o2FvmfqExVPt5TJgnSJQGNA(Landroid/widget/RemoteViews$SetDrawInstructionAction;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;ILjava/lang/String;)V

    return-void
.end method
