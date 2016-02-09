.class public final Landroid/view/InputDevice;
.super Ljava/lang/Object;
.source "InputDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputDevice$MotionRange;,
        Landroid/view/InputDevice$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEYBOARD_TYPE_ALPHABETIC:I = 0x2

.field public static final KEYBOARD_TYPE_NONE:I = 0x0

.field public static final KEYBOARD_TYPE_NON_ALPHABETIC:I = 0x1

.field public static final MOTION_RANGE_ORIENTATION:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_PRESSURE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_SIZE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOOL_MAJOR:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOOL_MINOR:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOUCH_MAJOR:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOUCH_MINOR:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SOURCE_ANY:I = -0x100

.field public static final SOURCE_BLUETOOTH_STYLUS:I = 0xc002

.field public static final SOURCE_CLASS_BUTTON:I = 0x1

.field public static final SOURCE_CLASS_JOYSTICK:I = 0x10

.field public static final SOURCE_CLASS_MASK:I = 0xff

.field public static final SOURCE_CLASS_NONE:I = 0x0

.field public static final SOURCE_CLASS_POINTER:I = 0x2

.field public static final SOURCE_CLASS_POSITION:I = 0x8

.field public static final SOURCE_CLASS_TRACKBALL:I = 0x4

.field public static final SOURCE_DPAD:I = 0x201

.field public static final SOURCE_GAMEPAD:I = 0x401

.field public static final SOURCE_HDMI:I = 0x2000001

.field public static final SOURCE_JOYSTICK:I = 0x1000010

.field public static final SOURCE_KEYBOARD:I = 0x101

.field public static final SOURCE_MOUSE:I = 0x2002

.field public static final SOURCE_STYLUS:I = 0x4002

.field public static final SOURCE_TOUCHPAD:I = 0x100008

.field public static final SOURCE_TOUCHSCREEN:I = 0x1002

.field public static final SOURCE_TOUCH_NAVIGATION:I = 0x200000

.field public static final SOURCE_TRACKBALL:I = 0x10004

.field public static final SOURCE_UNKNOWN:I


# instance fields
.field private final mControllerNumber:I

.field private final mDescriptor:Ljava/lang/String;

.field private final mGeneration:I

.field private final mHasButtonUnderPad:Z

.field private final mHasMicrophone:Z

.field private final mHasVibrator:Z

.field private final mId:I

.field private final mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

.field private final mIsExternal:Z

.field private final mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private final mKeyboardType:I

.field private final mMotionRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mProductId:I

.field private final mSources:I

