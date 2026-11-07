.class public final Landroid/health/connect/datatypes/BodyTemperatureMeasurementLocation;
.super Ljava/lang/Object;
.source "BodyTemperatureMeasurementLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/BodyTemperatureMeasurementLocation$BodyTemperatureMeasurementLocations;
    }
.end annotation


# static fields
.field public static final whitelist MEASUREMENT_LOCATION_ARMPIT:I = 0x1

.field public static final whitelist MEASUREMENT_LOCATION_EAR:I = 0x8

.field public static final whitelist MEASUREMENT_LOCATION_FINGER:I = 0x2

.field public static final whitelist MEASUREMENT_LOCATION_FOREHEAD:I = 0x3

.field public static final whitelist MEASUREMENT_LOCATION_MOUTH:I = 0x4

.field public static final whitelist MEASUREMENT_LOCATION_RECTUM:I = 0x5

.field public static final whitelist MEASUREMENT_LOCATION_TEMPORAL_ARTERY:I = 0x6

.field public static final whitelist MEASUREMENT_LOCATION_TOE:I = 0x7

.field public static final whitelist MEASUREMENT_LOCATION_UNKNOWN:I = 0x0

.field public static final whitelist MEASUREMENT_LOCATION_VAGINA:I = 0xa

.field public static final whitelist MEASUREMENT_LOCATION_WRIST:I = 0x9

.field public static final blacklist VALID_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 56
    nop

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 59
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 60
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 61
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 62
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 63
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 64
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 65
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 66
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 67
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 68
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Integer;

    move-result-object v0

    .line 57
    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/BodyTemperatureMeasurementLocation;->VALID_TYPES:Ljava/util/Set;

    .line 56
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
