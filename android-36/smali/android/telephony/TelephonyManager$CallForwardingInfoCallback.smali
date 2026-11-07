.class public interface abstract Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallForwardingInfoCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$CallForwardingInfoCallback$CallForwardingError;
    }
.end annotation


# static fields
.field public static final whitelist RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x2

.field public static final whitelist RESULT_ERROR_NOT_SUPPORTED:I = 0x3

.field public static final whitelist RESULT_ERROR_UNKNOWN:I = 0x1

.field public static final whitelist RESULT_SUCCESS:I


# virtual methods
.method public abstract whitelist onCallForwardingInfoAvailable(Landroid/telephony/CallForwardingInfo;)V
.end method

.method public abstract whitelist onError(I)V
.end method
