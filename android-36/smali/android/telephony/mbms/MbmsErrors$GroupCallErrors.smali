.class public Landroid/telephony/mbms/MbmsErrors$GroupCallErrors;
.super Ljava/lang/Object;
.source "MbmsErrors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/MbmsErrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupCallErrors"
.end annotation


# static fields
.field public static final whitelist ERROR_DUPLICATE_START_GROUP_CALL:I = 0x1f6

.field public static final whitelist ERROR_UNABLE_TO_START_SERVICE:I = 0x1f5


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
