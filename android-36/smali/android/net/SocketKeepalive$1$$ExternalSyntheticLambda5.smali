.class public final synthetic Landroid/net/SocketKeepalive$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/SocketKeepalive$Callback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/SocketKeepalive$Callback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/SocketKeepalive$1$$ExternalSyntheticLambda5;->f$0:Landroid/net/SocketKeepalive$Callback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/net/SocketKeepalive$1$$ExternalSyntheticLambda5;->f$0:Landroid/net/SocketKeepalive$Callback;

    invoke-static {v0}, Landroid/net/SocketKeepalive$1;->lambda$onStarted$0(Landroid/net/SocketKeepalive$Callback;)V

    return-void
.end method
