.class Landroid/net/TetheringManager$4;
.super Landroid/os/ResultReceiver;
.source "TetheringManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/TetheringManager;->requestLatestTetheringEntitlementResult(IZLjava/util/concurrent/Executor;Landroid/net/TetheringManager$OnTetheringEntitlementResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/net/TetheringManager$OnTetheringEntitlementResultListener;


# direct methods
.method constructor blacklist <init>(Landroid/net/TetheringManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$OnTetheringEntitlementResultListener;)V
    .registers 5
    .param p1, "this$0"    # Landroid/net/TetheringManager;
    .param p2, "arg0"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1539
    iput-object p3, p0, Landroid/net/TetheringManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/net/TetheringManager$4;->val$listener:Landroid/net/TetheringManager$OnTetheringEntitlementResultListener;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$0(Landroid/net/TetheringManager$OnTetheringEntitlementResultListener;I)V
    .registers 2
    .param p0, "listener"    # Landroid/net/TetheringManager$OnTetheringEntitlementResultListener;
    .param p1, "resultCode"    # I

    .line 1543
    invoke-interface {p0, p1}, Landroid/net/TetheringManager$OnTetheringEntitlementResultListener;->onTetheringEntitlementResult(I)V

    .line 1544
    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 1542
    iget-object v0, p0, Landroid/net/TetheringManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/TetheringManager$4;->val$listener:Landroid/net/TetheringManager$OnTetheringEntitlementResultListener;

    new-instance v2, Landroid/net/TetheringManager$4$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/net/TetheringManager$4$$ExternalSyntheticLambda0;-><init>(Landroid/net/TetheringManager$OnTetheringEntitlementResultListener;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1545
    return-void
.end method
