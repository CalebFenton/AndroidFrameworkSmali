.class public final Landroid/os/health/PackageHealthStats;
.super Ljava/lang/Object;
.source "PackageHealthStats.java"


# static fields
.field public static final greylist-max-o CONSTANTS:Landroid/os/health/HealthKeys$Constants;

.field public static final whitelist MEASUREMENTS_WAKEUP_ALARMS_COUNT:I = 0x9c42
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x4
    .end annotation
.end field

.field public static final whitelist STATS_SERVICES:I = 0x9c41
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x2
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Landroid/os/health/HealthKeys$Constants;

    const-class v1, Landroid/os/health/PackageHealthStats;

    invoke-direct {v0, v1}, Landroid/os/health/HealthKeys$Constants;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/os/health/PackageHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method
