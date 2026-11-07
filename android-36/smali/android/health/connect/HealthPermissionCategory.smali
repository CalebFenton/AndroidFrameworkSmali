.class public Landroid/health/connect/HealthPermissionCategory;
.super Ljava/lang/Object;
.source "HealthPermissionCategory.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/HealthPermissionCategory$Type;
    }
.end annotation


# static fields
.field public static final whitelist ACTIVE_CALORIES_BURNED:I = 0x1

.field public static final whitelist ACTIVITY_INTENSITY:I = 0x2a

.field public static final whitelist BASAL_BODY_TEMPERATURE:I = 0x21

.field public static final whitelist BASAL_METABOLIC_RATE:I = 0x9

.field public static final whitelist BLOOD_GLUCOSE:I = 0x1a

.field public static final whitelist BLOOD_PRESSURE:I = 0x1b

.field public static final whitelist BODY_FAT:I = 0xa

.field public static final whitelist BODY_TEMPERATURE:I = 0x1c

.field public static final whitelist BODY_WATER_MASS:I = 0xb

.field public static final whitelist BONE_MASS:I = 0xc

.field public static final whitelist CERVICAL_MUCUS:I = 0x12

.field public static final whitelist DISTANCE:I = 0x2

.field public static final whitelist ELEVATION_GAINED:I = 0x3

.field public static final whitelist EXERCISE:I = 0x4

.field public static final whitelist FLOORS_CLIMBED:I = 0x5

.field public static final whitelist HEART_RATE:I = 0x1d

.field public static final whitelist HEART_RATE_VARIABILITY:I = 0x1e

.field public static final whitelist HEIGHT:I = 0xd

.field public static final whitelist HYDRATION:I = 0x17

.field public static final whitelist INTERMENSTRUAL_BLEEDING:I = 0x26

.field public static final whitelist LEAN_BODY_MASS:I = 0xf

.field public static final whitelist MENSTRUATION:I = 0x14

.field public static final whitelist MINDFULNESS:I = 0x29

.field public static final whitelist NUTRITION:I = 0x18

.field public static final whitelist OVULATION_TEST:I = 0x15

.field public static final whitelist OXYGEN_SATURATION:I = 0x1f

.field public static final whitelist PLANNED_EXERCISE:I = 0x28

.field public static final whitelist POWER:I = 0x24

.field public static final whitelist RESPIRATORY_RATE:I = 0x20

.field public static final whitelist RESTING_HEART_RATE:I = 0x22

.field public static final whitelist SEXUAL_ACTIVITY:I = 0x16

.field public static final whitelist SKIN_TEMPERATURE:I = 0x27

.field public static final whitelist SLEEP:I = 0x19

.field public static final whitelist SPEED:I = 0x25

.field public static final whitelist STEPS:I = 0x6

.field public static final whitelist TOTAL_CALORIES_BURNED:I = 0x23

.field public static final whitelist UNKNOWN:I = 0x0

.field public static final whitelist VO2_MAX:I = 0x7

.field public static final whitelist WEIGHT:I = 0x11

.field public static final whitelist WHEELCHAIR_PUSHES:I = 0x8


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
