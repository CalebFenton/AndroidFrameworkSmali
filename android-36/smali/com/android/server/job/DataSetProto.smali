.class public final Lcom/android/server/job/DataSetProto;
.super Ljava/lang/Object;
.source "DataSetProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/DataSetProto$PackageEntryProto;
    }
.end annotation


# static fields
.field public static final blacklist ELAPSED_TIME_MS:J = 0x10300000002L

.field public static final blacklist MAX_CONCURRENCY:J = 0x10500000005L

.field public static final blacklist MAX_FOREGROUND_CONCURRENCY:J = 0x10500000006L

.field public static final blacklist PACKAGE_ENTRIES:J = 0x20b00000004L

.field public static final blacklist PERIOD_MS:J = 0x10300000003L

.field public static final blacklist START_CLOCK_TIME_MS:J = 0x10300000001L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
