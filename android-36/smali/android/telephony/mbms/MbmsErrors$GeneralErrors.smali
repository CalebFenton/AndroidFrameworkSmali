.class public Landroid/telephony/mbms/MbmsErrors$GeneralErrors;
.super Ljava/lang/Object;
.source "MbmsErrors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/MbmsErrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneralErrors"
.end annotation


# static fields
.field public static final whitelist ERROR_CARRIER_CHANGE_NOT_ALLOWED:I = 0xcf

.field public static final whitelist ERROR_IN_E911:I = 0xcc

.field public static final whitelist ERROR_MIDDLEWARE_NOT_YET_READY:I = 0xc9

.field public static final whitelist ERROR_MIDDLEWARE_TEMPORARILY_UNAVAILABLE:I = 0xcb

.field public static final whitelist ERROR_NOT_CONNECTED_TO_HOME_CARRIER_LTE:I = 0xcd

.field public static final whitelist ERROR_OUT_OF_MEMORY:I = 0xca

.field public static final whitelist ERROR_UNABLE_TO_READ_SIM:I = 0xce


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
