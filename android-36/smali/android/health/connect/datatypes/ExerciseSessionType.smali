.class public final Landroid/health/connect/datatypes/ExerciseSessionType;
.super Ljava/lang/Object;
.source "ExerciseSessionType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/ExerciseSessionType$ExerciseSessionTypes;
    }
.end annotation


# static fields
.field public static final whitelist EXERCISE_SESSION_TYPE_BADMINTON:I = 0x1

.field public static final whitelist EXERCISE_SESSION_TYPE_BASEBALL:I = 0x2

.field public static final whitelist EXERCISE_SESSION_TYPE_BASKETBALL:I = 0x3

.field public static final whitelist EXERCISE_SESSION_TYPE_BIKING:I = 0x4

.field public static final whitelist EXERCISE_SESSION_TYPE_BIKING_STATIONARY:I = 0x5

.field public static final whitelist EXERCISE_SESSION_TYPE_BOOT_CAMP:I = 0x6

.field public static final whitelist EXERCISE_SESSION_TYPE_BOXING:I = 0x7

.field public static final whitelist EXERCISE_SESSION_TYPE_CALISTHENICS:I = 0x8

.field public static final whitelist EXERCISE_SESSION_TYPE_CRICKET:I = 0x9

.field public static final whitelist EXERCISE_SESSION_TYPE_DANCING:I = 0xa

.field public static final whitelist EXERCISE_SESSION_TYPE_ELLIPTICAL:I = 0x3c

.field public static final whitelist EXERCISE_SESSION_TYPE_EXERCISE_CLASS:I = 0xb

.field public static final whitelist EXERCISE_SESSION_TYPE_FENCING:I = 0xc

.field public static final whitelist EXERCISE_SESSION_TYPE_FOOTBALL_AMERICAN:I = 0xd

.field public static final whitelist EXERCISE_SESSION_TYPE_FOOTBALL_AUSTRALIAN:I = 0xe

.field public static final whitelist EXERCISE_SESSION_TYPE_FRISBEE_DISC:I = 0xf

.field public static final whitelist EXERCISE_SESSION_TYPE_GOLF:I = 0x10

.field public static final whitelist EXERCISE_SESSION_TYPE_GUIDED_BREATHING:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXERCISE_SESSION_TYPE_GYMNASTICS:I = 0x12

.field public static final whitelist EXERCISE_SESSION_TYPE_HANDBALL:I = 0x13

.field public static final whitelist EXERCISE_SESSION_TYPE_HIGH_INTENSITY_INTERVAL_TRAINING:I = 0x14

.field public static final whitelist EXERCISE_SESSION_TYPE_HIKING:I = 0x15

.field public static final whitelist EXERCISE_SESSION_TYPE_ICE_HOCKEY:I = 0x16

.field public static final whitelist EXERCISE_SESSION_TYPE_ICE_SKATING:I = 0x17

.field public static final whitelist EXERCISE_SESSION_TYPE_MARTIAL_ARTS:I = 0x18

.field public static final whitelist EXERCISE_SESSION_TYPE_OTHER_WORKOUT:I = 0x3a

.field public static final whitelist EXERCISE_SESSION_TYPE_PADDLING:I = 0x19

.field public static final whitelist EXERCISE_SESSION_TYPE_PARAGLIDING:I = 0x1a

.field public static final whitelist EXERCISE_SESSION_TYPE_PILATES:I = 0x1b

.field public static final whitelist EXERCISE_SESSION_TYPE_RACQUETBALL:I = 0x1c

.field public static final whitelist EXERCISE_SESSION_TYPE_ROCK_CLIMBING:I = 0x1d

.field public static final whitelist EXERCISE_SESSION_TYPE_ROLLER_HOCKEY:I = 0x1e

.field public static final whitelist EXERCISE_SESSION_TYPE_ROWING:I = 0x1f

.field public static final whitelist EXERCISE_SESSION_TYPE_ROWING_MACHINE:I = 0x3d

.field public static final whitelist EXERCISE_SESSION_TYPE_RUGBY:I = 0x20

.field public static final whitelist EXERCISE_SESSION_TYPE_RUNNING:I = 0x21

.field public static final whitelist EXERCISE_SESSION_TYPE_RUNNING_TREADMILL:I = 0x22

.field public static final whitelist EXERCISE_SESSION_TYPE_SAILING:I = 0x23

.field public static final whitelist EXERCISE_SESSION_TYPE_SCUBA_DIVING:I = 0x24

.field public static final whitelist EXERCISE_SESSION_TYPE_SKATING:I = 0x25

.field public static final whitelist EXERCISE_SESSION_TYPE_SKIING:I = 0x26

