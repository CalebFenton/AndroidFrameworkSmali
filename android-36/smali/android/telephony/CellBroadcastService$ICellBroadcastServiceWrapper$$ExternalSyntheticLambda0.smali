.class public final synthetic Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/RemoteCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/os/RemoteCallback;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, p1}, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->lambda$handleCdmaScpMessage$0(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method
