.class public final synthetic Landroid/net/connectivity/android/net/TcpSocketKeepalive$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/connectivity/android/net/TcpSocketKeepalive;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/connectivity/android/net/TcpSocketKeepalive;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/connectivity/android/net/TcpSocketKeepalive$$ExternalSyntheticLambda0;->f$0:Landroid/net/connectivity/android/net/TcpSocketKeepalive;

    iput p2, p0, Landroid/net/connectivity/android/net/TcpSocketKeepalive$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/connectivity/android/net/TcpSocketKeepalive$$ExternalSyntheticLambda0;->f$0:Landroid/net/connectivity/android/net/TcpSocketKeepalive;

    iget v1, p0, Landroid/net/connectivity/android/net/TcpSocketKeepalive$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Landroid/net/connectivity/android/net/TcpSocketKeepalive;->$r8$lambda$5sPJR0611ZvzV8TNCnJom44xNkQ(Landroid/net/connectivity/android/net/TcpSocketKeepalive;I)V

    return-void
.end method
