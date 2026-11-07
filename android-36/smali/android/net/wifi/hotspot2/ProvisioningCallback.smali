.class public abstract Landroid/net/wifi/hotspot2/ProvisioningCallback;
.super Ljava/lang/Object;
.source "ProvisioningCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/ProvisioningCallback$OsuStatus;,
        Landroid/net/wifi/hotspot2/ProvisioningCallback$OsuFailure;
    }
.end annotation


# static fields
.field public static final whitelist OSU_FAILURE_ADD_PASSPOINT_CONFIGURATION:I = 0x16

.field public static final whitelist OSU_FAILURE_AP_CONNECTION:I = 0x1

.field public static final whitelist OSU_FAILURE_INVALID_URL_FORMAT_FOR_OSU:I = 0x8

.field public static final whitelist OSU_FAILURE_NO_AAA_SERVER_TRUST_ROOT_NODE:I = 0x11

.field public static final whitelist OSU_FAILURE_NO_AAA_TRUST_ROOT_CERTIFICATE:I = 0x15

.field public static final whitelist OSU_FAILURE_NO_OSU_ACTIVITY_FOUND:I = 0xe

.field public static final whitelist OSU_FAILURE_NO_POLICY_SERVER_TRUST_ROOT_NODE:I = 0x13

.field public static final whitelist OSU_FAILURE_NO_PPS_MO:I = 0x10

.field public static final whitelist OSU_FAILURE_NO_REMEDIATION_SERVER_TRUST_ROOT_NODE:I = 0x12

.field public static final whitelist OSU_FAILURE_OSU_PROVIDER_NOT_FOUND:I = 0x17

.field public static final whitelist OSU_FAILURE_PROVISIONING_ABORTED:I = 0x6

.field public static final whitelist OSU_FAILURE_PROVISIONING_NOT_AVAILABLE:I = 0x7

.field public static final whitelist OSU_FAILURE_RETRIEVE_TRUST_ROOT_CERTIFICATES:I = 0x14

.field public static final whitelist OSU_FAILURE_SERVER_CONNECTION:I = 0x3

.field public static final whitelist OSU_FAILURE_SERVER_URL_INVALID:I = 0x2

.field public static final whitelist OSU_FAILURE_SERVER_VALIDATION:I = 0x4

.field public static final whitelist OSU_FAILURE_SERVICE_PROVIDER_VERIFICATION:I = 0x5

.field public static final whitelist OSU_FAILURE_SOAP_MESSAGE_EXCHANGE:I = 0xb

.field public static final whitelist OSU_FAILURE_START_REDIRECT_LISTENER:I = 0xc

.field public static final whitelist OSU_FAILURE_TIMED_OUT_REDIRECT_LISTENER:I = 0xd

.field public static final whitelist OSU_FAILURE_UNEXPECTED_COMMAND_TYPE:I = 0x9

.field public static final whitelist OSU_FAILURE_UNEXPECTED_SOAP_MESSAGE_STATUS:I = 0xf

.field public static final whitelist OSU_FAILURE_UNEXPECTED_SOAP_MESSAGE_TYPE:I = 0xa

.field public static final whitelist OSU_STATUS_AP_CONNECTED:I = 0x2

.field public static final whitelist OSU_STATUS_AP_CONNECTING:I = 0x1

.field public static final whitelist OSU_STATUS_INIT_SOAP_EXCHANGE:I = 0x6

.field public static final whitelist OSU_STATUS_REDIRECT_RESPONSE_RECEIVED:I = 0x8

.field public static final whitelist OSU_STATUS_RETRIEVING_TRUST_ROOT_CERTS:I = 0xb

.field public static final whitelist OSU_STATUS_SECOND_SOAP_EXCHANGE:I = 0x9

.field public static final whitelist OSU_STATUS_SERVER_CONNECTED:I = 0x5

.field public static final whitelist OSU_STATUS_SERVER_CONNECTING:I = 0x3

.field public static final whitelist OSU_STATUS_SERVER_VALIDATED:I = 0x4

.field public static final whitelist OSU_STATUS_THIRD_SOAP_EXCHANGE:I = 0xa

.field public static final whitelist OSU_STATUS_WAITING_FOR_REDIRECT_RESPONSE:I = 0x7


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onProvisioningComplete()V
.end method

.method public abstract whitelist onProvisioningFailure(I)V
.end method

.method public abstract whitelist onProvisioningStatus(I)V
.end method
