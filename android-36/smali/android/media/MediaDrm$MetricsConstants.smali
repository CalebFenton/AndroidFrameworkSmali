.class public final Landroid/media/MediaDrm$MetricsConstants;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetricsConstants"
.end annotation


# static fields
.field public static final whitelist CLOSE_SESSION_ERROR_COUNT:Ljava/lang/String; = "drm.mediadrm.close_session.error.count"

.field public static final whitelist CLOSE_SESSION_ERROR_LIST:Ljava/lang/String; = "drm.mediadrm.close_session.error.list"

.field public static final whitelist CLOSE_SESSION_OK_COUNT:Ljava/lang/String; = "drm.mediadrm.close_session.ok.count"

.field public static final whitelist EVENT_KEY_EXPIRED_COUNT:Ljava/lang/String; = "drm.mediadrm.event.KEY_EXPIRED.count"

.field public static final whitelist EVENT_KEY_NEEDED_COUNT:Ljava/lang/String; = "drm.mediadrm.event.KEY_NEEDED.count"

.field public static final whitelist EVENT_PROVISION_REQUIRED_COUNT:Ljava/lang/String; = "drm.mediadrm.event.PROVISION_REQUIRED.count"

.field public static final whitelist EVENT_SESSION_RECLAIMED_COUNT:Ljava/lang/String; = "drm.mediadrm.event.SESSION_RECLAIMED.count"

.field public static final whitelist EVENT_VENDOR_DEFINED_COUNT:Ljava/lang/String; = "drm.mediadrm.event.VENDOR_DEFINED.count"

.field public static final whitelist GET_DEVICE_UNIQUE_ID_ERROR_COUNT:Ljava/lang/String; = "drm.mediadrm.get_device_unique_id.error.count"

.field public static final whitelist GET_DEVICE_UNIQUE_ID_ERROR_LIST:Ljava/lang/String; = "drm.mediadrm.get_device_unique_id.error.list"

.field public static final whitelist GET_DEVICE_UNIQUE_ID_OK_COUNT:Ljava/lang/String; = "drm.mediadrm.get_device_unique_id.ok.count"

.field public static final whitelist GET_KEY_REQUEST_ERROR_COUNT:Ljava/lang/String; = "drm.mediadrm.get_key_request.error.count"

.field public static final whitelist GET_KEY_REQUEST_ERROR_LIST:Ljava/lang/String; = "drm.mediadrm.get_key_request.error.list"

.field public static final whitelist GET_KEY_REQUEST_OK_COUNT:Ljava/lang/String; = "drm.mediadrm.get_key_request.ok.count"

.field public static final whitelist GET_KEY_REQUEST_OK_TIME_MICROS:Ljava/lang/String; = "drm.mediadrm.get_key_request.ok.average_time_micros"

.field public static final whitelist GET_PROVISION_REQUEST_ERROR_COUNT:Ljava/lang/String; = "drm.mediadrm.get_provision_request.error.count"

.field public static final whitelist GET_PROVISION_REQUEST_ERROR_LIST:Ljava/lang/String; = "drm.mediadrm.get_provision_request.error.list"

.field public static final whitelist GET_PROVISION_REQUEST_OK_COUNT:Ljava/lang/String; = "drm.mediadrm.get_provision_request.ok.count"

.field public static final whitelist KEY_STATUS_EXPIRED_COUNT:Ljava/lang/String; = "drm.mediadrm.key_status.EXPIRED.count"

.field public static final whitelist KEY_STATUS_INTERNAL_ERROR_COUNT:Ljava/lang/String; = "drm.mediadrm.key_status.INTERNAL_ERROR.count"

.field public static final whitelist KEY_STATUS_OUTPUT_NOT_ALLOWED_COUNT:Ljava/lang/String; = "drm.mediadrm.key_status_change.OUTPUT_NOT_ALLOWED.count"

.field public static final whitelist KEY_STATUS_PENDING_COUNT:Ljava/lang/String; = "drm.mediadrm.key_status_change.PENDING.count"

.field public static final whitelist KEY_STATUS_USABLE_COUNT:Ljava/lang/String; = "drm.mediadrm.key_status_change.USABLE.count"

.field public static final whitelist OPEN_SESSION_ERROR_COUNT:Ljava/lang/String; = "drm.mediadrm.open_session.error.count"

.field public static final whitelist OPEN_SESSION_ERROR_LIST:Ljava/lang/String; = "drm.mediadrm.open_session.error.list"

.field public static final whitelist OPEN_SESSION_OK_COUNT:Ljava/lang/String; = "drm.mediadrm.open_session.ok.count"

.field public static final whitelist PROVIDE_KEY_RESPONSE_ERROR_COUNT:Ljava/lang/String; = "drm.mediadrm.provide_key_response.error.count"

.field public static final whitelist PROVIDE_KEY_RESPONSE_ERROR_LIST:Ljava/lang/String; = "drm.mediadrm.provide_key_response.error.list"

.field public static final whitelist PROVIDE_KEY_RESPONSE_OK_COUNT:Ljava/lang/String; = "drm.mediadrm.provide_key_response.ok.count"

.field public static final whitelist PROVIDE_KEY_RESPONSE_OK_TIME_MICROS:Ljava/lang/String; = "drm.mediadrm.provide_key_response.ok.average_time_micros"

.field public static final whitelist PROVIDE_PROVISION_RESPONSE_ERROR_COUNT:Ljava/lang/String; = "drm.mediadrm.provide_provision_response.error.count"

.field public static final whitelist PROVIDE_PROVISION_RESPONSE_ERROR_LIST:Ljava/lang/String; = "drm.mediadrm.provide_provision_response.error.list"

.field public static final whitelist PROVIDE_PROVISION_RESPONSE_OK_COUNT:Ljava/lang/String; = "drm.mediadrm.provide_provision_response.ok.count"

.field public static final whitelist SESSION_END_TIMES_MS:Ljava/lang/String; = "drm.mediadrm.session_end_times_ms"

.field public static final whitelist SESSION_START_TIMES_MS:Ljava/lang/String; = "drm.mediadrm.session_start_times_ms"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