.field public static final whitelist EXERCISE_SESSION_TYPE_SNOWBOARDING:I = 0x27

.field public static final whitelist EXERCISE_SESSION_TYPE_SNOWSHOEING:I = 0x28

.field public static final whitelist EXERCISE_SESSION_TYPE_SOCCER:I = 0x29

.field public static final whitelist EXERCISE_SESSION_TYPE_SOFTBALL:I = 0x2a

.field public static final whitelist EXERCISE_SESSION_TYPE_SQUASH:I = 0x2b

.field public static final whitelist EXERCISE_SESSION_TYPE_STAIR_CLIMBING:I = 0x2c

.field public static final whitelist EXERCISE_SESSION_TYPE_STAIR_CLIMBING_MACHINE:I = 0x3b

.field public static final whitelist EXERCISE_SESSION_TYPE_STRENGTH_TRAINING:I = 0x2d

.field public static final whitelist EXERCISE_SESSION_TYPE_STRETCHING:I = 0x2e

.field public static final whitelist EXERCISE_SESSION_TYPE_SURFING:I = 0x2f

.field public static final whitelist EXERCISE_SESSION_TYPE_SWIMMING_OPEN_WATER:I = 0x30

.field public static final whitelist EXERCISE_SESSION_TYPE_SWIMMING_POOL:I = 0x31

.field public static final whitelist EXERCISE_SESSION_TYPE_TABLE_TENNIS:I = 0x32

.field public static final whitelist EXERCISE_SESSION_TYPE_TENNIS:I = 0x33

.field public static final whitelist EXERCISE_SESSION_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist EXERCISE_SESSION_TYPE_VOLLEYBALL:I = 0x34

.field public static final whitelist EXERCISE_SESSION_TYPE_WALKING:I = 0x35

.field public static final whitelist EXERCISE_SESSION_TYPE_WATER_POLO:I = 0x36

.field public static final whitelist EXERCISE_SESSION_TYPE_WEIGHTLIFTING:I = 0x37

.field public static final whitelist EXERCISE_SESSION_TYPE_WHEELCHAIR:I = 0x38

.field public static final whitelist EXERCISE_SESSION_TYPE_YOGA:I = 0x39

.field private static final blacklist VALID_TYPES:Ljava/util/Set;
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
    .registers 63

    .line 297
    nop

    .line 299
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 300
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 301
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 302
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 303
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 304
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 305
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 306
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 307
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 308
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 309
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 310
    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 311
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 312
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 313
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 314
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 315
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 316
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 317
    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 318
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 319
    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 320
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 321
    const/16 v0, 0x15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 322
    const/16 v0, 0x16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    .line 323
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 324
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 325
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 326
    const/16 v0, 0x1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 327
    const/16 v0, 0x1b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 328
    const/16 v0, 0x1c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 329
    const/16 v0, 0x1d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    .line 330
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    .line 331
    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    .line 332
    const/16 v0, 0x3d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    .line 333
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 334
    const/16 v0, 0x21

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    .line 335
    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    .line 336
    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    .line 337
    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    .line 338
    const/16 v0, 0x25

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    .line 339
    const/16 v0, 0x26

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    .line 340
    const/16 v0, 0x27

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    .line 341
    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    .line 342
    const/16 v0, 0x29

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    .line 343
    const/16 v0, 0x2a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    .line 344
    const/16 v0, 0x2b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    .line 345
    const/16 v0, 0x2c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    .line 346
    const/16 v0, 0x3b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    .line 347
    const/16 v0, 0x2d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    .line 348
    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    .line 349
    const/16 v0, 0x2f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    .line 350
    const/16 v0, 0x30

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    .line 351
    const/16 v0, 0x31

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    .line 352
    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    .line 353
    const/16 v0, 0x33

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    .line 354
    const/16 v0, 0x34

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    .line 355
    const/16 v0, 0x35

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    .line 356
    const/16 v0, 0x36

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    .line 357
    const/16 v0, 0x37

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    .line 358
    const/16 v0, 0x38

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    .line 359
    const/16 v0, 0x3a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v61

    .line 360
    const/16 v0, 0x39

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    filled-new-array/range {v1 .. v62}, [Ljava/lang/Integer;

    move-result-object v0

    .line 298
    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/ExerciseSessionType;->VALID_TYPES:Ljava/util/Set;

    .line 297
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isKnownSessionType(I)Z
    .registers 3
    .param p0, "sessionType"    # I

    .line 369
    if-ltz p0, :cond_d

    .line 373
    sget-object v0, Landroid/health/connect/datatypes/ExerciseSessionType;->VALID_TYPES:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 370
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exercise session type must be non negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
