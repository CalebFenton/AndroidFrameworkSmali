.class public final synthetic Landroid/widget/DateTimeView$ReceiverInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/DateTimeView;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/DateTimeView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/DateTimeView$ReceiverInfo$$ExternalSyntheticLambda0;->f$0:Landroid/widget/DateTimeView;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo$$ExternalSyntheticLambda0;->f$0:Landroid/widget/DateTimeView;

    invoke-static {v0}, Landroid/widget/DateTimeView$ReceiverInfo;->lambda$updateAll$0(Landroid/widget/DateTimeView;)V

    return-void
.end method
