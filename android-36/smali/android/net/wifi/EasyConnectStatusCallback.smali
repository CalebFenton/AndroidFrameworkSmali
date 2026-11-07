.class public abstract Landroid/net/wifi/EasyConnectStatusCallback;
.super Ljava/lang/Object;
.source "EasyConnectStatusCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/EasyConnectStatusCallback$EasyConnectFailureStatusCode;,
        Landroid/net/wifi/EasyConnectStatusCallback$EasyConnectProgressStatusCode;,
        Landroid/net/wifi/EasyConnectStatusCallback$EasyConnectSuccessStatusCode;
    }
.end annotation


# static fields
.field public static final whitelist EASY_CONNECT_EVENT_FAILURE_AUTHENTICATION:I = -0x2

.field public static final whitelist EASY_CONNECT_EVENT_FAILURE_BUSY:I = -0x5

.field public static final whitelist EASY_CONNECT_EVENT_FAILURE_CANNOT_FIND_NETWORK:I = -0xa

.field public static final whitelist EASY_CONNECT_EVENT_FAILURE_CONFIGURATION:I = -0x4

.field public static final whitelist EASY_CONNECT_EVENT_FAILURE_ENROLLEE_AUTHENTICATION:I = -0xb

.field public static final whitelist EASY_CONNECT_EVENT_FAILURE_ENROLLEE_FAILED_TO_SCAN_NETWORK_CHANNEL:I = -0xe

.field public static final whitelist EASY_CONNECT_EVENT_FAILURE_ENROLLEE_REJECTED_CONFIGURATION:I = -0xc

.field public static final whitelist EASY_CONNECT_EVENT_FAILURE_GENERIC:I = -0x7

.field public static final whitelist EASY_CONNECT_EVENT_FAILURE_INVALID_NETWORK:I = -0x9

.field public static final whitelist EASY_CONNECT_EVENT_FAILURE_INVALID_URI:I = -0x1

.field public static final whitelist EASY_CONNECT_EVENT_FAILURE_NOT_COMPATIBLE:I = -0x3

.field public static final whitelist EASY_CONNECT_EVENT_FAILURE_NOT_SUPPORTED:I = -0x8

.field public static final whitelist EASY_CONNECT_EVENT_FAILURE_TIMEOUT:I = -0x6

.field public static final whitelist EASY_CONNECT_EVENT_FAILURE_URI_GENERATION:I = -0xd

.field public static final whitelist EASY_CONNECT_EVENT_PROGRESS_AUTHENTICATION_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EASY_CONNECT_EVENT_PROGRESS_CONFIGURATION_ACCEPTED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EASY_CONNECT_EVENT_PROGRESS_CONFIGURATION_SENT_WAITING_RESPONSE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EASY_CONNECT_EVENT_PROGRESS_RESPONSE_PENDING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EASY_CONNECT_EVENT_SUCCESS_CONFIGURATION_APPLIED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EASY_CONNECT_EVENT_SUCCESS_CONFIGURATION_SENT:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    return-void
.end method


# virtual methods
.method public whitelist onBootstrapUriGenerated(Landroid/net/Uri;)V
    .registers 2
    .param p1, "dppUri"    # Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 300
    return-void
.end method

.method public abstract whitelist onConfiguratorSuccess(I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onEnrolleeSuccess(I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public whitelist onFailure(I)V
    .registers 2
    .param p1, "code"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 247
    return-void
.end method

.method public whitelist onFailure(ILjava/lang/String;Landroid/util/SparseArray;[I)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "ssid"    # Ljava/lang/String;
    .param p4, "operatingClassArray"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "[I>;[I)V"
        }
    .end annotation

    .line 275
    .local p3, "channelListArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-virtual {p0, p1}, Landroid/net/wifi/EasyConnectStatusCallback;->onFailure(I)V

    .line 276
    return-void
.end method

.method public abstract whitelist onProgress(I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method
