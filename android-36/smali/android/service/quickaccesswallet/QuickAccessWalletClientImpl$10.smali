.class Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$10;
.super Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;
.source "QuickAccessWalletClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->getGestureTargetActivityPendingIntent(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$GesturePendingIntentCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$gesturePendingIntentCallback:Landroid/service/quickaccesswallet/QuickAccessWalletClient$GesturePendingIntentCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$GesturePendingIntentCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 284
    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$10;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$10;->val$gesturePendingIntentCallback:Landroid/service/quickaccesswallet/QuickAccessWalletClient$GesturePendingIntentCallback;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl-IA;)V

    return-void
.end method

.method static synthetic blacklist lambda$onGestureTargetActivityPendingIntentReceived$0(Landroid/service/quickaccesswallet/QuickAccessWalletClient$GesturePendingIntentCallback;Landroid/app/PendingIntent;)V
    .registers 2
    .param p0, "gesturePendingIntentCallback"    # Landroid/service/quickaccesswallet/QuickAccessWalletClient$GesturePendingIntentCallback;
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 293
    nop

    .line 294
    invoke-interface {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClient$GesturePendingIntentCallback;->onGesturePendingIntentRetrieved(Landroid/app/PendingIntent;)V

    .line 293
    return-void
.end method


# virtual methods
.method public blacklist onGestureTargetActivityPendingIntentReceived(Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 288
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/Flags;->launchWalletOptionOnPowerDoubleTap()Z

    move-result v0

    if-nez v0, :cond_7

    .line 289
    return-void

    .line 291
    :cond_7
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$10;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$10;->val$gesturePendingIntentCallback:Landroid/service/quickaccesswallet/QuickAccessWalletClient$GesturePendingIntentCallback;

    new-instance v2, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$10$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$10$$ExternalSyntheticLambda0;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClient$GesturePendingIntentCallback;Landroid/app/PendingIntent;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 295
    return-void
.end method
