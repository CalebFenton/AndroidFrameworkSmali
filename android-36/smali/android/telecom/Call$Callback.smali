.class public abstract Landroid/telecom/Call$Callback;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Call$Callback$HandoverFailureErrors;
    }
.end annotation


# static fields
.field public static final whitelist HANDOVER_FAILURE_DEST_APP_REJECTED:I = 0x1

.field public static final whitelist HANDOVER_FAILURE_NOT_SUPPORTED:I = 0x2

.field public static final whitelist HANDOVER_FAILURE_ONGOING_EMERGENCY_CALL:I = 0x4

.field public static final whitelist HANDOVER_FAILURE_UNKNOWN:I = 0x5

.field public static final whitelist HANDOVER_FAILURE_USER_REJECTED:I = 0x3


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCallDestroyed(Landroid/telecom/Call;)V
    .registers 2
    .param p1, "call"    # Landroid/telecom/Call;

    .line 1416
    return-void
.end method

.method public whitelist onCannedTextResponsesLoaded(Landroid/telecom/Call;Ljava/util/List;)V
    .registers 3
    .param p1, "call"    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1386
    .local p2, "cannedTextResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public whitelist onChildrenChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .registers 3
    .param p1, "call"    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .line 1368
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    return-void
.end method

.method public whitelist onConferenceableCallsChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .registers 3
    .param p1, "call"    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .line 1426
    .local p2, "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    return-void
.end method

.method public whitelist onConnectionEvent(Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1445
    return-void
.end method

.method public whitelist onDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;)V
    .registers 3
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .line 1376
    return-void
.end method

.method public whitelist onHandoverComplete(Landroid/telecom/Call;)V
    .registers 2
    .param p1, "call"    # Landroid/telecom/Call;

    .line 1502
    return-void
.end method

.method public whitelist onHandoverFailed(Landroid/telecom/Call;I)V
    .registers 3
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "failureReason"    # I

    .line 1514
    return-void
.end method

.method public whitelist onParentChanged(Landroid/telecom/Call;Landroid/telecom/Call;)V
    .registers 3
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "parent"    # Landroid/telecom/Call;

    .line 1360
    return-void
.end method

.method public whitelist onPostDialWait(Landroid/telecom/Call;Ljava/lang/String;)V
    .registers 3
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "remainingPostDialSequence"    # Ljava/lang/String;

    .line 1397
    return-void
.end method

.method public whitelist onRttInitiationFailure(Landroid/telecom/Call;I)V
    .registers 3
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "reason"    # I

    .line 1491
    return-void
.end method

.method public whitelist onRttModeChanged(Landroid/telecom/Call;I)V
    .registers 3
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "mode"    # I

    .line 1454
    return-void
.end method

.method public whitelist onRttRequest(Landroid/telecom/Call;I)V
    .registers 3
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "id"    # I

    .line 1472
    return-void
.end method

.method public whitelist onRttStatusChanged(Landroid/telecom/Call;ZLandroid/telecom/Call$RttCall;)V
    .registers 4
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "enabled"    # Z
    .param p3, "rttCall"    # Landroid/telecom/Call$RttCall;

    .line 1463
    return-void
.end method

.method public whitelist onStateChanged(Landroid/telecom/Call;I)V
    .registers 3
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "state"    # I

    .line 1352
    return-void
.end method

.method public whitelist onVideoCallChanged(Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V
    .registers 3
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "videoCall"    # Landroid/telecom/InCallService$VideoCall;

    .line 1405
    return-void
.end method