.field private final mVendorId:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 378
    new-instance v0, Landroid/view/InputDevice$1;

    #@2
    invoke-direct {v0}, Landroid/view/InputDevice$1;-><init>()V

    #@5
    .line 377
    sput-object v0, Landroid/view/InputDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 45
    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;IILjava/lang/String;ZIILandroid/view/KeyCharacterMap;ZZZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "generation"    # I
    .param p3, "controllerNumber"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "vendorId"    # I
    .param p6, "productId"    # I
    .param p7, "descriptor"    # Ljava/lang/String;
    .param p8, "isExternal"    # Z
    .param p9, "sources"    # I
    .param p10, "keyboardType"    # I
    .param p11, "keyCharacterMap"    # Landroid/view/KeyCharacterMap;
    .param p12, "hasVibrator"    # Z
    .param p13, "hasMicrophone"    # Z
    .param p14, "hasButtonUnderPad"    # Z

    #@0
    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    #@a
    .line 392
    iput p1, p0, Landroid/view/InputDevice;->mId:I

    #@c
    .line 393
    iput p2, p0, Landroid/view/InputDevice;->mGeneration:I

    #@e
    .line 394
    iput p3, p0, Landroid/view/InputDevice;->mControllerNumber:I

    #@10
    .line 395
    iput-object p4, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    #@12
    .line 396
    iput p5, p0, Landroid/view/InputDevice;->mVendorId:I

    #@14
    .line 397
    iput p6, p0, Landroid/view/InputDevice;->mProductId:I

    #@16
    .line 398
    iput-object p7, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    #@18
    .line 399
    iput-boolean p8, p0, Landroid/view/InputDevice;->mIsExternal:Z

    #@1a
    .line 400
    iput p9, p0, Landroid/view/InputDevice;->mSources:I

    #@1c
    .line 401
    iput p10, p0, Landroid/view/InputDevice;->mKeyboardType:I

    #@1e
    .line 402
    iput-object p11, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    #@20
    .line 403
    iput-boolean p12, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    #@22
    .line 404
    iput-boolean p13, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    #@24
    .line 405
    iput-boolean p14, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    #@26
    .line 406
    new-instance v0, Landroid/hardware/input/InputDeviceIdentifier;

    #@28
    invoke-direct {v0, p7, p5, p6}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Ljava/lang/String;II)V

    #@2b
    iput-object v0, p0, Landroid/view/InputDevice;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    #@2d
    .line 391
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    #@c
    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/view/InputDevice;->mId:I

    #@12
    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/view/InputDevice;->mGeneration:I

    #@18
    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroid/view/InputDevice;->mControllerNumber:I

    #@1e
    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    #@24
    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v0

    #@28
    iput v0, p0, Landroid/view/InputDevice;->mVendorId:I

    #@2a
    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v0

    #@2e
    iput v0, p0, Landroid/view/InputDevice;->mProductId:I

    #@30
    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    iput-object v0, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    #@36
    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_0

    #@3c
    move v0, v2

    #@3d
    :goto_0
    iput-boolean v0, p0, Landroid/view/InputDevice;->mIsExternal:Z

    #@3f
    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v0

    #@43
    iput v0, p0, Landroid/view/InputDevice;->mSources:I

    #@45
    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v0

    #@49
    iput v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    #@4b
    .line 420
    sget-object v0, Landroid/view/KeyCharacterMap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4d
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@50
    move-result-object v0

    #@51
    check-cast v0, Landroid/view/KeyCharacterMap;

    #@53
    iput-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    #@55
    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@58
    move-result v0

    #@59
    if-eqz v0, :cond_1

    #@5b
    move v0, v2

    #@5c
    :goto_1
    iput-boolean v0, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    #@5e
    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@61
    move-result v0

    #@62
    if-eqz v0, :cond_2

    #@64
    move v0, v2

    #@65
    :goto_2
    iput-boolean v0, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    #@67
    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6a
    move-result v0

    #@6b
    if-eqz v0, :cond_3

    #@6d
    :goto_3
    iput-boolean v2, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    #@6f
    .line 424
    new-instance v0, Landroid/hardware/input/InputDeviceIdentifier;

    #@71
    iget-object v2, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    #@73
    iget v3, p0, Landroid/view/InputDevice;->mVendorId:I

    #@75
    iget v4, p0, Landroid/view/InputDevice;->mProductId:I

    #@77
    invoke-direct {v0, v2, v3, v4}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Ljava/lang/String;II)V

    #@7a
    iput-object v0, p0, Landroid/view/InputDevice;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    #@7c
    .line 427
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7f
    move-result v1

    #@80
    .line 428
    .local v1, "axis":I
    if-gez v1, :cond_4

    #@82
    .line 409
    return-void

    #@83
    .end local v1    # "axis":I
    :cond_0
    move v0, v3

    #@84
    .line 417
    goto :goto_0

    #@85
    :cond_1
    move v0, v3

    #@86
    .line 421
    goto :goto_1

    #@87
    :cond_2
    move v0, v3

    #@88
    .line 422
    goto :goto_2

    #@89
    :cond_3
    move v2, v3

    #@8a
    .line 423
    goto :goto_3

    #@8b
    .line 431
    .restart local v1    # "axis":I
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8e
    move-result v2

    #@8f
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@92
    move-result v3

    #@93
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@96
    move-result v4

    #@97
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@9a
    move-result v5

    #@9b
    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@9e
    move-result v6

    #@9f
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@a2
    move-result v7

    #@a3
    move-object v0, p0

    #@a4
    .line 431
    invoke-direct/range {v0 .. v7}, Landroid/view/InputDevice;->addMotionRange(IIFFFFF)V

    #@a7
    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/InputDevice;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/InputDevice;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private addMotionRange(IIFFFFF)V
    .locals 10
    .param p1, "axis"    # I
    .param p2, "source"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "flat"    # F
    .param p6, "fuzz"    # F
    .param p7, "resolution"    # F

    #@0
    .prologue
    .line 723
    iget-object v9, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    #@2
    new-instance v0, Landroid/view/InputDevice$MotionRange;

    #@4
    const/4 v8, 0x0

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    move/from16 v6, p6

    #@c
    move/from16 v7, p7

    #@e
    invoke-direct/range {v0 .. v8}, Landroid/view/InputDevice$MotionRange;-><init>(IIFFFFFLandroid/view/InputDevice$MotionRange;)V

    #@11
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14
    .line 722
    return-void
