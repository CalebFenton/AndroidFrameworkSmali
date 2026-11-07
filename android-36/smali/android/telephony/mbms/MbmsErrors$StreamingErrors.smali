.class public Landroid/telephony/mbms/MbmsErrors$StreamingErrors;
.super Ljava/lang/Object;
.source "MbmsErrors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/MbmsErrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamingErrors"
.end annotation


# static fields
.field public static final whitelist ERROR_CONCURRENT_SERVICE_LIMIT_REACHED:I = 0x12d

.field public static final whitelist ERROR_DUPLICATE_START_STREAM:I = 0x12f

.field public static final whitelist ERROR_UNABLE_TO_START_SERVICE:I = 0x12e


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
