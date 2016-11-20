.class public final Landroid/os/health/PidHealthStats;
.super Ljava/lang/Object;
.source "PidHealthStats.java"


# static fields
.field public static final CONSTANTS:Landroid/os/health/HealthKeys$Constants;

.field public static final MEASUREMENT_WAKE_NESTING_COUNT:I = 0x4e21
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_WAKE_START_MS:I = 0x4e23
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field

.field public static final MEASUREMENT_WAKE_SUM_MS:I = 0x4e22
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 79
    new-instance v0, Landroid/os/health/HealthKeys$Constants;

    #@2
    const-class v1, Landroid/os/health/PidHealthStats;

    #@4
    invoke-direct {v0, v1}, Landroid/os/health/HealthKeys$Constants;-><init>(Ljava/lang/Class;)V

    #@7
    sput-object v0, Landroid/os/health/PidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    #@9
    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
