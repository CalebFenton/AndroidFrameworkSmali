.class public final Lcom/android/server/usage/IntervalStatsObfuscatedProto;
.super Ljava/lang/Object;
.source "IntervalStatsObfuscatedProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/IntervalStatsObfuscatedProto$PackageUsage;,
        Lcom/android/server/usage/IntervalStatsObfuscatedProto$Configuration;,
        Lcom/android/server/usage/IntervalStatsObfuscatedProto$CountAndTime;
    }
.end annotation


# static fields
.field public static final blacklist CONFIGURATIONS:J = 0x20b00000015L

.field public static final blacklist END_TIME_MS:J = 0x10300000001L

.field public static final blacklist EVENT_LOG:J = 0x20b00000016L

.field public static final blacklist INTERACTIVE:J = 0x10b0000000aL

.field public static final blacklist KEYGUARD_HIDDEN:J = 0x10b0000000dL

.field public static final blacklist KEYGUARD_SHOWN:J = 0x10b0000000cL

.field public static final blacklist MAJOR_VERSION:J = 0x10500000002L

.field public static final blacklist MINOR_VERSION:J = 0x10500000003L

.field public static final blacklist NON_INTERACTIVE:J = 0x10b0000000bL

.field public static final blacklist PACKAGES:J = 0x20b00000014L

.field public static final blacklist PACKAGE_USAGE:J = 0x20b00000018L

.field public static final blacklist PENDING_EVENTS:J = 0x20b00000017L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
