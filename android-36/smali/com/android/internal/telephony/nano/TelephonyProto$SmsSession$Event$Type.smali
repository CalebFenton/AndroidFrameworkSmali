.class public interface abstract Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$Type;
.super Ljava/lang/Object;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Type"
.end annotation


# static fields
.field public static final blacklist CB_SMS_RECEIVED:I = 0x9

.field public static final blacklist DATA_CALL_LIST_CHANGED:I = 0x5

.field public static final blacklist EVENT_UNKNOWN:I = 0x0

.field public static final blacklist IMS_CAPABILITIES_CHANGED:I = 0x4

.field public static final blacklist IMS_CONNECTION_STATE_CHANGED:I = 0x3

.field public static final blacklist INCOMPLETE_SMS_RECEIVED:I = 0xa

.field public static final blacklist RIL_SERVICE_STATE_CHANGED:I = 0x2

.field public static final blacklist SETTINGS_CHANGED:I = 0x1

.field public static final blacklist SMS_RECEIVED:I = 0x8

.field public static final blacklist SMS_SEND:I = 0x6

.field public static final blacklist SMS_SEND_RESULT:I = 0x7
