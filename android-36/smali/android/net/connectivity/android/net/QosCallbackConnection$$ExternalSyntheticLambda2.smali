.class public final synthetic Landroid/net/connectivity/android/net/QosCallbackConnection$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/connectivity/android/net/QosCallbackConnection;

.field public final synthetic blacklist f$1:Landroid/net/QosSession;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/connectivity/android/net/QosCallbackConnection;Landroid/net/QosSession;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/connectivity/android/net/QosCallbackConnection$$ExternalSyntheticLambda2;->f$0:Landroid/net/connectivity/android/net/QosCallbackConnection;

    iput-object p2, p0, Landroid/net/connectivity/android/net/QosCallbackConnection$$ExternalSyntheticLambda2;->f$1:Landroid/net/QosSession;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosCallbackConnection$$ExternalSyntheticLambda2;->f$0:Landroid/net/connectivity/android/net/QosCallbackConnection;

    iget-object v1, p0, Landroid/net/connectivity/android/net/QosCallbackConnection$$ExternalSyntheticLambda2;->f$1:Landroid/net/QosSession;

    invoke-static {v0, v1}, Landroid/net/connectivity/android/net/QosCallbackConnection;->$r8$lambda$vV-AFY4saCfOKcDviJBLz7mg6Z4(Landroid/net/connectivity/android/net/QosCallbackConnection;Landroid/net/QosSession;)V

    return-void
.end method
