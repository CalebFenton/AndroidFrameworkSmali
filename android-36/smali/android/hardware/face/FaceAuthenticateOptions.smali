.class public Landroid/hardware/face/FaceAuthenticateOptions;
.super Ljava/lang/Object;
.source "FaceAuthenticateOptions.java"

# interfaces
.implements Landroid/hardware/biometrics/AuthenticateOptions;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/FaceAuthenticateOptions$Builder;,
        Landroid/hardware/face/FaceAuthenticateOptions$AuthenticateReason;
    }
.end annotation


# static fields
.field public static final blacklist AUTHENTICATE_REASON_ALTERNATE_BIOMETRIC_BOUNCER_SHOWN:I = 0x4

.field public static final blacklist AUTHENTICATE_REASON_ASSISTANT_VISIBLE:I = 0x3

.field public static final blacklist AUTHENTICATE_REASON_NOTIFICATION_PANEL_CLICKED:I = 0x5

.field public static final blacklist AUTHENTICATE_REASON_OCCLUDING_APP_REQUESTED:I = 0x6

.field public static final blacklist AUTHENTICATE_REASON_PICK_UP_GESTURE_TRIGGERED:I = 0x7

.field public static final blacklist AUTHENTICATE_REASON_PRIMARY_BOUNCER_SHOWN:I = 0x2

.field public static final blacklist AUTHENTICATE_REASON_QS_EXPANDED:I = 0x8

.field public static final blacklist AUTHENTICATE_REASON_STARTED_WAKING_UP:I = 0x1

.field public static final blacklist AUTHENTICATE_REASON_SWIPE_UP_ON_BOUNCER:I = 0x9

.field public static final blacklist AUTHENTICATE_REASON_UDFPS_POINTER_DOWN:I = 0xa

.field public static final blacklist AUTHENTICATE_REASON_UNKNOWN:I

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/face/FaceAuthenticateOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mAuthenticateReason:I

.field private final blacklist mDisplayState:I

.field private blacklist mIsMandatoryBiometrics:Z

.field private blacklist mOpPackageName:Ljava/lang/String;

.field private blacklist mSensorId:I

.field private final blacklist mUserId:I

