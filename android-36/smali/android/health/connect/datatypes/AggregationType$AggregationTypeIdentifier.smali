.class public interface abstract annotation Landroid/health/connect/datatypes/AggregationType$AggregationTypeIdentifier;
.super Ljava/lang/Object;
.source "AggregationType.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/AggregationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AggregationTypeIdentifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/AggregationType$AggregationTypeIdentifier$Id;
    }
.end annotation


# static fields
.field public static final blacklist ACTIVE_CALORIES_BURNED_RECORD_ACTIVE_CALORIES_TOTAL:I = 0x3

.field public static final blacklist ACTIVITY_INTENSITY_DURATION_TOTAL:I = 0x5a

.field public static final blacklist ACTIVITY_INTENSITY_MINUTES_TOTAL:I = 0x5b

.field public static final blacklist ACTIVITY_INTENSITY_MODERATE_DURATION_TOTAL:I = 0x58

.field public static final blacklist ACTIVITY_INTENSITY_VIGOROUS_DURATION_TOTAL:I = 0x59

.field public static final blacklist BLOOD_PRESSURE_RECORD_DIASTOLIC_AVG:I = 0x44

.field public static final blacklist BLOOD_PRESSURE_RECORD_DIASTOLIC_MAX:I = 0x45

.field public static final blacklist BLOOD_PRESSURE_RECORD_DIASTOLIC_MIN:I = 0x46

.field public static final blacklist BLOOD_PRESSURE_RECORD_SYSTOLIC_AVG:I = 0x47

.field public static final blacklist BLOOD_PRESSURE_RECORD_SYSTOLIC_MAX:I = 0x48

.field public static final blacklist BLOOD_PRESSURE_RECORD_SYSTOLIC_MIN:I = 0x49

.field public static final blacklist BMR_RECORD_BASAL_CALORIES_TOTAL:I = 0x4

.field public static final blacklist CYCLING_PEDALING_CADENCE_RECORD_RPM_AVG:I = 0x4b

.field public static final blacklist CYCLING_PEDALING_CADENCE_RECORD_RPM_MAX:I = 0x4d

.field public static final blacklist CYCLING_PEDALING_CADENCE_RECORD_RPM_MIN:I = 0x4c

.field public static final blacklist DISTANCE_RECORD_DISTANCE_TOTAL:I = 0x5

.field public static final blacklist ELEVATION_RECORD_ELEVATION_GAINED_TOTAL:I = 0x6

.field public static final blacklist EXERCISE_SESSION_DURATION_TOTAL:I = 0x43

.field public static final blacklist FLOORS_CLIMBED_RECORD_FLOORS_CLIMBED_TOTAL:I = 0xc

.field public static final blacklist HEART_RATE_RECORD_BPM_AVG:I = 0x7

.field public static final blacklist HEART_RATE_RECORD_BPM_MAX:I = 0x0

.field public static final blacklist HEART_RATE_RECORD_BPM_MIN:I = 0x1

.field public static final blacklist HEART_RATE_RECORD_MEASUREMENTS_COUNT:I = 0x40

.field public static final blacklist HEIGHT_RECORD_HEIGHT_AVG:I = 0x36

.field public static final blacklist HEIGHT_RECORD_HEIGHT_MAX:I = 0x37

.field public static final blacklist HEIGHT_RECORD_HEIGHT_MIN:I = 0x38

.field public static final blacklist HYDRATION_RECORD_VOLUME_TOTAL:I = 0xb

.field public static final blacklist IDENTIFIER_VALID_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MINDFULNESS_SESSION_DURATION_TOTAL:I = 0x57

.field public static final blacklist NUTRITION_RECORD_BIOTIN_TOTAL:I = 0xd

.field public static final blacklist NUTRITION_RECORD_CAFFEINE_TOTAL:I = 0xe

.field public static final blacklist NUTRITION_RECORD_CALCIUM_TOTAL:I = 0xf

.field public static final blacklist NUTRITION_RECORD_CHLORIDE_TOTAL:I = 0x10

.field public static final blacklist NUTRITION_RECORD_CHOLESTEROL_TOTAL:I = 0x11

.field public static final blacklist NUTRITION_RECORD_CHROMIUM_TOTAL:I = 0x12

.field public static final blacklist NUTRITION_RECORD_COPPER_TOTAL:I = 0x13

.field public static final blacklist NUTRITION_RECORD_DIETARY_FIBER_TOTAL:I = 0x14

.field public static final blacklist NUTRITION_RECORD_ENERGY_FROM_FAT_TOTAL:I = 0x16

.field public static final blacklist NUTRITION_RECORD_ENERGY_TOTAL:I = 0x15

.field public static final blacklist NUTRITION_RECORD_FOLATE_TOTAL:I = 0x17

