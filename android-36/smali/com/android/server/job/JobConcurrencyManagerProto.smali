.class public final Lcom/android/server/job/JobConcurrencyManagerProto;
.super Ljava/lang/Object;
.source "JobConcurrencyManagerProto.java"


# static fields
.field public static final blacklist CURRENT_INTERACTIVE_STATE:J = 0x10800000001L

.field public static final blacklist EFFECTIVE_INTERACTIVE_STATE:J = 0x10800000002L

.field public static final blacklist JOB_COUNT_TRACKER:J = 0x10b00000005L

.field public static final blacklist MEMORY_TRIM_LEVEL:J = 0x10500000006L

.field public static final blacklist STATS:J = 0x10b00000007L

.field public static final blacklist TIME_SINCE_LAST_SCREEN_OFF_MS:J = 0x10300000004L

.field public static final blacklist TIME_SINCE_LAST_SCREEN_ON_MS:J = 0x10300000003L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
