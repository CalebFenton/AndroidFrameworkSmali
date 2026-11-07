.class public final Landroid/health/connect/ratelimiter/RateLimiter$QuotaCategory;
.super Ljava/lang/Object;
.source "RateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/ratelimiter/RateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuotaCategory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/ratelimiter/RateLimiter$QuotaCategory$Type;
    }
.end annotation


# static fields
.field public static final blacklist QUOTA_CATEGORY_READ:I = 0x2

.field public static final blacklist QUOTA_CATEGORY_UNDEFINED:I = 0x0

.field public static final blacklist QUOTA_CATEGORY_UNMETERED:I = 0x1

.field public static final blacklist QUOTA_CATEGORY_WRITE:I = 0x3


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