.field private final blacklist mWakeReason:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultAttributionTag()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->defaultAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultAuthenticateReason()I
    .registers 1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->defaultAuthenticateReason()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultDisplayState()I
    .registers 1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->defaultDisplayState()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultOpPackageName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->defaultOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultSensorId()I
    .registers 1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->defaultSensorId()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultUserId()I
    .registers 1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->defaultUserId()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultWakeReason()I
    .registers 1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->defaultWakeReason()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 483
    new-instance v0, Landroid/hardware/face/FaceAuthenticateOptions$1;

    invoke-direct {v0}, Landroid/hardware/face/FaceAuthenticateOptions$1;-><init>()V

    sput-object v0, Landroid/hardware/face/FaceAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(IIIIILjava/lang/String;Ljava/lang/String;Z)V
    .registers 25
    .param p1, "userId"    # I
    .param p2, "sensorId"    # I
    .param p3, "displayState"    # I
    .param p4, "authenticateReason"    # I
    .param p5, "wakeReason"    # I
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "attributionTag"    # Ljava/lang/String;
    .param p8, "isMandatoryBiometrics"    # Z

    .line 194
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 195
    move/from16 v1, p1

    iput v1, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mUserId:I

    .line 196
    move/from16 v2, p2

    iput v2, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    .line 197
    move/from16 v3, p3

    iput v3, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    .line 198
    const-class v4, Landroid/hardware/biometrics/AuthenticateOptions$DisplayState;

    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 200
    move/from16 v4, p4

    iput v4, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    .line 202
    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    if-eqz v5, :cond_ec

    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v7, 0x1

    if-eq v5, v7, :cond_ec

    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v8, 0x2

    if-eq v5, v8, :cond_ec

    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v9, 0x3

    if-eq v5, v9, :cond_ec

    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v10, 0x4

    if-eq v5, v10, :cond_ec

    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v11, 0x5

    if-eq v5, v11, :cond_ec

    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v12, 0x6

    if-eq v5, v12, :cond_ec

    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v13, 0x7

    if-eq v5, v13, :cond_ec

    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/16 v14, 0x8

    if-eq v5, v14, :cond_ec

    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/16 v15, 0x9

    if-eq v5, v15, :cond_ec

    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_58

    goto/16 :goto_ec

    .line 213
    :cond_58
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "authenticateReason was "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v15, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " but must be one of: AUTHENTICATE_REASON_UNKNOWN("

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "), AUTHENTICATE_REASON_STARTED_WAKING_UP("

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), AUTHENTICATE_REASON_PRIMARY_BOUNCER_SHOWN("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), AUTHENTICATE_REASON_ASSISTANT_VISIBLE("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), AUTHENTICATE_REASON_ALTERNATE_BIOMETRIC_BOUNCER_SHOWN("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), AUTHENTICATE_REASON_NOTIFICATION_PANEL_CLICKED("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), AUTHENTICATE_REASON_OCCLUDING_APP_REQUESTED("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), AUTHENTICATE_REASON_PICK_UP_GESTURE_TRIGGERED("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), AUTHENTICATE_REASON_QS_EXPANDED("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), AUTHENTICATE_REASON_SWIPE_UP_ON_BOUNCER("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), AUTHENTICATE_REASON_UDFPS_POINTER_DOWN("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 228
    :cond_ec
    :goto_ec
    move/from16 v5, p5

    iput v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    .line 229
    const-class v6, Landroid/os/PowerManager$WakeReason;

    iget v7, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 231
    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    .line 232
    const-class v7, Landroid/annotation/NonNull;

    iget-object v9, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 234
    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    .line 235
    move/from16 v8, p8

    iput-boolean v8, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    .line 238
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 18
    .param p1, "in"    # Landroid/os/Parcel;

    .line 423
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 427
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 428
    .local v1, "flg":I
    and-int/lit16 v2, v1, 0x80

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_11

    move v2, v4

    goto :goto_12

    :cond_11
    move v2, v3

    .line 429
    .local v2, "isMandatoryBiometrics":Z
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 430
    .local v5, "userId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 431
    .local v6, "sensorId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 432
    .local v7, "displayState":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 433
    .local v8, "authenticateReason":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 434
    .local v9, "wakeReason":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 435
    .local v10, "opPackageName":Ljava/lang/String;
    and-int/lit8 v11, v1, 0x40

    const/4 v12, 0x0

    if-nez v11, :cond_31

    move-object v11, v12

    goto :goto_35

    :cond_31
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 437
    .local v11, "attributionTag":Ljava/lang/String;
    :goto_35
    iput v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mUserId:I

    .line 438
    iput v6, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    .line 439
    iput v7, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    .line 440
    const-class v13, Landroid/hardware/biometrics/AuthenticateOptions$DisplayState;

    iget v14, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    invoke-static {v13, v12, v14}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 442
    iput v8, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    .line 444
    iget v13, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    if-eqz v13, :cond_118

    iget v13, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    if-eq v13, v4, :cond_118

    iget v13, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_118

    iget v13, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v15, 0x3

    if-eq v13, v15, :cond_118

    iget v13, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v12, 0x4

    if-eq v13, v12, :cond_118

    iget v13, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v12, 0x5

    if-eq v13, v12, :cond_118

    iget v13, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v12, 0x6

    if-eq v13, v12, :cond_118

    iget v13, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v12, 0x7

    if-eq v13, v12, :cond_118

    iget v13, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/16 v12, 0x8

    if-eq v13, v12, :cond_118

    iget v13, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/16 v12, 0x9

    if-eq v13, v12, :cond_118

    iget v13, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/16 v12, 0xa

    if-ne v13, v12, :cond_7e

    goto/16 :goto_118

    .line 455
    :cond_7e
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "authenticateReason was "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v15, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " but must be one of: AUTHENTICATE_REASON_UNKNOWN("

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "), AUTHENTICATE_REASON_STARTED_WAKING_UP("

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), AUTHENTICATE_REASON_PRIMARY_BOUNCER_SHOWN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), AUTHENTICATE_REASON_ASSISTANT_VISIBLE("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), AUTHENTICATE_REASON_ALTERNATE_BIOMETRIC_BOUNCER_SHOWN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), AUTHENTICATE_REASON_NOTIFICATION_PANEL_CLICKED("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), AUTHENTICATE_REASON_OCCLUDING_APP_REQUESTED("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), AUTHENTICATE_REASON_PICK_UP_GESTURE_TRIGGERED("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), AUTHENTICATE_REASON_QS_EXPANDED("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), AUTHENTICATE_REASON_SWIPE_UP_ON_BOUNCER("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), AUTHENTICATE_REASON_UDFPS_POINTER_DOWN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 470
    :cond_118
    :goto_118
    iput v9, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    .line 471
    const-class v3, Landroid/os/PowerManager$WakeReason;

    iget v4, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    const/4 v12, 0x0

    invoke-static {v3, v12, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 473
    iput-object v10, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    .line 474
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    invoke-static {v3, v12, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 476
    iput-object v11, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    .line 477
    iput-boolean v2, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    .line 480
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 666
    return-void
.end method

.method public static blacklist authenticateReasonToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 158
    packed-switch p0, :pswitch_data_2a

    .line 181
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :pswitch_8
    const-string v0, "AUTHENTICATE_REASON_UDFPS_POINTER_DOWN"

    return-object v0

    .line 178
    :pswitch_b
    const-string v0, "AUTHENTICATE_REASON_SWIPE_UP_ON_BOUNCER"

    return-object v0

    .line 176
    :pswitch_e
    const-string v0, "AUTHENTICATE_REASON_QS_EXPANDED"

    return-object v0

    .line 174
    :pswitch_11
    const-string v0, "AUTHENTICATE_REASON_PICK_UP_GESTURE_TRIGGERED"

    return-object v0

    .line 172
    :pswitch_14
    const-string v0, "AUTHENTICATE_REASON_OCCLUDING_APP_REQUESTED"

    return-object v0

    .line 170
    :pswitch_17
    const-string v0, "AUTHENTICATE_REASON_NOTIFICATION_PANEL_CLICKED"

    return-object v0

    .line 168
    :pswitch_1a
    const-string v0, "AUTHENTICATE_REASON_ALTERNATE_BIOMETRIC_BOUNCER_SHOWN"

    return-object v0

    .line 166
    :pswitch_1d
    const-string v0, "AUTHENTICATE_REASON_ASSISTANT_VISIBLE"

    return-object v0

    .line 164
    :pswitch_20
    const-string v0, "AUTHENTICATE_REASON_PRIMARY_BOUNCER_SHOWN"

    return-object v0

    .line 162
    :pswitch_23
    const-string v0, "AUTHENTICATE_REASON_STARTED_WAKING_UP"

    return-object v0

    .line 160
    :pswitch_26
    const-string v0, "AUTHENTICATE_REASON_UNKNOWN"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static blacklist defaultAttributionTag()Ljava/lang/String;
    .registers 1

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultAuthenticateReason()I
    .registers 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultDisplayState()I
    .registers 1

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultOpPackageName()Ljava/lang/String;
    .registers 1

    .line 108
    const-string v0, ""

    return-object v0
.end method

.method private static blacklist defaultSensorId()I
    .registers 1

    .line 57
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist defaultUserId()I
    .registers 1

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultWakeReason()I
    .registers 1

    .line 96
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 363
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 364
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_50

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_50

    .line 366
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/hardware/face/FaceAuthenticateOptions;

    .line 368
    .local v2, "that":Landroid/hardware/face/FaceAuthenticateOptions;
    iget v3, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mUserId:I

    iget v4, v2, Landroid/hardware/face/FaceAuthenticateOptions;->mUserId:I

    if-ne v3, v4, :cond_4e

    iget v3, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    iget v4, v2, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    if-ne v3, v4, :cond_4e

    iget v3, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    iget v4, v2, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    if-ne v3, v4, :cond_4e

    iget v3, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    iget v4, v2, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    if-ne v3, v4, :cond_4e

    iget v3, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    iget v4, v2, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    if-ne v3, v4, :cond_4e

    iget-object v3, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    .line 374
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    .line 375
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-boolean v3, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    iget-boolean v4, v2, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    if-ne v3, v4, :cond_4e

    goto :goto_4f

    :cond_4e
    move v0, v1

    .line 368
    :goto_4f
    return v0

    .line 364
    .end local v2    # "that":Landroid/hardware/face/FaceAuthenticateOptions;
    :cond_50
    :goto_50
    return v1
.end method

.method public blacklist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getAuthenticateReason()I
    .registers 2

    .line 273
    iget v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    return v0
.end method

.method public blacklist getDisplayState()I
    .registers 2

    .line 261
    iget v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    return v0
.end method

.method public blacklist getOpPackageName()Ljava/lang/String;
    .registers 2

    .line 292
    iget-object v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSensorId()I
    .registers 2

    .line 253
    iget v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    return v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 245
    iget v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mUserId:I

    return v0
.end method

.method public blacklist getWakeReason()I
    .registers 2

    .line 281
    iget v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 385
    const/4 v0, 0x1

    .line 386
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mUserId:I

    add-int/2addr v1, v2

    .line 387
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    add-int/2addr v0, v2

    .line 388
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    add-int/2addr v1, v2

    .line 389
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    add-int/2addr v0, v2

    .line 390
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    add-int/2addr v1, v2

    .line 391
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 392
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 393
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 394
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public blacklist isMandatoryBiometrics()Z
    .registers 2

    .line 310
    iget-boolean v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    return v0
.end method

.method public blacklist setAttributionTag(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 343
    iput-object p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    .line 344
    return-object p0
.end method

.method public blacklist setIsMandatoryBiometrics(Z)Landroid/hardware/face/FaceAuthenticateOptions;
    .registers 2
    .param p1, "value"    # Z

    .line 352
    iput-boolean p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    .line 353
    return-object p0
.end method

.method public blacklist setOpPackageName(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions;
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .line 330
    iput-object p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    .line 331
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 333
    return-object p0
.end method

.method public blacklist setSensorId(I)Landroid/hardware/face/FaceAuthenticateOptions;
    .registers 2
    .param p1, "value"    # I

    .line 318
    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    .line 319
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "flg":I
    iget-boolean v1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x80

    .line 405
    :cond_7
    iget-object v1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x40

    .line 406
    :cond_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget v1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mUserId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget v1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    iget v1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget v1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget v1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    iget-object v1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_37

    iget-object v1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 414
    :cond_37
    return-void
.end method
