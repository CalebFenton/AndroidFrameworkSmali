.class public interface abstract Landroid/telephony/mbms/GroupCallCallback;
.super Ljava/lang/Object;
.source "GroupCallCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/GroupCallCallback$GroupCallError;
    }
.end annotation


# static fields
.field public static final whitelist SIGNAL_STRENGTH_UNAVAILABLE:I = -0x1


# virtual methods
.method public whitelist onBroadcastSignalStrengthUpdated(I)V
    .registers 2
    .param p1, "signalStrength"    # I

    .line 82
    return-void
.end method

.method public whitelist onError(ILjava/lang/String;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 60
    return-void
.end method

.method public whitelist onGroupCallStateChanged(II)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .line 69
    return-void
.end method
