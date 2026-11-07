.class public final synthetic Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$10$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClient$GesturePendingIntentCallback;

.field public final synthetic blacklist f$1:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClient$GesturePendingIntentCallback;Landroid/app/PendingIntent;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$10$$ExternalSyntheticLambda0;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClient$GesturePendingIntentCallback;

    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$10$$ExternalSyntheticLambda0;->f$1:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$10$$ExternalSyntheticLambda0;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClient$GesturePendingIntentCallback;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$10$$ExternalSyntheticLambda0;->f$1:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$10;->lambda$onGestureTargetActivityPendingIntentReceived$0(Landroid/service/quickaccesswallet/QuickAccessWalletClient$GesturePendingIntentCallback;Landroid/app/PendingIntent;)V

    return-void
.end method
