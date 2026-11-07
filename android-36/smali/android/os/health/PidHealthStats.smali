.class public final Landroid/os/health/PidHealthStats;
.super Ljava/lang/Object;
.source "PidHealthStats.java"


# static fields
.field public static final greylist-max-o CONSTANTS:Landroid/os/health/HealthKeys$Constants;

.field public static final whitelist MEASUREMENT_WAKE_NESTING_COUNT:I = 0x4e21
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final whitelist MEASUREMENT_WAKE_START_MS:I = 0x4e23
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final whitelist MEASUREMENT_WAKE_SUM_MS:I = 0x4e22
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 79
    new-instance v0, Landroid/os/health/HealthKeys$Constants;

    const-class v1, Landroid/os/health/PidHealthStats;

    invoke-direct {v0, v1}, Landroid/os/health/HealthKeys$Constants;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/os/health/PidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method
