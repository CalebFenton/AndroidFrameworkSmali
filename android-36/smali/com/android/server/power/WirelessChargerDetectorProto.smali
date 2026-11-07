.class public final Lcom/android/server/power/WirelessChargerDetectorProto;
.super Ljava/lang/Object;
.source "WirelessChargerDetectorProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/WirelessChargerDetectorProto$VectorProto;
    }
.end annotation


# static fields
.field public static final blacklist DETECTION_START_TIME_MS:J = 0x10300000005L

.field public static final blacklist FIRST_SAMPLE:J = 0x10b00000009L

.field public static final blacklist IS_AT_REST:J = 0x10800000002L

.field public static final blacklist IS_DETECTION_IN_PROGRESS:J = 0x10800000004L

.field public static final blacklist IS_MUST_UPDATE_REST_POSITION:J = 0x10800000006L

.field public static final blacklist IS_POWERED_WIRELESSLY:J = 0x10800000001L

.field public static final blacklist LAST_SAMPLE:J = 0x10b0000000aL

.field public static final blacklist MOVING_SAMPLES:J = 0x10500000008L

.field public static final blacklist REST:J = 0x10b00000003L

.field public static final blacklist TOTAL_SAMPLES:J = 0x10500000007L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
