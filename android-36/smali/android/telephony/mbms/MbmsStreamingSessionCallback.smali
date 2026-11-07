.class public Landroid/telephony/mbms/MbmsStreamingSessionCallback;
.super Ljava/lang/Object;
.source "MbmsStreamingSessionCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/MbmsStreamingSessionCallback$StreamingError;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onError(ILjava/lang/String;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 64
    return-void
.end method

.method public whitelist onMiddlewareReady()V
    .registers 1

    .line 91
    return-void
.end method

.method public whitelist onStreamingServicesUpdated(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/StreamingServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/mbms/StreamingServiceInfo;>;"
    return-void
.end method
