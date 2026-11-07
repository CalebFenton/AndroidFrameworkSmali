.class public interface abstract Landroid/telephony/NumberVerificationCallback;
.super Ljava/lang/Object;
.source "NumberVerificationCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/NumberVerificationCallback$NumberVerificationFailureReason;
    }
.end annotation


# static fields
.field public static final whitelist REASON_CONCURRENT_REQUESTS:I = 0x4

.field public static final whitelist REASON_IN_ECBM:I = 0x5

.field public static final whitelist REASON_IN_EMERGENCY_CALL:I = 0x6

.field public static final whitelist REASON_NETWORK_NOT_AVAILABLE:I = 0x2

.field public static final whitelist REASON_TIMED_OUT:I = 0x1

.field public static final whitelist REASON_TOO_MANY_CALLS:I = 0x3

.field public static final whitelist REASON_UNSPECIFIED:I


# virtual methods
.method public whitelist onCallReceived(Ljava/lang/String;)V
    .registers 2
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 85
    return-void
.end method

.method public whitelist onVerificationFailed(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 91
    return-void
.end method
