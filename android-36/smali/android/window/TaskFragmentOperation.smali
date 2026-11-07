.class public final Landroid/window/TaskFragmentOperation;
.super Ljava/lang/Object;
.source "TaskFragmentOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskFragmentOperation$Builder;,
        Landroid/window/TaskFragmentOperation$OperationType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskFragmentOperation;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist OP_TYPE_CLEAR_ADJACENT_TASK_FRAGMENTS:I = 0x5

.field public static final blacklist OP_TYPE_CREATE_OR_MOVE_TASK_FRAGMENT_DECOR_SURFACE:I = 0xc

.field public static final blacklist OP_TYPE_CREATE_TASK_FRAGMENT:I = 0x0

.field public static final blacklist OP_TYPE_DELETE_TASK_FRAGMENT:I = 0x1

.field public static final blacklist OP_TYPE_PRIVILEGED_REORDER_TO_BOTTOM_OF_TASK:I = 0x3e9

.field public static final blacklist OP_TYPE_PRIVILEGED_REORDER_TO_TOP_OF_TASK:I = 0x3ea

.field public static final blacklist OP_TYPE_PRIVILEGED_SET_CAN_AFFECT_SYSTEM_UI_FLAGS:I = 0x3ec

.field public static final blacklist OP_TYPE_PRIVILEGED_SET_MOVE_TO_BOTTOM_IF_CLEAR_WHEN_LAUNCH:I = 0x3eb

.field public static final blacklist OP_TYPE_REMOVE_TASK_FRAGMENT_DECOR_SURFACE:I = 0xd

.field public static final blacklist OP_TYPE_REORDER_TO_FRONT:I = 0xa

.field public static final blacklist OP_TYPE_REPARENT_ACTIVITY_TO_TASK_FRAGMENT:I = 0x3

.field public static final blacklist OP_TYPE_REQUEST_FOCUS_ON_TASK_FRAGMENT:I = 0x6

.field public static final blacklist OP_TYPE_SET_ADJACENT_TASK_FRAGMENTS:I = 0x4

.field public static final blacklist OP_TYPE_SET_ANIMATION_PARAMS:I = 0x8

.field public static final blacklist OP_TYPE_SET_COMPANION_TASK_FRAGMENT:I = 0x7

.field public static final blacklist OP_TYPE_SET_DECOR_SURFACE_BOOSTED:I = 0xf

.field public static final blacklist OP_TYPE_SET_DIM_ON_TASK:I = 0xe

.field public static final blacklist OP_TYPE_SET_ISOLATED_NAVIGATION:I = 0xb

.field public static final blacklist OP_TYPE_SET_PINNED:I = 0x10

.field public static final blacklist OP_TYPE_SET_RELATIVE_BOUNDS:I = 0x9

.field public static final blacklist OP_TYPE_START_ACTIVITY_IN_TASK_FRAGMENT:I = 0x2

.field public static final blacklist OP_TYPE_UNKNOWN:I = -0x1

.field public static final blacklist PRIVILEGED_OP_START:I = 0x3e8


# instance fields
.field private final blacklist mActivityIntent:Landroid/content/Intent;

.field private final blacklist mActivityToken:Landroid/os/IBinder;

.field private final blacklist mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

.field private final blacklist mBooleanValue:Z

.field private final blacklist mBundle:Landroid/os/Bundle;

.field private final blacklist mOpType:I

.field private final blacklist mSecondaryFragmentToken:Landroid/os/IBinder;