.end method

.method private appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/StringBuilder;
    .param p2, "source"    # I
    .param p3, "sourceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 970
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    #@2
    and-int/2addr v0, p2

    #@3
    if-ne v0, p2, :cond_0

    #@5
    .line 971
    const-string/jumbo v0, " "

    #@8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 972
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 969
    :cond_0
    return-void
.end method

.method public static getDevice(I)Landroid/view/InputDevice;
    .locals 1
    .param p0, "id"    # I

    #@0
    .prologue
    .line 442
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getDeviceIds()[I
    .locals 1

    #@0
    .prologue
    .line 450
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 912
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getControllerNumber()I
    .locals 1

    #@0
    .prologue
    .line 485
    iget v0, p0, Landroid/view/InputDevice;->mControllerNumber:I

    #@2
    return v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 563
    iget-object v0, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getGeneration()I
    .locals 1

    #@0
    .prologue
    .line 510
    iget v0, p0, Landroid/view/InputDevice;->mGeneration:I

    #@2
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 466
    iget v0, p0, Landroid/view/InputDevice;->mId:I

    #@2
    return v0
.end method

.method public getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;
    .locals 1

    #@0
    .prologue
    .line 497
    iget-object v0, p0, Landroid/view/InputDevice;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    #@2
    return-object v0
.end method

.method public getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .locals 1

    #@0
    .prologue
    .line 647
    iget-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    #@2
    return-object v0
.end method

.method public getKeyboardType()I
    .locals 1

    #@0
    .prologue
    .line 639
    iget v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    #@2
    return v0
.end method

.method public getMotionRange(I)Landroid/view/InputDevice$MotionRange;
    .locals 4
    .param p1, "axis"    # I

    #@0
    .prologue
    .line 675
    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 676
    .local v1, "numRanges":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@9
    .line 677
    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/view/InputDevice$MotionRange;

    #@11
    .line 678
    .local v2, "range":Landroid/view/InputDevice$MotionRange;
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-get0(Landroid/view/InputDevice$MotionRange;)I

    #@14
    move-result v3

    #@15
    if-ne v3, p1, :cond_0

    #@17
    .line 679
    return-object v2

    #@18
    .line 676
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 682
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_1
    const/4 v3, 0x0

    #@1c
    return-object v3
.end method

.method public getMotionRange(II)Landroid/view/InputDevice$MotionRange;
    .locals 4
    .param p1, "axis"    # I
    .param p2, "source"    # I

    #@0
    .prologue
    .line 700
    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 701
    .local v1, "numRanges":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@9
    .line 702
    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/view/InputDevice$MotionRange;

    #@11
    .line 703
    .local v2, "range":Landroid/view/InputDevice$MotionRange;
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-get0(Landroid/view/InputDevice$MotionRange;)I

    #@14
    move-result v3

    #@15
    if-ne v3, p1, :cond_0

    #@17
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-get6(Landroid/view/InputDevice$MotionRange;)I

    #@1a
    move-result v3

    #@1b
    if-ne v3, p2, :cond_0

    #@1d
    .line 704
    return-object v2

    #@1e
    .line 701
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 707
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_1
    const/4 v3, 0x0

    #@22
    return-object v3
.end method

.method public getMotionRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 717
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 611
    iget-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getProductId()I
    .locals 1

    #@0
    .prologue
    .line 537
    iget v0, p0, Landroid/view/InputDevice;->mProductId:I

    #@2
    return v0
.end method

.method public getSources()I
    .locals 1

    #@0
    .prologue
    .line 619
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    #@2
    return v0
.end method

.method public getVendorId()I
    .locals 1

    #@0
    .prologue
    .line 523
    iget v0, p0, Landroid/view/InputDevice;->mVendorId:I

    #@2
    return v0
.end method

.method public getVibrator()Landroid/os/Vibrator;
    .locals 3

    #@0
    .prologue
    .line 739
    iget-object v1, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 740
    :try_start_0
    iget-object v0, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 741
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 742
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@e
    move-result-object v0

    #@f
    iget v2, p0, Landroid/view/InputDevice;->mId:I

    #@11
    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager;->getInputDeviceVibrator(I)Landroid/os/Vibrator;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    #@17
    .line 747
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    return-object v0

    #@1b
    .line 744
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/NullVibrator;->getInstance()Landroid/os/NullVibrator;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    goto :goto_0

    #@22
    .line 739
    :catchall_0
    move-exception v0

    #@23
    monitor-exit v1

    #@24
    throw v0
.end method

.method public hasButtonUnderPad()Z
    .locals 1

    #@0
    .prologue
    .line 765
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    #@2
    return v0
.end method

.method public varargs hasKeys([I)[Z
    .locals 2
    .param p1, "keys"    # [I

    #@0
    .prologue
    .line 657
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Landroid/view/InputDevice;->mId:I

    #@6
    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManager;->deviceHasKeys(I[I)[Z

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public hasMicrophone()Z
    .locals 1

    #@0
    .prologue
    .line 756
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    #@2
    return v0
.end method

.method public isExternal()Z
    .locals 1

    #@0
    .prologue
    .line 591
    iget-boolean v0, p0, Landroid/view/InputDevice;->mIsExternal:Z

    #@2
    return v0
.end method

.method public isFullKeyboard()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 602
    iget v1, p0, Landroid/view/InputDevice;->mSources:I

    #@3
    and-int/lit16 v1, v1, 0x101

    #@5
    const/16 v2, 0x101

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 603
    iget v1, p0, Landroid/view/InputDevice;->mKeyboardType:I

    #@b
    const/4 v2, 0x2

    #@c
    if-ne v1, v2, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    .line 602
    :cond_0
    return v0
.end method

.method public isVirtual()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 579
    iget v1, p0, Landroid/view/InputDevice;->mId:I

    #@3
    if-gez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public supportsSource(I)Z
    .locals 1
    .param p1, "source"    # I

    #@0
    .prologue
    .line 631
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    #@2
    and-int/2addr v0, p1

    #@3
    if-ne v0, p1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 918
    .local v0, "description":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "Input Device "

    #@8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    iget v5, p0, Landroid/view/InputDevice;->mId:I

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    const-string/jumbo v5, ": "

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    iget-object v5, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    const-string/jumbo v5, "\n"

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 919
    const-string/jumbo v4, "  Descriptor: "

    #@28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    iget-object v5, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    const-string/jumbo v5, "\n"

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 920
    const-string/jumbo v4, "  Generation: "

    #@3b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    iget v5, p0, Landroid/view/InputDevice;->mGeneration:I

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    const-string/jumbo v5, "\n"

    #@48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 921
    const-string/jumbo v4, "  Location: "

    #@4e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    iget-boolean v4, p0, Landroid/view/InputDevice;->mIsExternal:Z

    #@54
    if-eqz v4, :cond_0

    #@56
    const-string/jumbo v4, "external"

    #@59
    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    const-string/jumbo v5, "\n"

    #@60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 923
    const-string/jumbo v4, "  Keyboard Type: "

    #@66
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    .line 924
    iget v4, p0, Landroid/view/InputDevice;->mKeyboardType:I

    #@6b
    packed-switch v4, :pswitch_data_0

    #@6e
    .line 935
    :goto_1
    const-string/jumbo v4, "\n"

    #@71
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    .line 937
    const-string/jumbo v4, "  Has Vibrator: "

    #@77
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    iget-boolean v5, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    #@7d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    const-string/jumbo v5, "\n"

    #@84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    .line 939
    const-string/jumbo v4, "  Has mic: "

    #@8a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v4

    #@8e
    iget-boolean v5, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    #@90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@93
    move-result-object v4

    #@94
    const-string/jumbo v5, "\n"

    #@97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    .line 941
    const-string/jumbo v4, "  Sources: 0x"

    #@9d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v4

    #@a1
    iget v5, p0, Landroid/view/InputDevice;->mSources:I

    #@a3
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@a6
    move-result-object v5

    #@a7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v4

    #@ab
    const-string/jumbo v5, " ("

    #@ae
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    .line 942
    const-string/jumbo v4, "keyboard"

    #@b4
    const/16 v5, 0x101

    #@b6
    invoke-direct {p0, v0, v5, v4}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    #@b9
    .line 943
    const-string/jumbo v4, "dpad"

    #@bc
    const/16 v5, 0x201

    #@be
    invoke-direct {p0, v0, v5, v4}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    #@c1
    .line 944
    const-string/jumbo v4, "touchscreen"

    #@c4
    const/16 v5, 0x1002

    #@c6
    invoke-direct {p0, v0, v5, v4}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    #@c9
    .line 945
    const-string/jumbo v4, "mouse"

    #@cc
    const/16 v5, 0x2002

    #@ce
    invoke-direct {p0, v0, v5, v4}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    #@d1
    .line 946
    const-string/jumbo v4, "stylus"

    #@d4
    const/16 v5, 0x4002

    #@d6
    invoke-direct {p0, v0, v5, v4}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    #@d9
    .line 947
    const-string/jumbo v4, "trackball"

    #@dc
    const v5, 0x10004

    #@df
    invoke-direct {p0, v0, v5, v4}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    #@e2
    .line 948
    const-string/jumbo v4, "touchpad"

    #@e5
    const v5, 0x100008

    #@e8
    invoke-direct {p0, v0, v5, v4}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    #@eb
    .line 949
    const-string/jumbo v4, "joystick"

    #@ee
    const v5, 0x1000010

    #@f1
    invoke-direct {p0, v0, v5, v4}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    #@f4
    .line 950
    const-string/jumbo v4, "gamepad"

    #@f7
    const/16 v5, 0x401

    #@f9
    invoke-direct {p0, v0, v5, v4}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    #@fc
    .line 951
    const-string/jumbo v4, " )\n"

    #@ff
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    .line 953
    iget-object v4, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    #@104
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@107
    move-result v2

    #@108
    .line 954
    .local v2, "numAxes":I
    const/4 v1, 0x0

    #@109
    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_1

    #@10b
    .line 955
    iget-object v4, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    #@10d
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@110
    move-result-object v3

    #@111
    check-cast v3, Landroid/view/InputDevice$MotionRange;

    #@113
    .line 956
    .local v3, "range":Landroid/view/InputDevice$MotionRange;
    const-string/jumbo v4, "    "

    #@116
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v4

    #@11a
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->-get0(Landroid/view/InputDevice$MotionRange;)I

    #@11d
    move-result v5

    #@11e
    invoke-static {v5}, Landroid/view/MotionEvent;->axisToString(I)Ljava/lang/String;

    #@121
    move-result-object v5

    #@122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    .line 957
    const-string/jumbo v4, ": source=0x"

    #@128
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v4

    #@12c
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->-get6(Landroid/view/InputDevice$MotionRange;)I

    #@12f
    move-result v5

    #@130
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@133
    move-result-object v5

    #@134
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    .line 958
    const-string/jumbo v4, " min="

    #@13a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v4

    #@13e
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->-get4(Landroid/view/InputDevice$MotionRange;)F

    #@141
    move-result v5

    #@142
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@145
    .line 959
    const-string/jumbo v4, " max="

    #@148
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v4

    #@14c
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->-get3(Landroid/view/InputDevice$MotionRange;)F

    #@14f
    move-result v5

    #@150
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@153
    .line 960
    const-string/jumbo v4, " flat="

    #@156
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v4

    #@15a
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->-get1(Landroid/view/InputDevice$MotionRange;)F

    #@15d
    move-result v5

    #@15e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@161
    .line 961
    const-string/jumbo v4, " fuzz="

    #@164
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v4

    #@168
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->-get2(Landroid/view/InputDevice$MotionRange;)F

    #@16b
    move-result v5

    #@16c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@16f
    .line 962
    const-string/jumbo v4, " resolution="

    #@172
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v4

    #@176
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->-get5(Landroid/view/InputDevice$MotionRange;)F

    #@179
    move-result v5

    #@17a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@17d
    .line 963
    const-string/jumbo v4, "\n"

    #@180
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    .line 954
    add-int/lit8 v1, v1, 0x1

    #@185
    goto :goto_2

    #@186
    .line 921
    .end local v1    # "i":I
    .end local v2    # "numAxes":I
    .end local v3    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_0
    const-string/jumbo v4, "built-in"

    #@189
    goto/16 :goto_0

    #@18b
    .line 926
    :pswitch_0
    const-string/jumbo v4, "none"

    #@18e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191
    goto/16 :goto_1

    #@193
    .line 929
    :pswitch_1
    const-string/jumbo v4, "non-alphabetic"

    #@196
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    goto/16 :goto_1

    #@19b
    .line 932
    :pswitch_2
    const-string/jumbo v4, "alphabetic"

    #@19e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    goto/16 :goto_1

    #@1a3
    .line 965
    .restart local v1    # "i":I
    .restart local v2    # "numAxes":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a6
    move-result-object v4

    #@1a7
    return-object v4

    #@1a8
    .line 924
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 881
    iget v3, p0, Landroid/view/InputDevice;->mId:I

    #@4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 882
    iget v3, p0, Landroid/view/InputDevice;->mGeneration:I

    #@9
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 883
    iget v3, p0, Landroid/view/InputDevice;->mControllerNumber:I

    #@e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 884
    iget-object v3, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    #@13
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 885
    iget v3, p0, Landroid/view/InputDevice;->mVendorId:I

    #@18
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 886
    iget v3, p0, Landroid/view/InputDevice;->mProductId:I

    #@1d
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 887
    iget-object v3, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    #@22
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@25
    .line 888
    iget-boolean v3, p0, Landroid/view/InputDevice;->mIsExternal:Z

    #@27
    if-eqz v3, :cond_0

    #@29
    move v3, v4

    #@2a
    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 889
    iget v3, p0, Landroid/view/InputDevice;->mSources:I

    #@2f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 890
    iget v3, p0, Landroid/view/InputDevice;->mKeyboardType:I

    #@34
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 891
    iget-object v3, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    #@39
    invoke-virtual {v3, p1, p2}, Landroid/view/KeyCharacterMap;->writeToParcel(Landroid/os/Parcel;I)V

    #@3c
    .line 892
    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    #@3e
    if-eqz v3, :cond_1

    #@40
    move v3, v4

    #@41
    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@44
    .line 893
    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    #@46
    if-eqz v3, :cond_2

    #@48
    move v3, v4

    #@49
    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4c
    .line 894
    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    #@4e
    if-eqz v3, :cond_3

    #@50
    :goto_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@53
    .line 896
    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    #@55
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@58
    move-result v1

    #@59
    .line 897
    .local v1, "numRanges":I
    const/4 v0, 0x0

    #@5a
    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_4

    #@5c
    .line 898
    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    #@5e
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@61
    move-result-object v2

    #@62
    check-cast v2, Landroid/view/InputDevice$MotionRange;

    #@64
    .line 899
    .local v2, "range":Landroid/view/InputDevice$MotionRange;
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-get0(Landroid/view/InputDevice$MotionRange;)I

    #@67
    move-result v3

    #@68
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@6b
    .line 900
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-get6(Landroid/view/InputDevice$MotionRange;)I

    #@6e
    move-result v3

    #@6f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@72
    .line 901
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-get4(Landroid/view/InputDevice$MotionRange;)F

    #@75
    move-result v3

    #@76
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    #@79
    .line 902
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-get3(Landroid/view/InputDevice$MotionRange;)F

    #@7c
    move-result v3

    #@7d
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    #@80
    .line 903
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-get1(Landroid/view/InputDevice$MotionRange;)F

    #@83
    move-result v3

    #@84
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    #@87
    .line 904
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-get2(Landroid/view/InputDevice$MotionRange;)F

    #@8a
    move-result v3

    #@8b
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    #@8e
    .line 905
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-get5(Landroid/view/InputDevice$MotionRange;)F

    #@91
    move-result v3

    #@92
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    #@95
    .line 897
    add-int/lit8 v0, v0, 0x1

    #@97
    goto :goto_4

    #@98
    .end local v0    # "i":I
    .end local v1    # "numRanges":I
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_0
    move v3, v5

    #@99
    .line 888
    goto :goto_0

    #@9a
    :cond_1
    move v3, v5

    #@9b
    .line 892
    goto :goto_1

    #@9c
    :cond_2
    move v3, v5

    #@9d
    .line 893
    goto :goto_2

    #@9e
    :cond_3
    move v4, v5

    #@9f
    .line 894
    goto :goto_3

    #@a0
    .line 907
    .restart local v0    # "i":I
    .restart local v1    # "numRanges":I
    :cond_4
    const/4 v3, -0x1

    #@a1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@a4
    .line 880
    return-void
.end method
