.class Lcom/android/internal/telephony/data/DataNetworkController$11;
.super Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataNetworkController;->registerImsFeatureRegistrationState(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetworkController;

.field final synthetic blacklist val$imsFeature:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetworkController;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2648
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$11;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    iput p2, p0, Lcom/android/internal/telephony/data/DataNetworkController$11;->val$imsFeature:I

    invoke-direct {p0}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 5

    .line 2651
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$11;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetworkController$11;->val$imsFeature:I

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataUtils;->imsFeatureToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " registered. Attributes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    .line 2653
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$11;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmRegisteredImsFeatures(Lcom/android/internal/telephony/data/DataNetworkController;)Ljava/util/Set;

    move-result-object p1

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$11;->val$imsFeature:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 5

    .line 2658
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$11;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetworkController$11;->val$imsFeature:I

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataUtils;->imsFeatureToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " deregistered. Info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    .line 2660
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$11;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmRegisteredImsFeatures(Lcom/android/internal/telephony/data/DataNetworkController;)Ljava/util/Set;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$11;->val$imsFeature:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2661
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$11;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mevaluatePendingImsDeregDataNetworks(Lcom/android/internal/telephony/data/DataNetworkController;)V

    return-void
.end method
