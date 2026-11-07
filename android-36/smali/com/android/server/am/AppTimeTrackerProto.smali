.class public final Lcom/android/server/am/AppTimeTrackerProto;
.super Ljava/lang/Object;
.source "AppTimeTrackerProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppTimeTrackerProto$PackageTime;
    }
.end annotation


# static fields
.field public static final blacklist PACKAGE_TIMES:J = 0x20b00000003L

.field public static final blacklist RECEIVER:J = 0x10900000001L

.field public static final blacklist STARTED_PACKAGE:J = 0x10900000005L

.field public static final blacklist STARTED_TIME:J = 0x10b00000004L

.field public static final blacklist TOTAL_DURATION_MS:J = 0x10300000002L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
