.class public Lcom/android/ims/ImsConfig$ConfigConstants;
.super Ljava/lang/Object;
.source "ImsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigConstants"
.end annotation


# static fields
.field public static final AVAILABILITY_CACHE_EXPIRATION:I = 0x12

.field public static final CANCELLATION_TIMER:I = 0x4

.field public static final CAPABILITIES_CACHE_EXPIRATION:I = 0x11

.field public static final CAPABILITIES_POLL_INTERVAL:I = 0x13

.field public static final CAPAB_POLL_LIST_SUB_EXP:I = 0x16

.field public static final CONFIG_START:I = 0x0

.field public static final DOMAIN_NAME:I = 0xc

.field public static final EAB_SETTING_ENABLED:I = 0x18

.field public static final GZIP_FLAG:I = 0x17

.field public static final LVC_SETTING_ENABLED:I = 0xb

.field public static final MAX_NUMENTRIES_IN_RCL:I = 0x15

.field public static final MIN_SE:I = 0x3

.field public static final PROVISIONED_CONFIG_END:I = 0x1a

.field public static final PROVISIONED_CONFIG_START:I = 0x0

.field public static final PUBLISH_TIMER:I = 0xf

.field public static final PUBLISH_TIMER_EXTENDED:I = 0x10

.field public static final SILENT_REDIAL_ENABLE:I = 0x6

.field public static final SIP_SESSION_TIMER:I = 0x2

.field public static final SIP_T1_TIMER:I = 0x7

.field public static final SIP_T2_TIMER:I = 0x8

.field public static final SIP_TF_TIMER:I = 0x9

.field public static final SMS_FORMAT:I = 0xd

.field public static final SMS_OVER_IP:I = 0xe

.field public static final SOURCE_THROTTLE_PUBLISH:I = 0x14

.field public static final TDELAY:I = 0x5

.field public static final VLT_SETTING_ENABLED:I = 0xa

.field public static final VOCODER_AMRMODESET:I = 0x0

.field public static final VOCODER_AMRWBMODESET:I = 0x1

.field public static final VOICE_OVER_WIFI_MODE:I = 0x1a

.field public static final VOICE_OVER_WIFI_ROAMING:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
