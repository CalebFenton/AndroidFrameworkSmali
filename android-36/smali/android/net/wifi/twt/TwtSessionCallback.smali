.class public interface abstract Landroid/net/wifi/twt/TwtSessionCallback;
.super Ljava/lang/Object;
.source "TwtSessionCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/twt/TwtSessionCallback$TwtReasonCode;,
        Landroid/net/wifi/twt/TwtSessionCallback$TwtErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist TWT_ERROR_CODE_AP_NOT_SUPPORTED:I = 0x1

.field public static final whitelist TWT_ERROR_CODE_AP_OUI_BLOCKLISTED:I = 0x2

.field public static final whitelist TWT_ERROR_CODE_AP_REJECTED:I = 0x3

.field public static final whitelist TWT_ERROR_CODE_FAIL:I = 0x0

.field public static final whitelist TWT_ERROR_CODE_INVALID_PARAMS:I = 0x4

.field public static final whitelist TWT_ERROR_CODE_MAX_SESSIONS_REACHED:I = 0x5

.field public static final whitelist TWT_ERROR_CODE_NOT_AVAILABLE:I = 0x6

.field public static final whitelist TWT_ERROR_CODE_NOT_SUPPORTED:I = 0x7

.field public static final whitelist TWT_ERROR_CODE_TIMEOUT:I = 0x8

.field public static final whitelist TWT_REASON_CODE_INTERNALLY_INITIATED:I = 0x2

.field public static final whitelist TWT_REASON_CODE_LOCALLY_REQUESTED:I = 0x1

.field public static final whitelist TWT_REASON_CODE_PEER_INITIATED:I = 0x3

.field public static final whitelist TWT_REASON_CODE_UNKNOWN:I


# virtual methods
.method public abstract whitelist onCreate(Landroid/net/wifi/twt/TwtSession;)V
.end method

.method public abstract whitelist onFailure(I)V
.end method

.method public abstract whitelist onTeardown(I)V
.end method