.field public static final blacklist NUTRITION_RECORD_FOLIC_ACID_TOTAL:I = 0x18

.field public static final blacklist NUTRITION_RECORD_IODINE_TOTAL:I = 0x19

.field public static final blacklist NUTRITION_RECORD_IRON_TOTAL:I = 0x1a

.field public static final blacklist NUTRITION_RECORD_MAGNESIUM_TOTAL:I = 0x1b

.field public static final blacklist NUTRITION_RECORD_MANGANESE_TOTAL:I = 0x1c

.field public static final blacklist NUTRITION_RECORD_MOLYBDENUM_TOTAL:I = 0x1d

.field public static final blacklist NUTRITION_RECORD_MONOUNSATURATED_FAT_TOTAL:I = 0x1e

.field public static final blacklist NUTRITION_RECORD_NIACIN_TOTAL:I = 0x1f

.field public static final blacklist NUTRITION_RECORD_PANTOTHENIC_ACID_TOTAL:I = 0x20

.field public static final blacklist NUTRITION_RECORD_PHOSPHORUS_TOTAL:I = 0x21

.field public static final blacklist NUTRITION_RECORD_POLYUNSATURATED_FAT_TOTAL:I = 0x22

.field public static final blacklist NUTRITION_RECORD_POTASSIUM_TOTAL:I = 0x23

.field public static final blacklist NUTRITION_RECORD_PROTEIN_TOTAL:I = 0x24

.field public static final blacklist NUTRITION_RECORD_RIBOFLAVIN_TOTAL:I = 0x25

.field public static final blacklist NUTRITION_RECORD_SATURATED_FAT_TOTAL:I = 0x26

.field public static final blacklist NUTRITION_RECORD_SELENIUM_TOTAL:I = 0x27

.field public static final blacklist NUTRITION_RECORD_SODIUM_TOTAL:I = 0x28

.field public static final blacklist NUTRITION_RECORD_SUGAR_TOTAL:I = 0x29

.field public static final blacklist NUTRITION_RECORD_THIAMIN_TOTAL:I = 0x2a

.field public static final blacklist NUTRITION_RECORD_TOTAL_CARBOHYDRATE_TOTAL:I = 0x2b

.field public static final blacklist NUTRITION_RECORD_TOTAL_FAT_TOTAL:I = 0x2c

.field public static final blacklist NUTRITION_RECORD_TRANS_FAT_TOTAL:I = 0x4a

.field public static final blacklist NUTRITION_RECORD_UNSATURATED_FAT_TOTAL:I = 0x2d

.field public static final blacklist NUTRITION_RECORD_VITAMIN_A_TOTAL:I = 0x2e

.field public static final blacklist NUTRITION_RECORD_VITAMIN_B12_TOTAL:I = 0x2f

.field public static final blacklist NUTRITION_RECORD_VITAMIN_B6_TOTAL:I = 0x30

.field public static final blacklist NUTRITION_RECORD_VITAMIN_C_TOTAL:I = 0x31

.field public static final blacklist NUTRITION_RECORD_VITAMIN_D_TOTAL:I = 0x32

.field public static final blacklist NUTRITION_RECORD_VITAMIN_E_TOTAL:I = 0x33

.field public static final blacklist NUTRITION_RECORD_VITAMIN_K_TOTAL:I = 0x34

.field public static final blacklist NUTRITION_RECORD_ZINC_TOTAL:I = 0x35

.field public static final blacklist POWER_RECORD_POWER_AVG:I = 0xa

.field public static final blacklist POWER_RECORD_POWER_MAX:I = 0x9

.field public static final blacklist POWER_RECORD_POWER_MIN:I = 0x8

.field public static final blacklist RESTING_HEART_RATE_RECORD_BPM_AVG:I = 0x41

.field public static final blacklist RESTING_HEART_RATE_RECORD_BPM_MAX:I = 0x39

.field public static final blacklist RESTING_HEART_RATE_RECORD_BPM_MIN:I = 0x3a

.field public static final blacklist SKIN_TEMPERATURE_RECORD_DELTA_AVG:I = 0x54

.field public static final blacklist SKIN_TEMPERATURE_RECORD_DELTA_MAX:I = 0x56

.field public static final blacklist SKIN_TEMPERATURE_RECORD_DELTA_MIN:I = 0x55

.field public static final blacklist SLEEP_SESSION_DURATION_TOTAL:I = 0x42

.field public static final blacklist SPEED_RECORD_SPEED_AVG:I = 0x4e

.field public static final blacklist SPEED_RECORD_SPEED_MAX:I = 0x50

.field public static final blacklist SPEED_RECORD_SPEED_MIN:I = 0x4f

