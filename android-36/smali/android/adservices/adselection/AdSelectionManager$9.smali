.class Landroid/adservices/adselection/AdSelectionManager$9;
.super Ljava/lang/Object;
.source "AdSelectionManager.java"

# interfaces
.implements Landroid/adservices/common/AdServicesOutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/adselection/AdSelectionManager;->getAdId(Landroid/adservices/adselection/AdSelectionManager$AdSelectionAdIdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/adservices/common/AdServicesOutcomeReceiver<",
        "Landroid/adservices/adid/AdId;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$adIdValue:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic blacklist val$timer:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/adselection/AdSelectionManager;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4
    .param p1, "this$0"    # Landroid/adservices/adselection/AdSelectionManager;
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

    .line 1001
    iput-object p2, p0, Landroid/adservices/adselection/AdSelectionManager$9;->val$adIdValue:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Landroid/adservices/adselection/AdSelectionManager$9;->val$timer:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1012
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    const-string v1, "To enable debug api, include ACCESS_ADSERVICES_AD_ID permission and enable advertising ID under device settings"

    if-nez v0, :cond_16

    instance-of v0, p1, Ljava/lang/SecurityException;

    if-eqz v0, :cond_b

    goto :goto_16

    .line 1016
    :cond_b
    invoke-static {}, Landroid/adservices/adselection/AdSelectionManager;->-$$Nest$sfgetsLogger()Lcom/android/adservices/LoggerFactory$Logger;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/adservices/LoggerFactory$Logger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1d

    .line 1014
    :cond_16
    :goto_16
    invoke-static {}, Landroid/adservices/adselection/AdSelectionManager;->-$$Nest$sfgetsLogger()Lcom/android/adservices/LoggerFactory$Logger;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/adservices/LoggerFactory$Logger;->w(Ljava/lang/String;)I

    .line 1018
    :goto_1d
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionManager$9;->val$timer:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1019
    return-void
.end method

.method public bridge synthetic whitelist onError(Ljava/lang/Throwable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1001
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Landroid/adservices/adselection/AdSelectionManager$9;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public blacklist onResult(Landroid/adservices/adid/AdId;)V
    .registers 6
    .param p1, "adId"    # Landroid/adservices/adid/AdId;

    .line 1004
    invoke-virtual {p1}, Landroid/adservices/adid/AdId;->getAdId()Ljava/lang/String;

    move-result-object v0

    .line 1005
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionManager$9;->val$adIdValue:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v2, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    move-object v3, v0

    goto :goto_11

    :cond_10
    const/4 v3, 0x0

    :goto_11
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1006
    invoke-static {}, Landroid/adservices/adselection/AdSelectionManager;->-$$Nest$sfgetsLogger()Lcom/android/adservices/LoggerFactory$Logger;

    move-result-object v1

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AdId permission enabled: %b."

    invoke-virtual {v1, v3, v2}, Lcom/android/adservices/LoggerFactory$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1007
    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionManager$9;->val$timer:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1008
    return-void
.end method

.method public bridge synthetic whitelist onResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1001
    check-cast p1, Landroid/adservices/adid/AdId;

    invoke-virtual {p0, p1}, Landroid/adservices/adselection/AdSelectionManager$9;->onResult(Landroid/adservices/adid/AdId;)V

    return-void
.end method
