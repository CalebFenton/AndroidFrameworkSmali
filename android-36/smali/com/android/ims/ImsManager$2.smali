.class Lcom/android/ims/ImsManager$2;
.super Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ims/ImsManager;->queryMmTelCapability(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$capability:I

.field final synthetic blacklist val$radioTech:I

.field final synthetic blacklist val$result:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/ImsManager;IILjava/util/concurrent/BlockingQueue;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/ims/ImsManager;
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

    .line 2757
    iput p2, p0, Lcom/android/ims/ImsManager$2;->val$capability:I

    iput p3, p0, Lcom/android/ims/ImsManager$2;->val$radioTech:I

    iput-object p4, p0, Lcom/android/ims/ImsManager$2;->val$result:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCapabilitiesStatusChanged(I)V
    .registers 2
    .param p1, "config"    # I

    .line 2775
    return-void
.end method

.method public blacklist onChangeCapabilityConfigurationError(III)V
    .registers 4
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "reason"    # I

    .line 2770
    return-void
.end method

.method public blacklist onQueryCapabilityConfiguration(IIZ)V
    .registers 6
    .param p1, "resCap"    # I
    .param p2, "resTech"    # I
    .param p3, "enabled"    # Z

    .line 2761
    iget v0, p0, Lcom/android/ims/ImsManager$2;->val$capability:I

    if-ne p1, v0, :cond_11

    iget v0, p0, Lcom/android/ims/ImsManager$2;->val$radioTech:I

    if-ne p2, v0, :cond_11

    .line 2762
    iget-object v0, p0, Lcom/android/ims/ImsManager$2;->val$result:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 2764
    :cond_11
    return-void
.end method
