.class Landroid/adservices/measurement/MeasurementCompatibleManager$7;
.super Ljava/lang/Object;
.source "MeasurementCompatibleManager.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/measurement/MeasurementCompatibleManager;->getAdId(Landroid/adservices/measurement/MeasurementCompatibleManager$MeasurementAdIdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/adservices/adid/AdId;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/adservices/measurement/MeasurementCompatibleManager;

.field final synthetic blacklist val$adIdValue:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic blacklist val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic blacklist val$isAdIdEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/measurement/MeasurementCompatibleManager;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .registers 5
    .param p1, "this$0"    # Landroid/adservices/measurement/MeasurementCompatibleManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
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

    .line 714
    iput-object p1, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$7;->this$0:Landroid/adservices/measurement/MeasurementCompatibleManager;

    iput-object p2, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$7;->val$isAdIdEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$7;->val$adIdValue:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$7;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Exception;

    .line 725
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    instance-of v0, p1, Ljava/lang/SecurityException;

    if-eqz v0, :cond_a

    goto :goto_c

    :cond_a
    move v0, v1

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    .line 728
    .local v0, "isExpected":Z
    :goto_d
    const-string v2, "To enable debug api, include ACCESS_ADSERVICES_AD_ID permission and enable advertising ID under device settings"

    if-eqz v0, :cond_15

    .line 729
    invoke-static {v2}, Lcom/android/adservices/LogUtil;->w(Ljava/lang/String;)I

    goto :goto_1a

    .line 731
    :cond_15
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/android/adservices/LogUtil;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 734
    :goto_1a
    iget-object v1, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$7;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 735
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

    .line 714
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Landroid/adservices/measurement/MeasurementCompatibleManager$7;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public blacklist onResult(Landroid/adservices/adid/AdId;)V
    .registers 5
    .param p1, "adId"    # Landroid/adservices/adid/AdId;

    .line 717
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$7;->val$isAdIdEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$7;->this$0:Landroid/adservices/measurement/MeasurementCompatibleManager;

    invoke-static {v1, p1}, Landroid/adservices/measurement/MeasurementCompatibleManager;->-$$Nest$misAdIdPermissionEnabled(Landroid/adservices/measurement/MeasurementCompatibleManager;Landroid/adservices/adid/AdId;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 718
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$7;->val$adIdValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Landroid/adservices/adid/AdId;->getAdId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    goto :goto_1f

    :cond_1b
    invoke-virtual {p1}, Landroid/adservices/adid/AdId;->getAdId()Ljava/lang/String;

    move-result-object v1

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 719
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$7;->val$isAdIdEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "AdId permission enabled %b"

    invoke-static {v1, v0}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 720
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementCompatibleManager$7;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 721
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

    .line 714
    check-cast p1, Landroid/adservices/adid/AdId;

    invoke-virtual {p0, p1}, Landroid/adservices/measurement/MeasurementCompatibleManager$7;->onResult(Landroid/adservices/adid/AdId;)V

    return-void
.end method
