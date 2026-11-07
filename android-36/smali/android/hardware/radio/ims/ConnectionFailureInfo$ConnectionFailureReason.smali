.class public interface abstract annotation Landroid/hardware/radio/ims/ConnectionFailureInfo$ConnectionFailureReason;
.super Ljava/lang/Object;
.source "ConnectionFailureInfo.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ims/ConnectionFailureInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ConnectionFailureReason"
.end annotation


# static fields
.field public static final blacklist INVALID:I = 0x0

.field public static final blacklist REASON_ACCESS_DENIED:I = 0x1

.field public static final blacklist REASON_NAS_FAILURE:I = 0x2

.field public static final blacklist REASON_NO_SERVICE:I = 0x7

.field public static final blacklist REASON_PDN_NOT_AVAILABLE:I = 0x8

.field public static final blacklist REASON_RACH_FAILURE:I = 0x3

.field public static final blacklist REASON_RF_BUSY:I = 0x9

.field public static final blacklist REASON_RLC_FAILURE:I = 0x4

.field public static final blacklist REASON_RRC_REJECT:I = 0x5

.field public static final blacklist REASON_RRC_TIMEOUT:I = 0x6

.field public static final blacklist REASON_UNSPECIFIED:I = 0xffff
