.class public Landroid/telephony/mbms/MbmsErrors$InitializationErrors;
.super Ljava/lang/Object;
.source "MbmsErrors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/MbmsErrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializationErrors"
.end annotation


# static fields
.field public static final whitelist ERROR_APP_PERMISSIONS_NOT_GRANTED:I = 0x66

.field public static final whitelist ERROR_DUPLICATE_INITIALIZE:I = 0x65

.field public static final whitelist ERROR_UNABLE_TO_INITIALIZE:I = 0x67


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
