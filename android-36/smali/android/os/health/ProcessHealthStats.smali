.class public final Landroid/os/health/ProcessHealthStats;
.super Ljava/lang/Object;
.source "ProcessHealthStats.java"


# static fields
.field public static final greylist-max-o CONSTANTS:Landroid/os/health/HealthKeys$Constants;

.field public static final whitelist MEASUREMENT_ANR_COUNT:I = 0x7535
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final whitelist MEASUREMENT_CRASHES_COUNT:I = 0x7534
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final whitelist MEASUREMENT_FOREGROUND_MS:I = 0x7536
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final whitelist MEASUREMENT_STARTS_COUNT:I = 0x7533
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final whitelist MEASUREMENT_SYSTEM_TIME_MS:I = 0x7532
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final whitelist MEASUREMENT_USER_TIME_MS:I = 0x7531
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 71
    new-instance v0, Landroid/os/health/HealthKeys$Constants;

    const-class v1, Landroid/os/health/ProcessHealthStats;

    invoke-direct {v0, v1}, Landroid/os/health/HealthKeys$Constants;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/os/health/ProcessHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method
