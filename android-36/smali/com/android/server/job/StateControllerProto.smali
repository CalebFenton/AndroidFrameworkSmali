.class public final Lcom/android/server/job/StateControllerProto;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/StateControllerProto$TimeController;,
        Lcom/android/server/job/StateControllerProto$StorageController;,
        Lcom/android/server/job/StateControllerProto$QuotaController;,
        Lcom/android/server/job/StateControllerProto$IdleController;,
        Lcom/android/server/job/StateControllerProto$DeviceIdleJobsController;,
        Lcom/android/server/job/StateControllerProto$ContentObserverController;,
        Lcom/android/server/job/StateControllerProto$ConnectivityController;,
        Lcom/android/server/job/StateControllerProto$BatteryController;,
        Lcom/android/server/job/StateControllerProto$BackgroundJobsController;
    }
.end annotation


# static fields
.field public static final blacklist BACKGROUND:J = 0x10b00000001L

.field public static final blacklist BATTERY:J = 0x10b00000002L

.field public static final blacklist CONNECTIVITY:J = 0x10b00000003L

.field public static final blacklist CONTENT_OBSERVER:J = 0x10b00000004L

.field public static final blacklist DEVICE_IDLE:J = 0x10b00000005L

.field public static final blacklist IDLE:J = 0x10b00000006L

.field public static final blacklist QUOTA:J = 0x10b00000009L

.field public static final blacklist STORAGE:J = 0x10b00000007L

.field public static final blacklist TIME:J = 0x10b00000008L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
