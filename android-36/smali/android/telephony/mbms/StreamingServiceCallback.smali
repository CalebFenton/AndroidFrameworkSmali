.class public Landroid/telephony/mbms/StreamingServiceCallback;
.super Ljava/lang/Object;
.source "StreamingServiceCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/StreamingServiceCallback$StreamingServiceError;
    }
.end annotation


# static fields
.field public static final whitelist SIGNAL_STRENGTH_UNAVAILABLE:I = -0x1


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBroadcastSignalStrengthUpdated(I)V
    .registers 2
    .param p1, "signalStrength"    # I

    .line 104
    return-void
.end method

.method public whitelist onError(ILjava/lang/String;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 65
    return-void
.end method

.method public whitelist onMediaDescriptionUpdated()V
    .registers 1

    .line 90
    return-void
.end method

.method public whitelist onStreamMethodUpdated(I)V
    .registers 2
    .param p1, "methodType"    # I

    .line 124
    return-void
.end method

.method public whitelist onStreamStateUpdated(II)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .line 76
    return-void
.end method
