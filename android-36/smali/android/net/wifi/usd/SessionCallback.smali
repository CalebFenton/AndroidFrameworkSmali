.class public abstract Landroid/net/wifi/usd/SessionCallback;
.super Ljava/lang/Object;
.source "SessionCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/usd/SessionCallback$TerminationReasonCode;,
        Landroid/net/wifi/usd/SessionCallback$FailureCode;
    }
.end annotation


# static fields
.field public static final whitelist FAILURE_MAX_SESSIONS_REACHED:I = 0x3

.field public static final whitelist FAILURE_NOT_AVAILABLE:I = 0x2

.field public static final whitelist FAILURE_TIMEOUT:I = 0x1

.field public static final whitelist FAILURE_UNKNOWN:I = 0x0

.field public static final whitelist TERMINATION_REASON_NOT_AVAILABLE:I = 0x1

.field public static final whitelist TERMINATION_REASON_UNKNOWN:I = 0x0

.field public static final whitelist TERMINATION_REASON_USER_INITIATED:I = 0x2


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onMessageReceived(I[B)V
    .registers 3
    .param p1, "peerId"    # I
    .param p2, "message"    # [B

    .line 119
    return-void
.end method

.method public whitelist onSessionTerminated(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 110
    return-void
.end method
