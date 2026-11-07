.class public final Landroid/health/connect/ratelimiter/RateLimiter$QuotaBucket;
.super Ljava/lang/Object;
.source "RateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/ratelimiter/RateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuotaBucket"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/ratelimiter/RateLimiter$QuotaBucket$Type;
    }
.end annotation


# static fields
.field public static final blacklist QUOTA_BUCKET_DATA_PUSH_LIMIT_ACROSS_APPS_15M:I = 0xa

.field public static final blacklist QUOTA_BUCKET_DATA_PUSH_LIMIT_PER_APP_15M:I = 0x9

.field public static final blacklist QUOTA_BUCKET_READS_PER_15M_BACKGROUND:I = 0x3

.field public static final blacklist QUOTA_BUCKET_READS_PER_15M_FOREGROUND:I = 0x1

.field public static final blacklist QUOTA_BUCKET_READS_PER_24H_BACKGROUND:I = 0x4

.field public static final blacklist QUOTA_BUCKET_READS_PER_24H_FOREGROUND:I = 0x2

.field public static final blacklist QUOTA_BUCKET_UNDEFINED:I = 0x0

.field public static final blacklist QUOTA_BUCKET_WRITES_PER_15M_BACKGROUND:I = 0x7

.field public static final blacklist QUOTA_BUCKET_WRITES_PER_15M_FOREGROUND:I = 0x5

.field public static final blacklist QUOTA_BUCKET_WRITES_PER_24H_BACKGROUND:I = 0x8

.field public static final blacklist QUOTA_BUCKET_WRITES_PER_24H_FOREGROUND:I = 0x6


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
