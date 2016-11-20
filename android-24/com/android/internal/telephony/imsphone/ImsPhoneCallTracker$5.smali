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
    .line 1831
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
    .line 1833
    return-void
.end method

.method public onGetVideoQuality(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "quality"    # I

    #@0
    .prologue
    .line 1841
    return-void
.end method

.method public onSetFeatureResponse(IIII)V
    .locals 1
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "status"    # I

    #@0
    .prologue
    .line 1837
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get3(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/TelephonyEventLog;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsSetFeatureValue(IIII)V

    #@9
    .line 1836
    return-void
.end method

.method public onSetVideoQuality(I)V
    .locals 0
    .param p1, "status"    # I

    #@0
    .prologue
    .line 1844
    return-void
.end method
