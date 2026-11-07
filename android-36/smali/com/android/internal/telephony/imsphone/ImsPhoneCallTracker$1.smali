.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;
.super Ljava/lang/Object;
.source "ImsPhoneCallTracker.java"

# interfaces
.implements Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 578
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCarrierConfigChanged(IIII)V
    .registers 6

    .line 582
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p3, p3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p3

    if-eq p3, p1, :cond_21

    .line 583
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onReceive: Skipping indication for other phoneId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 587
    :cond_21
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mgetCarrierConfigBundle(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 588
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance p4, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p4, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmCarrierConfigForSubId(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/util/Pair;)V

    .line 589
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCurrentlyConnectedSubId(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/Optional;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Optional;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6f

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmCurrentlyConnectedSubId(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/Optional;

    move-result-object p3

    .line 590
    invoke-virtual {p3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p2, p3, :cond_6f

    .line 591
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: Applying carrier config for subId: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 592
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, p2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mupdateCarrierConfiguration(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;ILandroid/os/PersistableBundle;)V

    return-void

    .line 596
    :cond_6f
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onReceive: caching carrier config until ImsService connects for subId: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method
