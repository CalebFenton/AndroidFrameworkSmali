.class public final Landroid/health/connect/datatypes/RecordTypeIdentifier;
.super Ljava/lang/Object;
.source "RecordTypeIdentifier.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/RecordTypeIdentifier$RecordType;
    }
.end annotation


# static fields
.field public static final whitelist RECORD_TYPE_ACTIVE_CALORIES_BURNED:I = 0x2

.field public static final whitelist RECORD_TYPE_ACTIVITY_INTENSITY:I = 0x2a

.field public static final whitelist RECORD_TYPE_BASAL_BODY_TEMPERATURE:I = 0x14

.field public static final whitelist RECORD_TYPE_BASAL_METABOLIC_RATE:I = 0x10

.field public static final whitelist RECORD_TYPE_BLOOD_GLUCOSE:I = 0x19

.field public static final whitelist RECORD_TYPE_BLOOD_PRESSURE:I = 0x17

.field public static final whitelist RECORD_TYPE_BODY_FAT:I = 0x11

.field public static final whitelist RECORD_TYPE_BODY_TEMPERATURE:I = 0x1d

.field public static final whitelist RECORD_TYPE_BODY_WATER_MASS:I = 0x22

.field public static final whitelist RECORD_TYPE_BONE_MASS:I = 0x20

.field public static final whitelist RECORD_TYPE_CERVICAL_MUCUS:I = 0x13

.field public static final whitelist RECORD_TYPE_CYCLING_PEDALING_CADENCE:I = 0xc

.field public static final whitelist RECORD_TYPE_DISTANCE:I = 0x7

.field public static final whitelist RECORD_TYPE_ELEVATION_GAINED:I = 0x4

.field public static final whitelist RECORD_TYPE_EXERCISE_SESSION:I = 0x25

.field public static final whitelist RECORD_TYPE_FLOORS_CLIMBED:I = 0x5

.field public static final whitelist RECORD_TYPE_HEART_RATE:I = 0xb

.field public static final whitelist RECORD_TYPE_HEART_RATE_VARIABILITY_RMSSD:I = 0x23

.field public static final whitelist RECORD_TYPE_HEIGHT:I = 0x18

.field public static final whitelist RECORD_TYPE_HYDRATION:I = 0x3

.field public static final whitelist RECORD_TYPE_INTERMENSTRUAL_BLEEDING:I = 0x24

.field public static final whitelist RECORD_TYPE_LEAN_BODY_MASS:I = 0x1b

.field public static final whitelist RECORD_TYPE_MENSTRUATION_FLOW:I = 0x15

.field public static final whitelist RECORD_TYPE_MENSTRUATION_PERIOD:I = 0xa

.field public static final whitelist RECORD_TYPE_MINDFULNESS_SESSION:I = 0x29

.field public static final whitelist RECORD_TYPE_NUTRITION:I = 0x8

.field public static final whitelist RECORD_TYPE_OVULATION_TEST:I = 0x1e

.field public static final whitelist RECORD_TYPE_OXYGEN_SATURATION:I = 0x16

.field public static final whitelist RECORD_TYPE_PLANNED_EXERCISE_SESSION:I = 0x28

.field public static final whitelist RECORD_TYPE_POWER:I = 0xd

.field public static final whitelist RECORD_TYPE_RESPIRATORY_RATE:I = 0x1f

.field public static final whitelist RECORD_TYPE_RESTING_HEART_RATE:I = 0x21

.field public static final whitelist RECORD_TYPE_SEXUAL_ACTIVITY:I = 0x1c

.field public static final whitelist RECORD_TYPE_SKIN_TEMPERATURE:I = 0x27

.field public static final whitelist RECORD_TYPE_SLEEP_SESSION:I = 0x26

.field public static final whitelist RECORD_TYPE_SPEED:I = 0xe

.field public static final whitelist RECORD_TYPE_STEPS:I = 0x1

.field public static final whitelist RECORD_TYPE_STEPS_CADENCE:I = 0xf

.field public static final whitelist RECORD_TYPE_TOTAL_CALORIES_BURNED:I = 0x9

.field public static final whitelist RECORD_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist RECORD_TYPE_VO2_MAX:I = 0x12

.field public static final whitelist RECORD_TYPE_WEIGHT:I = 0x1a

.field public static final whitelist RECORD_TYPE_WHEELCHAIR_PUSHES:I = 0x6

.field public static final blacklist VALID_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 43

    .line 392
    nop

    .line 394
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 395
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 396
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 397
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 398
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 399
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 400
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 401
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 402
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 403
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 404
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 405
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 406
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 407
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 408
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 409
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 410
    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 411
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 412
    const/16 v0, 0x21

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 413
    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 414
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 415
    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 416
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 417
    const/16 v0, 0x15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    .line 418
    const/16 v0, 0x16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 419
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 420
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 421
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 422
    const/16 v0, 0x1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 423
    const/16 v0, 0x1b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 424
    const/16 v0, 0x1c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    .line 425
    const/16 v0, 0x1d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    .line 426
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    .line 427
    const/16 v0, 0x25

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    .line 428
    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 429
    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    .line 430
    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    .line 431
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    .line 432
    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    .line 433
    const/16 v0, 0x26

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    .line 434
    const/16 v0, 0x27

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    .line 435
    const/16 v0, 0x29

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    filled-new-array/range {v1 .. v42}, [Ljava/lang/Integer;

    move-result-object v0

    .line 393
    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/RecordTypeIdentifier;->VALID_TYPES:Ljava/util/Set;

    .line 392
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
