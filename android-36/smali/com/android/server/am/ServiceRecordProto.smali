.class public final Lcom/android/server/am/ServiceRecordProto;
.super Ljava/lang/Object;
.source "ServiceRecordProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ServiceRecordProto$ShortFgsInfo;,
        Lcom/android/server/am/ServiceRecordProto$StartItem;,
        Lcom/android/server/am/ServiceRecordProto$Crash;,
        Lcom/android/server/am/ServiceRecordProto$ExecuteNesting;,
        Lcom/android/server/am/ServiceRecordProto$Start;,
        Lcom/android/server/am/ServiceRecordProto$Foreground;,
        Lcom/android/server/am/ServiceRecordProto$AppInfo;
    }
.end annotation


# static fields
.field public static final blacklist ALLOW_WHILE_IN_USE_PERMISSION_IN_FGS:J = 0x1080000001bL

.field public static final blacklist APP:J = 0x10b00000009L

.field public static final blacklist APPINFO:J = 0x10b00000008L

.field public static final blacklist BINDINGS:J = 0x20b00000019L

.field public static final blacklist CONNECTIONS:J = 0x20b0000001aL

.field public static final blacklist CRASH:J = 0x10b00000016L

.field public static final blacklist CREATED_FROM_FG:J = 0x10800000012L

.field public static final blacklist CREATE_REAL_TIME:J = 0x10b0000000eL

.field public static final blacklist DELAYED:J = 0x1080000000cL

.field public static final blacklist DELIVERED_STARTS:J = 0x20b00000017L

.field public static final blacklist DESTORY_TIME:J = 0x10b00000015L

.field public static final blacklist EXECUTE:J = 0x10b00000014L

.field public static final blacklist FOREGROUND:J = 0x10b0000000dL

.field public static final blacklist INTENT:J = 0x10b00000004L

.field public static final blacklist ISOLATED_PROC:J = 0x10b0000000aL

.field public static final blacklist IS_RUNNING:J = 0x10800000002L

.field public static final blacklist LAST_ACTIVITY_TIME:J = 0x10b00000010L

.field public static final blacklist PACKAGE_NAME:J = 0x10900000005L

.field public static final blacklist PENDING_STARTS:J = 0x20b00000018L

.field public static final blacklist PERMISSION:J = 0x10900000007L

.field public static final blacklist PID:J = 0x10500000003L

.field public static final blacklist PROCESS_NAME:J = 0x10900000006L

.field public static final blacklist RESTART_TIME:J = 0x10b00000011L

.field public static final blacklist SHORT_FGS_INFO:J = 0x10b0000001cL

.field public static final blacklist SHORT_NAME:J = 0x10900000001L

.field public static final blacklist START:J = 0x10b00000013L

.field public static final blacklist STARTING_BG_TIMEOUT:J = 0x10b0000000fL

.field public static final blacklist WHITELIST_MANAGER:J = 0x1080000000bL


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
