.class public final Lcom/android/server/job/JobStatusDumpProto$JobInfo;
.super Ljava/lang/Object;
.source "JobStatusDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStatusDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JobInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobStatusDumpProto$JobInfo$Backoff;,
        Lcom/android/server/job/JobStatusDumpProto$JobInfo$TriggerContentUri;
    }
.end annotation


# static fields
.field public static final blacklist BACKOFF_POLICY:J = 0x10b00000016L

.field public static final blacklist CLIP_DATA:J = 0x10b00000010L

.field public static final blacklist EXTRAS:J = 0x10b0000000eL

.field public static final blacklist FLAGS:J = 0x10500000007L

.field public static final blacklist GRANTED_URI_PERMISSIONS:J = 0x10b00000011L

.field public static final blacklist HAS_EARLY_CONSTRAINT:J = 0x10800000017L

.field public static final blacklist HAS_LATE_CONSTRAINT:J = 0x10800000018L

.field public static final blacklist IS_PERIODIC:J = 0x10800000002L

.field public static final blacklist IS_PERSISTED:J = 0x10800000005L

.field public static final blacklist MAX_EXECUTION_DELAY_MS:J = 0x10300000015L

.field public static final blacklist MIN_LATENCY_MS:J = 0x10300000014L

.field public static final blacklist PERIOD_FLEX_MS:J = 0x10300000004L

.field public static final blacklist PERIOD_INTERVAL_MS:J = 0x10300000003L

.field public static final blacklist PRIORITY:J = 0x11100000006L

.field public static final blacklist REQUIRED_NETWORK:J = 0x10b00000012L

.field public static final blacklist REQUIRES_BATTERY_NOT_LOW:J = 0x10800000009L

.field public static final blacklist REQUIRES_CHARGING:J = 0x10800000008L

.field public static final blacklist REQUIRES_DEVICE_IDLE:J = 0x1080000000aL

.field public static final blacklist SERVICE:J = 0x10b00000001L

.field public static final blacklist TOTAL_NETWORK_DOWNLOAD_BYTES:J = 0x10300000019L

.field public static final blacklist TOTAL_NETWORK_UPLOAD_BYTES:J = 0x1030000001aL

.field public static final blacklist TRANSIENT_EXTRAS:J = 0x10b0000000fL

.field public static final blacklist TRIGGER_CONTENT_MAX_DELAY_MS:J = 0x1030000000dL

.field public static final blacklist TRIGGER_CONTENT_UPDATE_DELAY_MS:J = 0x1030000000cL

.field public static final blacklist TRIGGER_CONTENT_URIS:J = 0x20b0000000bL


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/JobStatusDumpProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/JobStatusDumpProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
