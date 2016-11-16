.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;
.super Lcom/android/ims/ImsConfigListener$Stub;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@0
    .prologue
    .line 2204
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-direct {p0}, Lcom/android/ims/ImsConfigListener$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onGetFeatureResponse(IIII)V
    .locals 0
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "status"    # I

    #@0
    .prologue
    .line 2206
    return-void
.end method

.method public onGetVideoQuality(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "quality"    # I

    #@0
    .prologue
    .line 2215
    return-void
.end method

.method public onSetFeatureResponse(IIII)V
    .locals 6
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "status"    # I

    #@0
    .prologue
    .line 2210
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@5
    move-result-object v0

    #@6
    .line 2211
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@8
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@a
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@d
    move-result v1

    #@e
    move v2, p1

    #@f
    move v3, p2

    #@10
    move v4, p3

    #@11
    move v5, p4

    #@12
    .line 2210
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeImsSetFeatureValue(IIIII)V

    #@15
    .line 2209
    return-void
.end method

.method public onSetVideoQuality(I)V
    .locals 0
    .param p1, "status"    # I

    #@0
    .prologue
    .line 2218
    return-void
.end method