.field public static final blacklist STEPS_CADENCE_RECORD_RATE_AVG:I = 0x51

.field public static final blacklist STEPS_CADENCE_RECORD_RATE_MAX:I = 0x53

.field public static final blacklist STEPS_CADENCE_RECORD_RATE_MIN:I = 0x52

.field public static final blacklist STEPS_RECORD_COUNT_TOTAL:I = 0x2

.field public static final blacklist TOTAL_CALORIES_BURNED_RECORD_ENERGY_TOTAL:I = 0x3b

.field public static final blacklist WEIGHT_RECORD_WEIGHT_AVG:I = 0x3c

.field public static final blacklist WEIGHT_RECORD_WEIGHT_MAX:I = 0x3d

.field public static final blacklist WEIGHT_RECORD_WEIGHT_MIN:I = 0x3e

.field public static final blacklist WHEEL_CHAIR_PUSHES_RECORD_COUNT_TOTAL:I = 0x3f


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 93

    .line 208
    nop

    .line 210
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 211
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 212
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 213
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 214
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 215
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 216
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 217
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 218
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 219
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 220
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 221
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 222
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 223
    const/16 v0, 0x4b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 224
    const/16 v0, 0x4c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 225
    const/16 v0, 0x4d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 226
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 227
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 228
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 229
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 230
    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 231
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 232
    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 233
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    .line 234
    const/16 v0, 0x15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 235
    const/16 v0, 0x16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 236
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 237
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 238
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 239
    const/16 v0, 0x1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 240
    const/16 v0, 0x1b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    .line 241
    const/16 v0, 0x1c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    .line 242
    const/16 v0, 0x1d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    .line 243
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    .line 244
    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 245
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    .line 246
    const/16 v0, 0x21

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    .line 247
    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    .line 248
    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    .line 249
    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    .line 250
    const/16 v0, 0x25

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    .line 251
    const/16 v0, 0x26

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    .line 252
    const/16 v0, 0x27

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    .line 253
    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    .line 254
    const/16 v0, 0x29

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    .line 255
    const/16 v0, 0x2a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    .line 256
    const/16 v0, 0x2b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    .line 257
    const/16 v0, 0x2c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    .line 258
    const/16 v0, 0x4a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    .line 259
    const/16 v0, 0x2d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    .line 260
    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    .line 261
    const/16 v0, 0x2f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    .line 262
    const/16 v0, 0x30

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    .line 263
    const/16 v0, 0x31

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    .line 264
    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    .line 265
    const/16 v0, 0x33

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    .line 266
    const/16 v0, 0x34

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    .line 267
    const/16 v0, 0x35

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    .line 268
    const/16 v0, 0x36

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    .line 269
    const/16 v0, 0x37

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    .line 270
    const/16 v0, 0x38

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v61

    .line 271
    const/16 v0, 0x39

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    .line 272
    const/16 v0, 0x3a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    .line 273
    const/16 v0, 0x3b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    .line 274
    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v65

    .line 275
    const/16 v0, 0x3d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v66

    .line 276
    const/16 v0, 0x3e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v67

    .line 277
    const/16 v0, 0x3f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    .line 278
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    .line 279
    const/16 v0, 0x41

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    .line 280
    const/16 v0, 0x42

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v71

    .line 281
    const/16 v0, 0x43

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    .line 282
    const/16 v0, 0x44

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    .line 283
    const/16 v0, 0x45

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v74

    .line 284
    const/16 v0, 0x46

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v75

    .line 285
    const/16 v0, 0x47

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v76

    .line 286
    const/16 v0, 0x48

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v77

    .line 287
    const/16 v0, 0x49

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    .line 288
    const/16 v0, 0x4e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v79

    .line 289
    const/16 v0, 0x4f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v80

    .line 290
    const/16 v0, 0x50

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v81

    .line 291
    const/16 v0, 0x51

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v82

    .line 292
    const/16 v0, 0x52

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v83

    .line 293
    const/16 v0, 0x53

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v84

    .line 294
    const/16 v0, 0x54

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v85

    .line 295
    const/16 v0, 0x55

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v86

    .line 296
    const/16 v0, 0x56

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v87

    .line 297
    const/16 v0, 0x57

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v88

    .line 298
    const/16 v0, 0x58

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v89

    .line 299
    const/16 v0, 0x59

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v90

    .line 300
    const/16 v0, 0x5a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v91

    .line 301
    const/16 v0, 0x5b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v92

    filled-new-array/range {v1 .. v92}, [Ljava/lang/Integer;

    move-result-object v0

    .line 209
    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/AggregationType$AggregationTypeIdentifier;->IDENTIFIER_VALID_TYPES:Ljava/util/Set;

    .line 208
    return-void
.end method
