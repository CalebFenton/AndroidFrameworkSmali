.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SrvccStartedCallback;
.super Landroid/telephony/ims/aidl/ISrvccStartedCallback$Stub;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrvccStartedCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 745
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SrvccStartedCallback;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/ISrvccStartedCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SrvccStartedCallback;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    return-void
.end method


# virtual methods
.method public blacklist onSrvccCallNotified(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/SrvccCall;",
            ">;)V"
        }
    .end annotation

    .line 748
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SrvccStartedCallback;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->handleSrvccConnectionInfo(Ljava/util/List;)V

    return-void
.end method
