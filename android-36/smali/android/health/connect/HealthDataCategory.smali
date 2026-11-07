.class public Landroid/health/connect/HealthDataCategory;
.super Ljava/lang/Object;
.source "HealthDataCategory.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/HealthDataCategory$Type;
    }
.end annotation


# static fields
.field public static final whitelist ACTIVITY:I = 0x1

.field public static final whitelist BODY_MEASUREMENTS:I = 0x2

.field public static final whitelist CYCLE_TRACKING:I = 0x3

.field public static final whitelist NUTRITION:I = 0x4

.field public static final whitelist SLEEP:I = 0x5

.field public static final whitelist UNKNOWN:I = 0x0

.field public static final whitelist VITALS:I = 0x6

.field public static final whitelist WELLNESS:I = 0x7


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
