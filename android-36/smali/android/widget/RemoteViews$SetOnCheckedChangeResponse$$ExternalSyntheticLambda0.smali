.class public final synthetic Landroid/widget/RemoteViews$SetOnCheckedChangeResponse$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;

.field public final synthetic blacklist f$1:Landroid/widget/RemoteViews$ActionApplyParams;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RemoteViews$ActionApplyParams;

    return-void
.end method


# virtual methods
.method public final whitelist onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-static {v0, v1, p1, p2}, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->$r8$lambda$HdQNdl9J5L6C0JBC1XORaThdpgo(Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
