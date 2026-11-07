.class Landroid/telephony/ims/compat/ImsService$1;
.super Lcom/android/ims/internal/IImsServiceController$Stub;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/compat/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/compat/ImsService;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/compat/ImsService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telephony/ims/compat/ImsService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsServiceController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 116
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/compat/ImsService;->-$$Nest$maddImsFeatureStatusCallback(Landroid/telephony/ims/compat/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 117
    return-void
.end method

.method public blacklist createEmergencyMMTelFeature(I)Lcom/android/ims/internal/IImsMMTelFeature;
    .registers 3
    .param p1, "slotId"    # I

    .line 95
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1}, Landroid/telephony/ims/compat/ImsService;->-$$Nest$mcreateEmergencyMMTelFeatureInternal(Landroid/telephony/ims/compat/ImsService;I)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createMMTelFeature(I)Lcom/android/ims/internal/IImsMMTelFeature;
    .registers 3
    .param p1, "slotId"    # I

    .line 100
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1}, Landroid/telephony/ims/compat/ImsService;->-$$Nest$mcreateMMTelFeatureInternal(Landroid/telephony/ims/compat/ImsService;I)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createRcsFeature(I)Lcom/android/ims/internal/IImsRcsFeature;
    .registers 3
    .param p1, "slotId"    # I

    .line 105
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1}, Landroid/telephony/ims/compat/ImsService;->-$$Nest$mcreateRcsFeatureInternal(Landroid/telephony/ims/compat/ImsService;I)Lcom/android/ims/internal/IImsRcsFeature;

    move-result-object v0

    return-object v0
.end method

.method public blacklist removeFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 122
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/compat/ImsService;->-$$Nest$mremoveImsFeatureStatusCallback(Landroid/telephony/ims/compat/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 123
    return-void
.end method

.method public blacklist removeImsFeature(II)V
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I

    .line 110
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/compat/ImsService;->-$$Nest$mremoveImsFeature(Landroid/telephony/ims/compat/ImsService;II)V

    .line 111
    return-void
.end method
