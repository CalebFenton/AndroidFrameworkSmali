.class Lcom/android/ims/RcsFeatureManager$2;
.super Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;
.source "RcsFeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ims/RcsFeatureManager;->isCapable(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/RcsFeatureManager;

.field final synthetic blacklist val$capability:I

.field final synthetic blacklist val$capableRef:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic blacklist val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic blacklist val$radioTech:I


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/RcsFeatureManager;IILjava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/ims/RcsFeatureManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 363
    iput-object p1, p0, Lcom/android/ims/RcsFeatureManager$2;->this$0:Lcom/android/ims/RcsFeatureManager;

    iput p2, p0, Lcom/android/ims/RcsFeatureManager$2;->val$capability:I

    iput p3, p0, Lcom/android/ims/RcsFeatureManager$2;->val$radioTech:I

    iput-object p4, p0, Lcom/android/ims/RcsFeatureManager$2;->val$capableRef:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p5, p0, Lcom/android/ims/RcsFeatureManager$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCapabilitiesStatusChanged(I)V
    .registers 2
    .param p1, "config"    # I

    .line 378
    return-void
.end method

.method public blacklist onChangeCapabilityConfigurationError(III)V
    .registers 4
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "reason"    # I

    .line 384
    return-void
.end method

.method public blacklist onQueryCapabilityConfiguration(IIZ)V
    .registers 7
    .param p1, "resultCapability"    # I
    .param p2, "resultRadioTech"    # I
    .param p3, "enabled"    # Z

    .line 367
    iget v0, p0, Lcom/android/ims/RcsFeatureManager$2;->val$capability:I

    if-ne v0, p1, :cond_42

    iget v0, p0, Lcom/android/ims/RcsFeatureManager$2;->val$radioTech:I

    if-eq v0, p2, :cond_9

    goto :goto_42

    .line 370
    :cond_9
    invoke-static {}, Lcom/android/ims/RcsFeatureManager;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager$2;->this$0:Lcom/android/ims/RcsFeatureManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capable result:capability="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/RcsFeatureManager$2;->val$capability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/RcsFeatureManager;->-$$Nest$mlog(Lcom/android/ims/RcsFeatureManager;Ljava/lang/String;)V

    .line 371
    :cond_33
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager$2;->val$capableRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 373
    return-void

    .line 368
    :cond_42
    :goto_42
    return-void
.end method
