.class public interface abstract Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState$State;
.super Ljava/lang/Object;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "State"
.end annotation


# static fields
.field public static final blacklist CONNECTED:I = 0x1

.field public static final blacklist DISCONNECTED:I = 0x3

.field public static final blacklist PROGRESSING:I = 0x2

.field public static final blacklist RESUMED:I = 0x4

.field public static final blacklist STATE_UNKNOWN:I = 0x0

.field public static final blacklist SUSPENDED:I = 0x5
