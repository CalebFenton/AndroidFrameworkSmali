.class Lcom/android/internal/telephony/data/DataNetworkController$12;
.super Landroid/telephony/ims/ImsStateCallback;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataNetworkController;->registerImsStateCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetworkController;

.field final synthetic blacklist val$imsFeature:Ljava/lang/Integer;

.field final synthetic blacklist val$subId:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetworkController;ILjava/lang/Integer;)V
    .registers 4
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

    .line 2722
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$12;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    iput p2, p0, Lcom/android/internal/telephony/data/DataNetworkController$12;->val$subId:I

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataNetworkController$12;->val$imsFeature:Ljava/lang/Integer;

    invoke-direct {p0}, Landroid/telephony/ims/ImsStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAvailable()V
    .registers 6

    .line 2731
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$12;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmImsFeaturePackageName(Lcom/android/internal/telephony/data/DataNetworkController;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController$12;->val$imsFeature:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lcom/android/internal/telephony/ims/ImsResolver;->getInstance()Lcom/android/internal/telephony/ims/ImsResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController$12;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {v3}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 2732
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController$12;->val$imsFeature:Ljava/lang/Integer;

    .line 2733
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2732
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/ims/ImsResolver;->getConfiguredImsServicePackageName(II)Ljava/lang/String;

    move-result-object v2

    .line 2731
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2735
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$12;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController$12;->val$subId:I

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$12;->val$imsFeature:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mregisterImsFeatureRegistrationState(Lcom/android/internal/telephony/data/DataNetworkController;II)V

    return-void
.end method

.method public whitelist onError()V
    .registers 1

    .line 0
    return-void
.end method

.method public whitelist onUnavailable(I)V
    .registers 3

    .line 2726
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$12;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$12;->val$subId:I

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$12;->val$imsFeature:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$munregisterImsFeatureRegistrationState(Lcom/android/internal/telephony/data/DataNetworkController;II)V

    return-void
.end method
