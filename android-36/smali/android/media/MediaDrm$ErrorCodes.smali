.class public final Landroid/media/MediaDrm$ErrorCodes;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ErrorCodes"
.end annotation


# static fields
.field public static final whitelist ERROR_CERTIFICATE_MALFORMED:I = 0xa

.field public static final whitelist ERROR_CERTIFICATE_MISSING:I = 0xb

.field public static final whitelist ERROR_CRYPTO_LIBRARY:I = 0xc

.field public static final whitelist ERROR_FRAME_TOO_LARGE:I = 0x8

.field public static final whitelist ERROR_GENERIC_OEM:I = 0xd

.field public static final whitelist ERROR_GENERIC_PLUGIN:I = 0xe

.field public static final whitelist ERROR_INIT_DATA:I = 0xf

.field public static final whitelist ERROR_INSUFFICIENT_OUTPUT_PROTECTION:I = 0x4

.field public static final whitelist ERROR_INSUFFICIENT_SECURITY:I = 0x7

.field public static final whitelist ERROR_KEY_EXPIRED:I = 0x2

.field public static final whitelist ERROR_KEY_NOT_LOADED:I = 0x10

.field public static final whitelist ERROR_LICENSE_PARSE:I = 0x11

.field public static final whitelist ERROR_LICENSE_POLICY:I = 0x12

.field public static final whitelist ERROR_LICENSE_RELEASE:I = 0x13

.field public static final whitelist ERROR_LICENSE_REQUEST_REJECTED:I = 0x14

.field public static final whitelist ERROR_LICENSE_RESTORE:I = 0x15

.field public static final whitelist ERROR_LICENSE_STATE:I = 0x16

.field public static final whitelist ERROR_LOST_STATE:I = 0x9

.field public static final whitelist ERROR_MEDIA_FRAMEWORK:I = 0x17

.field public static final whitelist ERROR_NO_KEY:I = 0x1

.field public static final whitelist ERROR_PROVISIONING_CERTIFICATE:I = 0x18

.field public static final whitelist ERROR_PROVISIONING_CONFIG:I = 0x19

.field public static final whitelist ERROR_PROVISIONING_PARSE:I = 0x1a

.field public static final whitelist ERROR_PROVISIONING_REQUEST_REJECTED:I = 0x1b

.field public static final whitelist ERROR_PROVISIONING_RETRY:I = 0x1c

.field public static final whitelist ERROR_RESOURCE_BUSY:I = 0x3

.field public static final whitelist ERROR_RESOURCE_CONTENTION:I = 0x1d

.field public static final whitelist ERROR_SECURE_STOP_RELEASE:I = 0x1e

.field public static final whitelist ERROR_SESSION_NOT_OPENED:I = 0x5

.field public static final whitelist ERROR_STORAGE_READ:I = 0x1f

.field public static final whitelist ERROR_STORAGE_WRITE:I = 0x20

.field public static final whitelist ERROR_UNKNOWN:I = 0x0

.field public static final whitelist ERROR_UNSUPPORTED_OPERATION:I = 0x6

.field public static final whitelist ERROR_ZERO_SUBSAMPLES:I = 0x21


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
