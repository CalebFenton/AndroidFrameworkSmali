.class public Landroid/hardware/input/KeyGestureEvent$Builder;
.super Ljava/lang/Object;
.source "KeyGestureEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/KeyGestureEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAction:I

.field private blacklist mAppLaunchData:Landroid/hardware/input/AppLaunchData;

.field private blacklist mDeviceId:I

.field private blacklist mDisplayId:I

.field private blacklist mFlags:I

.field private blacklist mKeyGestureType:I

.field private blacklist mKeycodes:[I

.field private blacklist mModifierState:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mDeviceId:I

    .line 266
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mKeycodes:[I

    .line 267
    iput v0, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mModifierState:I

    .line 268
    iput v0, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mKeyGestureType:I

    .line 270
    const/4 v1, 0x2

    iput v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAction:I

    .line 271
    iput v0, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mDisplayId:I

    .line 272
    iput v0, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mFlags:I

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/input/KeyGestureEvent;
    .registers 4

    .line 344
    new-instance v0, Landroid/hardware/input/AidlKeyGestureEvent;

    invoke-direct {v0}, Landroid/hardware/input/AidlKeyGestureEvent;-><init>()V

    .line 345
    .local v0, "event":Landroid/hardware/input/AidlKeyGestureEvent;
    iget v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mDeviceId:I

    iput v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    .line 346
    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mKeycodes:[I

    iput-object v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    .line 347
    iget v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mModifierState:I

    iput v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    .line 348
    iget v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mKeyGestureType:I

    iput v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    .line 349
    iget v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAction:I

    iput v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    .line 350
    iget v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mDisplayId:I

    iput v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    .line 351
    iget v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mFlags:I

    iput v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    .line 352
    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    if-eqz v1, :cond_6a

    .line 353
    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    instance-of v1, v1, Landroid/hardware/input/AppLaunchData$CategoryData;

    if-eqz v1, :cond_36

    .line 354
    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    check-cast v1, Landroid/hardware/input/AppLaunchData$CategoryData;

    .line 355
    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$CategoryData;->getCategory()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    goto :goto_6a

    .line 356
    :cond_36
    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    instance-of v1, v1, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz v1, :cond_47

    .line 357
    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    check-cast v1, Landroid/hardware/input/AppLaunchData$RoleData;

    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    goto :goto_6a

    .line 358
    :cond_47
    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    instance-of v1, v1, Landroid/hardware/input/AppLaunchData$ComponentData;

    if-eqz v1, :cond_62

    .line 359
    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    check-cast v1, Landroid/hardware/input/AppLaunchData$ComponentData;

    .line 360
    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$ComponentData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    .line 361
    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    check-cast v1, Landroid/hardware/input/AppLaunchData$ComponentData;

    .line 362
    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$ComponentData;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    goto :goto_6a

    .line 364
    :cond_62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "AppLaunchData type is invalid!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_6a
    :goto_6a
    new-instance v1, Landroid/hardware/input/KeyGestureEvent;

    invoke-direct {v1, v0}, Landroid/hardware/input/KeyGestureEvent;-><init>(Landroid/hardware/input/AidlKeyGestureEvent;)V

    return-object v1
.end method

.method public blacklist setAction(I)Landroid/hardware/input/KeyGestureEvent$Builder;
    .registers 2
    .param p1, "action"    # I

    .line 312
    iput p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAction:I

    .line 313
    return-object p0
.end method

.method public blacklist setAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/hardware/input/KeyGestureEvent$Builder;
    .registers 2
    .param p1, "appLaunchData"    # Landroid/hardware/input/AppLaunchData;

    .line 336
    iput-object p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    .line 337
    return-object p0
.end method

.method public blacklist setDeviceId(I)Landroid/hardware/input/KeyGestureEvent$Builder;
    .registers 2
    .param p1, "deviceId"    # I

    .line 280
    iput p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mDeviceId:I

    .line 281
    return-object p0
.end method

.method public blacklist setDisplayId(I)Landroid/hardware/input/KeyGestureEvent$Builder;
    .registers 2
    .param p1, "displayId"    # I

    .line 320
    iput p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mDisplayId:I

    .line 321
    return-object p0
.end method

.method public blacklist setFlags(I)Landroid/hardware/input/KeyGestureEvent$Builder;
    .registers 2
    .param p1, "flags"    # I

    .line 328
    iput p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mFlags:I

    .line 329
    return-object p0
.end method

.method public blacklist setKeyGestureType(I)Landroid/hardware/input/KeyGestureEvent$Builder;
    .registers 2
    .param p1, "keyGestureType"    # I

    .line 304
    iput p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mKeyGestureType:I

    .line 305
    return-object p0
.end method

.method public blacklist setKeycodes([I)Landroid/hardware/input/KeyGestureEvent$Builder;
    .registers 2
    .param p1, "keycodes"    # [I

    .line 288
    iput-object p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mKeycodes:[I

    .line 289
    return-object p0
.end method

.method public blacklist setModifierState(I)Landroid/hardware/input/KeyGestureEvent$Builder;
    .registers 2
    .param p1, "modifierState"    # I

    .line 296
    iput p1, p0, Landroid/hardware/input/KeyGestureEvent$Builder;->mModifierState:I

    .line 297
    return-object p0
.end method