.field private final blacklist mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final blacklist mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 278
    new-instance v0, Landroid/window/TaskFragmentOperation$1;

    invoke-direct {v0}, Landroid/window/TaskFragmentOperation$1;-><init>()V

    sput-object v0, Landroid/window/TaskFragmentOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/window/TaskFragmentCreationParams;Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/IBinder;Landroid/window/TaskFragmentAnimationParams;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 10
    .param p1, "opType"    # I
    .param p2, "taskFragmentCreationParams"    # Landroid/window/TaskFragmentCreationParams;
    .param p3, "activityToken"    # Landroid/os/IBinder;
    .param p4, "activityIntent"    # Landroid/content/Intent;
    .param p5, "bundle"    # Landroid/os/Bundle;
    .param p6, "secondaryFragmentToken"    # Landroid/os/IBinder;
    .param p7, "animationParams"    # Landroid/window/TaskFragmentAnimationParams;
    .param p8, "booleanValue"    # Z
    .param p9, "surfaceTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput p1, p0, Landroid/window/TaskFragmentOperation;->mOpType:I

    .line 242
    iput-object p2, p0, Landroid/window/TaskFragmentOperation;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    .line 243
    iput-object p3, p0, Landroid/window/TaskFragmentOperation;->mActivityToken:Landroid/os/IBinder;

    .line 244
    iput-object p4, p0, Landroid/window/TaskFragmentOperation;->mActivityIntent:Landroid/content/Intent;

    .line 245
    iput-object p5, p0, Landroid/window/TaskFragmentOperation;->mBundle:Landroid/os/Bundle;

    .line 246
    iput-object p6, p0, Landroid/window/TaskFragmentOperation;->mSecondaryFragmentToken:Landroid/os/IBinder;

    .line 247
    iput-object p7, p0, Landroid/window/TaskFragmentOperation;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    .line 248
    iput-boolean p8, p0, Landroid/window/TaskFragmentOperation;->mBooleanValue:Z

    .line 249
    iput-object p9, p0, Landroid/window/TaskFragmentOperation;->mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 250
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/window/TaskFragmentCreationParams;Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/IBinder;Landroid/window/TaskFragmentAnimationParams;ZLandroid/view/SurfaceControl$Transaction;Landroid/window/TaskFragmentOperation-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/window/TaskFragmentOperation;-><init>(ILandroid/window/TaskFragmentCreationParams;Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/IBinder;Landroid/window/TaskFragmentAnimationParams;ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentOperation;->mOpType:I

    .line 254
    sget-object v0, Landroid/window/TaskFragmentCreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentCreationParams;

    iput-object v0, p0, Landroid/window/TaskFragmentOperation;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentOperation;->mActivityToken:Landroid/os/IBinder;

    .line 256
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/window/TaskFragmentOperation;->mActivityIntent:Landroid/content/Intent;

    .line 257
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentOperation;->mBundle:Landroid/os/Bundle;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentOperation;->mSecondaryFragmentToken:Landroid/os/IBinder;

    .line 259
    sget-object v0, Landroid/window/TaskFragmentAnimationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentAnimationParams;

    iput-object v0, p0, Landroid/window/TaskFragmentOperation;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskFragmentOperation;->mBooleanValue:Z

    .line 261
    sget-object v0, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Landroid/window/TaskFragmentOperation;->mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 262
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TaskFragmentOperation-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TaskFragmentOperation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 403
    instance-of v0, p1, Landroid/window/TaskFragmentOperation;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 404
    return v1

    .line 406
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/window/TaskFragmentOperation;

    .line 407
    .local v0, "other":Landroid/window/TaskFragmentOperation;
    iget v2, p0, Landroid/window/TaskFragmentOperation;->mOpType:I

    iget v3, v0, Landroid/window/TaskFragmentOperation;->mOpType:I

    if-ne v2, v3, :cond_5d

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    iget-object v3, v0, Landroid/window/TaskFragmentOperation;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    .line 408
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mActivityToken:Landroid/os/IBinder;

    iget-object v3, v0, Landroid/window/TaskFragmentOperation;->mActivityToken:Landroid/os/IBinder;

    .line 409
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mActivityIntent:Landroid/content/Intent;

    iget-object v3, v0, Landroid/window/TaskFragmentOperation;->mActivityIntent:Landroid/content/Intent;

    .line 410
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mBundle:Landroid/os/Bundle;

    iget-object v3, v0, Landroid/window/TaskFragmentOperation;->mBundle:Landroid/os/Bundle;

    .line 411
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mSecondaryFragmentToken:Landroid/os/IBinder;

    iget-object v3, v0, Landroid/window/TaskFragmentOperation;->mSecondaryFragmentToken:Landroid/os/IBinder;

    .line 412
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    iget-object v3, v0, Landroid/window/TaskFragmentOperation;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    .line 413
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-boolean v2, p0, Landroid/window/TaskFragmentOperation;->mBooleanValue:Z

    iget-boolean v3, v0, Landroid/window/TaskFragmentOperation;->mBooleanValue:Z

    if-ne v2, v3, :cond_5d

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v0, Landroid/window/TaskFragmentOperation;->mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 415
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const/4 v1, 0x1

    goto :goto_5e

    :cond_5d
    nop

    .line 407
    :goto_5e
    return v1
.end method

.method public blacklist getActivityIntent()Landroid/content/Intent;
    .registers 2

    .line 320
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mActivityIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getActivityToken()Landroid/os/IBinder;
    .registers 2

    .line 312
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getAnimationParams()Landroid/window/TaskFragmentAnimationParams;
    .registers 2

    .line 344
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    return-object v0
.end method

.method public blacklist getBooleanValue()Z
    .registers 2

    .line 349
    iget-boolean v0, p0, Landroid/window/TaskFragmentOperation;->mBooleanValue:Z

    return v0
.end method

.method public blacklist getBundle()Landroid/os/Bundle;
    .registers 2

    .line 328
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getOpType()I
    .registers 2

    .line 296
    iget v0, p0, Landroid/window/TaskFragmentOperation;->mOpType:I

    return v0
.end method

.method public blacklist getSecondaryFragmentToken()Landroid/os/IBinder;
    .registers 2

    .line 336
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mSecondaryFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getSurfaceTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 360
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method public blacklist getTaskFragmentCreationParams()Landroid/window/TaskFragmentCreationParams;
    .registers 2

    .line 304
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 396
    iget v0, p0, Landroid/window/TaskFragmentOperation;->mOpType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    iget-object v3, p0, Landroid/window/TaskFragmentOperation;->mActivityToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/window/TaskFragmentOperation;->mActivityIntent:Landroid/content/Intent;

    iget-object v5, p0, Landroid/window/TaskFragmentOperation;->mBundle:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/window/TaskFragmentOperation;->mSecondaryFragmentToken:Landroid/os/IBinder;

    iget-object v7, p0, Landroid/window/TaskFragmentOperation;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    iget-boolean v0, p0, Landroid/window/TaskFragmentOperation;->mBooleanValue:Z

    .line 397
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v9, p0, Landroid/window/TaskFragmentOperation;->mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 396
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "TaskFragmentOperation{ opType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TaskFragmentOperation;->mOpType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    iget-object v1, p0, Landroid/window/TaskFragmentOperation;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    if-eqz v1, :cond_1f

    .line 368
    const-string v1, ", taskFragmentCreationParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 370
    :cond_1f
    iget-object v1, p0, Landroid/window/TaskFragmentOperation;->mActivityToken:Landroid/os/IBinder;

    if-eqz v1, :cond_2e

    .line 371
    const-string v1, ", activityToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 373
    :cond_2e
    iget-object v1, p0, Landroid/window/TaskFragmentOperation;->mActivityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3d

    .line 374
    const-string v1, ", activityIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mActivityIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 376
    :cond_3d
    iget-object v1, p0, Landroid/window/TaskFragmentOperation;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_4c

    .line 377
    const-string v1, ", bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    :cond_4c
    iget-object v1, p0, Landroid/window/TaskFragmentOperation;->mSecondaryFragmentToken:Landroid/os/IBinder;

    if-eqz v1, :cond_5b

    .line 380
    const-string v1, ", secondaryFragmentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mSecondaryFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    :cond_5b
    iget-object v1, p0, Landroid/window/TaskFragmentOperation;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    if-eqz v1, :cond_6a

    .line 383
    const-string v1, ", animationParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    :cond_6a
    const-string v1, ", booleanValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/TaskFragmentOperation;->mBooleanValue:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 386
    iget-object v1, p0, Landroid/window/TaskFragmentOperation;->mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v1, :cond_84

    .line 387
    const-string v1, ", surfaceTransaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TaskFragmentOperation;->mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    :cond_84
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 266
    iget v0, p0, Landroid/window/TaskFragmentOperation;->mOpType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mTaskFragmentCreationParams:Landroid/window/TaskFragmentCreationParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 268
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 269
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mActivityIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 270
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 271
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mSecondaryFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 272
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 273
    iget-boolean v0, p0, Landroid/window/TaskFragmentOperation;->mBooleanValue:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 274
    iget-object v0, p0, Landroid/window/TaskFragmentOperation;->mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 275
    return-void
.end method
