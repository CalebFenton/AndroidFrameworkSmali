.class Landroid/telephony/TelephonyRegistryManager$3;
.super Lcom/android/internal/telephony/ICarrierConfigChangeListener$Stub;
.source "TelephonyRegistryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyRegistryManager;->addCarrierConfigChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyRegistryManager;Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V
    .registers 4
    .param p1, "this$0"    # Landroid/telephony/TelephonyRegistryManager;
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

    .line 1825
    iput-object p2, p0, Landroid/telephony/TelephonyRegistryManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/TelephonyRegistryManager$3;->val$listener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    invoke-direct {p0}, Lcom/android/internal/telephony/ICarrierConfigChangeListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onCarrierConfigChanged$0(Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;IIII)V
    .registers 5
    .param p0, "listener"    # Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "carrierId"    # I
    .param p4, "specificCarrierId"    # I

    .line 1832
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;->onCarrierConfigChanged(IIII)V

    return-void
.end method


# virtual methods
.method public blacklist onCarrierConfigChanged(IIII)V
    .registers 14
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "carrierId"    # I
    .param p4, "specificCarrierId"    # I

    .line 1829
    const-string v0, "TelephonyRegistryManager"

    const-string/jumbo v1, "onCarrierConfigChanged call in ICarrierConfigChangeListener callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1832
    .local v1, "identify":J
    :try_start_c
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/telephony/TelephonyRegistryManager$3;->val$listener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    new-instance v3, Landroid/telephony/TelephonyRegistryManager$3$$ExternalSyntheticLambda0;
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_24

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    .end local p1    # "slotIndex":I
    .end local p2    # "subId":I
    .end local p3    # "carrierId":I
    .end local p4    # "specificCarrierId":I
    .local v5, "slotIndex":I
    .local v6, "subId":I
    .local v7, "carrierId":I
    .local v8, "specificCarrierId":I
    :try_start_16
    invoke-direct/range {v3 .. v8}, Landroid/telephony/TelephonyRegistryManager$3$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;IIII)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_21

    .line 1835
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1836
    nop

    .line 1837
    return-void

    .line 1835
    :catchall_21
    move-exception v0

    move-object p1, v0

    goto :goto_2a

    .end local v5    # "slotIndex":I
    .end local v6    # "subId":I
    .end local v7    # "carrierId":I
    .end local v8    # "specificCarrierId":I
    .restart local p1    # "slotIndex":I
    .restart local p2    # "subId":I
    .restart local p3    # "carrierId":I
    .restart local p4    # "specificCarrierId":I
    :catchall_24
    move-exception v0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move-object p1, v0

    .end local p1    # "slotIndex":I
    .end local p2    # "subId":I
    .end local p3    # "carrierId":I
    .end local p4    # "specificCarrierId":I
    .restart local v5    # "slotIndex":I
    .restart local v6    # "subId":I
    .restart local v7    # "carrierId":I
    .restart local v8    # "specificCarrierId":I
    :goto_2a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1836
    throw p1
.end method
