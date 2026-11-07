.class public Landroid/telephony/mbms/MbmsErrors$DownloadErrors;
.super Ljava/lang/Object;
.source "MbmsErrors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/MbmsErrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadErrors"
.end annotation


# static fields
.field public static final whitelist ERROR_CANNOT_CHANGE_TEMP_FILE_ROOT:I = 0x191

.field public static final whitelist ERROR_MALFORMED_SERVICE_ANNOUNCEMENT:I = 0x194

.field public static final whitelist ERROR_UNKNOWN_DOWNLOAD_REQUEST:I = 0x192

.field public static final whitelist ERROR_UNKNOWN_FILE_INFO:I = 0x193


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
