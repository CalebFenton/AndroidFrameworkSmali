.class final Lcom/android/server/input/PersistentDataStore$InputDeviceState;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/PersistentDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputDeviceState"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final CALIBRATION_NAME:[Ljava/lang/String;


# instance fields
.field private mCurrentKeyboardLayout:Ljava/lang/String;

.field private mKeyboardLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchCalibration:[Landroid/hardware/input/TouchCalibration;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const-class v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    move v0, v1

    #@b
    :goto_0
    sput-boolean v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->-assertionsDisabled:Z

    #@d
    .line 305
    const/4 v0, 0x6

    #@e
    new-array v0, v0, [Ljava/lang/String;

    #@10
    const-string/jumbo v3, "x_scale"

    #@13
    aput-object v3, v0, v1

    #@15
    .line 306
    const-string/jumbo v1, "x_ymix"

    #@18
    aput-object v1, v0, v2

    #@1a
    const-string/jumbo v1, "x_offset"

    #@1d
    const/4 v2, 0x2

    #@1e
    aput-object v1, v0, v2

    #@20
    const-string/jumbo v1, "y_xmix"

    #@23
    const/4 v2, 0x3

    #@24
    aput-object v1, v0, v2

    #@26
    const-string/jumbo v1, "y_scale"

    #@29
    const/4 v2, 0x4

    #@2a
    aput-object v1, v0, v2

    #@2c
    const-string/jumbo v1, "y_offset"

    #@2f
    const/4 v2, 0x5

    #@30
    aput-object v1, v0, v2

    #@32
    .line 305
    sput-object v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    #@34
    .line 304
    return-void

    #@35
    :cond_0
    move v0, v2

    #@36
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 308
    const/4 v0, 0x4

    #@4
    new-array v0, v0, [Landroid/hardware/input/TouchCalibration;

    #@6
    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    #@8
    .line 310
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@f
    .line 304
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/PersistentDataStore$InputDeviceState;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;-><init>()V

    #@3
    return-void
.end method

.method private static stringToSurfaceRotation(Ljava/lang/String;)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 543
    const-string/jumbo v0, "0"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 544
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 546
    :cond_0
    const-string/jumbo v0, "90"

    #@e
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 547
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 549
    :cond_1
    const-string/jumbo v0, "180"

    #@19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 550
    const/4 v0, 0x2

    #@20
    return v0

    #@21
    .line 552
    :cond_2
    const-string/jumbo v0, "270"

    #@24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 553
    const/4 v0, 0x3

    #@2b
    return v0

    #@2c
    .line 555
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2e
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v2, "Unsupported surface rotation string \'"

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    const-string/jumbo v2, "\'"

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v0
.end method

.method private static surfaceRotationToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "surfaceRotation"    # I

    #@0
    .prologue
    .line 533
    packed-switch p0, :pswitch_data_0

    #@3
    .line 539
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unsupported surface rotation value"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 534
    :pswitch_0
    const-string/jumbo v0, "0"

    #@20
    return-object v0

    #@21
    .line 535
    :pswitch_1
    const-string/jumbo v0, "90"

    #@24
    return-object v0

    #@25
    .line 536
    :pswitch_2
    const-string/jumbo v0, "180"

    #@28
    return-object v0

    #@29
    .line 537
    :pswitch_3
    const-string/jumbo v0, "270"

    #@2c
    return-object v0

    #@2d
    .line 533
    nop

    #@2e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateCurrentKeyboardLayoutIfRemoved(Ljava/lang/String;I)V
    .locals 2
    .param p1, "removedKeyboardLayout"    # Ljava/lang/String;
    .param p2, "removedIndex"    # I

    #@0
    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@2
    invoke-static {v1, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 379
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_2

    #@10
    .line 380
    move v0, p2

    #@11
    .line 381
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v1

    #@17
    if-ne v0, v1, :cond_0

    #@19
    .line 382
    const/4 v0, 0x0

    #@1a
    .line 384
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Ljava/lang/String;

    #@22
    iput-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@24
    .line 377
    .end local v0    # "index":I
    :cond_1
    :goto_0
    return-void

    #@25
    .line 386
    :cond_2
    const/4 v1, 0x0

    #@26
    iput-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@28
    goto :goto_0
.end method


# virtual methods
.method public addKeyboardLayout(Ljava/lang/String;)Z
    .locals 3
    .param p1, "keyboardLayout"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 355
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@3
    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@6
    move-result v0

    #@7
    .line 356
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@9
    .line 357
    return v2

    #@a
    .line 359
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@c
    neg-int v2, v0

    #@d
    add-int/lit8 v2, v2, -0x1

    #@f
    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@12
    .line 360
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@14
    if-nez v1, :cond_1

    #@16
    .line 361
    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@18
    .line 363
    :cond_1
    const/4 v1, 0x1

    #@19
    return v1
.end method

.method public getCurrentKeyboardLayout()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getKeyboardLayouts()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 349
    const-class v0, Ljava/lang/String;

    #@a
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, [Ljava/lang/String;

    #@10
    return-object v0

    #@11
    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@13
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v1

    #@19
    new-array v1, v1, [Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, [Ljava/lang/String;

    #@21
    return-object v0
.end method

.method public getTouchCalibration(I)Landroid/hardware/input/TouchCalibration;
    .locals 3
    .param p1, "surfaceRotation"    # I

    #@0
    .prologue
    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    #@2
    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    return-object v1

    #@5
    .line 315
    :catch_0
    move-exception v0

    #@6
    .line 316
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v1, "InputManager"

    #@9
    const-string/jumbo v2, "Cannot get touch calibration."

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    .line 317
    const/4 v1, 0x0

    #@10
    return-object v1
.end method

.method public loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 21
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 423
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v15

    #@4
    .line 424
    .local v15, "outerDepth":I
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    #@6
    invoke-static {v0, v15}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_c

    #@c
    .line 425
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, "keyboard-layout"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_4

    #@19
    .line 426
    const-string/jumbo v1, "descriptor"

    #@1c
    const/4 v2, 0x0

    #@1d
    move-object/from16 v0, p1

    #@1f
    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v10

    #@23
    .line 427
    .local v10, "descriptor":Ljava/lang/String;
    if-nez v10, :cond_1

    #@25
    .line 428
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@27
    .line 429
    const-string/jumbo v2, "Missing descriptor attribute on keyboard-layout."

    #@2a
    .line 428
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1

    #@2e
    .line 431
    :cond_1
    const-string/jumbo v1, "current"

    #@31
    const/4 v2, 0x0

    #@32
    move-object/from16 v0, p1

    #@34
    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v8

    #@38
    .line 432
    .local v8, "current":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3a
    iget-object v1, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_2

    #@42
    .line 433
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@44
    .line 434
    const-string/jumbo v2, "Found duplicate keyboard layout."

    #@47
    .line 433
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v1

    #@4b
    .line 437
    :cond_2
    move-object/from16 v0, p0

    #@4d
    iget-object v1, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@52
    .line 438
    if-eqz v8, :cond_0

    #@54
    const-string/jumbo v1, "true"

    #@57
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_0

    #@5d
    .line 439
    move-object/from16 v0, p0

    #@5f
    iget-object v1, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@61
    if-eqz v1, :cond_3

    #@63
    .line 440
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@65
    .line 441
    const-string/jumbo v2, "Found multiple current keyboard layouts."

    #@68
    .line 440
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v1

    #@6c
    .line 443
    :cond_3
    move-object/from16 v0, p0

    #@6e
    iput-object v10, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@70
    goto :goto_0

    #@71
    .line 445
    .end local v8    # "current":Ljava/lang/String;
    .end local v10    # "descriptor":Ljava/lang/String;
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    const-string/jumbo v2, "calibration"

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7b
    move-result v1

    #@7c
    if-eqz v1, :cond_0

    #@7e
    .line 446
    const-string/jumbo v1, "format"

    #@81
    const/4 v2, 0x0

    #@82
    move-object/from16 v0, p1

    #@84
    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@87
    move-result-object v12

    #@88
    .line 447
    .local v12, "format":Ljava/lang/String;
    const-string/jumbo v1, "rotation"

    #@8b
    const/4 v2, 0x0

    #@8c
    move-object/from16 v0, p1

    #@8e
    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@91
    move-result-object v17

    #@92
    .line 448
    .local v17, "rotation":Ljava/lang/String;
    const/16 v16, -0x1

    #@94
    .line 450
    .local v16, "r":I
    if-nez v12, :cond_5

    #@96
    .line 451
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@98
    .line 452
    const-string/jumbo v2, "Missing format attribute on calibration."

    #@9b
    .line 451
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@9e
    throw v1

    #@9f
    .line 454
    :cond_5
    const-string/jumbo v1, "affine"

    #@a2
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a5
    move-result v1

    #@a6
    if-nez v1, :cond_6

    #@a8
    .line 455
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@aa
    .line 456
    const-string/jumbo v2, "Unsupported format for calibration."

    #@ad
    .line 455
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@b0
    throw v1

    #@b1
    .line 458
    :cond_6
    if-eqz v17, :cond_7

    #@b3
    .line 460
    :try_start_0
    invoke-static/range {v17 .. v17}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->stringToSurfaceRotation(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@b6
    move-result v16

    #@b7
    .line 467
    :cond_7
    sget-object v1, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    #@b9
    invoke-virtual {v1}, Landroid/hardware/input/TouchCalibration;->getAffineTransform()[F

    #@bc
    move-result-object v14

    #@bd
    .line 468
    .local v14, "matrix":[F
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@c0
    move-result v9

    #@c1
    .line 469
    .local v9, "depth":I
    :cond_8
    :goto_1
    move-object/from16 v0, p1

    #@c3
    invoke-static {v0, v9}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@c6
    move-result v1

    #@c7
    if-eqz v1, :cond_a

    #@c9
    .line 470
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@cc
    move-result-object v1

    #@cd
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@d0
    move-result-object v18

    #@d1
    .line 471
    .local v18, "tag":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    #@d4
    move-result-object v19

    #@d5
    .line 473
    .local v19, "value":Ljava/lang/String;
    const/4 v13, 0x0

    #@d6
    .local v13, "i":I
    :goto_2
    array-length v1, v14

    #@d7
    if-ge v13, v1, :cond_8

    #@d9
    sget-object v1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    #@db
    array-length v1, v1

    #@dc
    if-ge v13, v1, :cond_8

    #@de
    .line 474
    sget-object v1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    #@e0
    aget-object v1, v1, v13

    #@e2
    move-object/from16 v0, v18

    #@e4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e7
    move-result v1

    #@e8
    if-eqz v1, :cond_9

    #@ea
    .line 475
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@ed
    move-result v1

    #@ee
    aput v1, v14, v13

    #@f0
    goto :goto_1

    #@f1
    .line 461
    .end local v9    # "depth":I
    .end local v13    # "i":I
    .end local v14    # "matrix":[F
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :catch_0
    move-exception v11

    #@f2
    .line 462
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@f4
    .line 463
    const-string/jumbo v2, "Unsupported rotation for calibration."

    #@f7
    .line 462
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@fa
    throw v1

    #@fb
    .line 473
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "depth":I
    .restart local v13    # "i":I
    .restart local v14    # "matrix":[F
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "value":Ljava/lang/String;
    :cond_9
    add-int/lit8 v13, v13, 0x1

    #@fd
    goto :goto_2

    #@fe
    .line 481
    .end local v13    # "i":I
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_a
    const/4 v1, -0x1

    #@ff
    move/from16 v0, v16

    #@101
    if-ne v0, v1, :cond_b

    #@103
    .line 483
    const/16 v16, 0x0

    #@105
    :goto_3
    move-object/from16 v0, p0

    #@107
    iget-object v1, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    #@109
    array-length v1, v1

    #@10a
    move/from16 v0, v16

    #@10c
    if-ge v0, v1, :cond_0

    #@10e
    .line 484
    move-object/from16 v0, p0

    #@110
    iget-object v0, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    #@112
    move-object/from16 v20, v0

    #@114
    new-instance v1, Landroid/hardware/input/TouchCalibration;

    #@116
    const/4 v2, 0x0

    #@117
    aget v2, v14, v2

    #@119
    .line 485
    const/4 v3, 0x1

    #@11a
    aget v3, v14, v3

    #@11c
    const/4 v4, 0x2

    #@11d
    aget v4, v14, v4

    #@11f
    const/4 v5, 0x3

    #@120
    aget v5, v14, v5

    #@122
    const/4 v6, 0x4

    #@123
    aget v6, v14, v6

    #@125
    const/4 v7, 0x5

    #@126
    aget v7, v14, v7

    #@128
    .line 484
    invoke-direct/range {v1 .. v7}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    #@12b
    aput-object v1, v20, v16

    #@12d
    .line 483
    add-int/lit8 v16, v16, 0x1

    #@12f
    goto :goto_3

    #@130
    .line 488
    :cond_b
    move-object/from16 v0, p0

    #@132
    iget-object v0, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    #@134
    move-object/from16 v20, v0

    #@136
    new-instance v1, Landroid/hardware/input/TouchCalibration;

    #@138
    const/4 v2, 0x0

    #@139
    aget v2, v14, v2

    #@13b
    .line 489
    const/4 v3, 0x1

    #@13c
    aget v3, v14, v3

    #@13e
    const/4 v4, 0x2

    #@13f
    aget v4, v14, v4

    #@141
    const/4 v5, 0x3

    #@142
    aget v5, v14, v5

    #@144
    const/4 v6, 0x4

    #@145
    aget v6, v14, v6

    #@147
    const/4 v7, 0x5

    #@148
    aget v7, v14, v7

    #@14a
    .line 488
    invoke-direct/range {v1 .. v7}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    #@14d
    aput-object v1, v20, v16

    #@14f
    goto/16 :goto_0

    #@151
    .line 495
    .end local v9    # "depth":I
    .end local v12    # "format":Ljava/lang/String;
    .end local v14    # "matrix":[F
    .end local v16    # "r":I
    .end local v17    # "rotation":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    #@153
    iget-object v1, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@155
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@158
    .line 499
    move-object/from16 v0, p0

    #@15a
    iget-object v1, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@15c
    if-nez v1, :cond_d

    #@15e
    move-object/from16 v0, p0

    #@160
    iget-object v1, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@162
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@165
    move-result v1

    #@166
    if-eqz v1, :cond_e

    #@168
    .line 422
    :cond_d
    :goto_4
    return-void

    #@169
    .line 500
    :cond_e
    move-object/from16 v0, p0

    #@16b
    iget-object v1, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@16d
    const/4 v2, 0x0

    #@16e
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@171
    move-result-object v1

    #@172
    check-cast v1, Ljava/lang/String;

    #@174
    move-object/from16 v0, p0

    #@176
    iput-object v1, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@178
    goto :goto_4
.end method

.method public removeKeyboardLayout(Ljava/lang/String;)Z
    .locals 3
    .param p1, "keyboardLayout"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 367
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@3
    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@6
    move-result v0

    #@7
    .line 368
    .local v0, "index":I
    if-gez v0, :cond_0

    #@9
    .line 369
    return v2

    #@a
    .line 371
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@f
    .line 372
    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->updateCurrentKeyboardLayoutIfRemoved(Ljava/lang/String;I)V

    #@12
    .line 373
    const/4 v1, 0x1

    #@13
    return v1
.end method

.method public removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 408
    .local p1, "availableKeyboardLayouts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    .line 409
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    .local v1, "i":I
    move v2, v1

    #@8
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    #@a
    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_1

    #@c
    .line 410
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Ljava/lang/String;

    #@14
    .line 411
    .local v3, "keyboardLayout":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@17
    move-result v4

    #@18
    if-nez v4, :cond_0

    #@1a
    .line 412
    const-string/jumbo v4, "InputManager"

    #@1d
    new-instance v5, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v6, "Removing uninstalled keyboard layout "

    #@25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 413
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@39
    .line 414
    invoke-direct {p0, v3, v1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->updateCurrentKeyboardLayoutIfRemoved(Ljava/lang/String;I)V

    #@3c
    .line 415
    const/4 v0, 0x1

    #@3d
    :cond_0
    move v2, v1

    #@3e
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    #@3f
    .line 418
    .end local v2    # "i":I
    .end local v3    # "keyboardLayout":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_1
    return v0
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 9
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 505
    iget-object v6, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@3
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v3

    #@7
    .local v3, "layout$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v6

    #@b
    if-eqz v6, :cond_1

    #@d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Ljava/lang/String;

    #@13
    .line 506
    .local v2, "layout":Ljava/lang/String;
    const-string/jumbo v6, "keyboard-layout"

    #@16
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@19
    .line 507
    const-string/jumbo v6, "descriptor"

    #@1c
    invoke-interface {p1, v8, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1f
    .line 508
    iget-object v6, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@21
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_0

    #@27
    .line 509
    const-string/jumbo v6, "current"

    #@2a
    const-string/jumbo v7, "true"

    #@2d
    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@30
    .line 511
    :cond_0
    const-string/jumbo v6, "keyboard-layout"

    #@33
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@36
    goto :goto_0

    #@37
    .line 514
    .end local v2    # "layout":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    #@38
    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    #@3a
    array-length v6, v6

    #@3b
    if-ge v0, v6, :cond_4

    #@3d
    .line 515
    iget-object v6, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    #@3f
    aget-object v6, v6, v0

    #@41
    if-eqz v6, :cond_3

    #@43
    .line 516
    invoke-static {v0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->surfaceRotationToString(I)Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    .line 517
    .local v4, "rotation":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    #@49
    aget-object v6, v6, v0

    #@4b
    invoke-virtual {v6}, Landroid/hardware/input/TouchCalibration;->getAffineTransform()[F

    #@4e
    move-result-object v5

    #@4f
    .line 519
    .local v5, "transform":[F
    const-string/jumbo v6, "calibration"

    #@52
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@55
    .line 520
    const-string/jumbo v6, "format"

    #@58
    const-string/jumbo v7, "affine"

    #@5b
    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5e
    .line 521
    const-string/jumbo v6, "rotation"

    #@61
    invoke-interface {p1, v8, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@64
    .line 522
    const/4 v1, 0x0

    #@65
    .local v1, "j":I
    :goto_2
    array-length v6, v5

    #@66
    if-ge v1, v6, :cond_2

    #@68
    sget-object v6, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    #@6a
    array-length v6, v6

    #@6b
    if-ge v1, v6, :cond_2

    #@6d
    .line 523
    sget-object v6, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    #@6f
    aget-object v6, v6, v1

    #@71
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@74
    .line 524
    aget v6, v5, v1

    #@76
    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@79
    move-result-object v6

    #@7a
    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7d
    .line 525
    sget-object v6, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    #@7f
    aget-object v6, v6, v1

    #@81
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@84
    .line 522
    add-int/lit8 v1, v1, 0x1

    #@86
    goto :goto_2

    #@87
    .line 527
    :cond_2
    const-string/jumbo v6, "calibration"

    #@8a
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8d
    .line 514
    .end local v1    # "j":I
    .end local v4    # "rotation":Ljava/lang/String;
    .end local v5    # "transform":[F
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@8f
    goto :goto_1

    #@90
    .line 504
    :cond_4
    return-void
.end method

.method public setCurrentKeyboardLayout(Ljava/lang/String;)Z
    .locals 1
    .param p1, "keyboardLayout"    # Ljava/lang/String;

    #@0
    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 340
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 342
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->addKeyboardLayout(Ljava/lang/String;)Z

    #@d
    .line 343
    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@f
    .line 344
    const/4 v0, 0x1

    #@10
    return v0
.end method

.method public setTouchCalibration(ILandroid/hardware/input/TouchCalibration;)Z
    .locals 4
    .param p1, "surfaceRotation"    # I
    .param p2, "calibration"    # Landroid/hardware/input/TouchCalibration;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    #@3
    aget-object v1, v1, p1

    #@5
    invoke-virtual {p2, v1}, Landroid/hardware/input/TouchCalibration;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 324
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    #@d
    aput-object p2, v1, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 325
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 327
    :cond_0
    return v3

    #@12
    .line 328
    :catch_0
    move-exception v0

    #@13
    .line 329
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v1, "InputManager"

    #@16
    const-string/jumbo v2, "Cannot set touch calibration."

    #@19
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    .line 330
    return v3
.end method

.method public switchKeyboardLayout(I)Z
    .locals 6
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 392
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v1

    #@8
    .line 393
    .local v1, "size":I
    const/4 v4, 0x2

    #@9
    if-ge v1, v4, :cond_0

    #@b
    .line 394
    return v2

    #@c
    .line 396
    :cond_0
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@e
    iget-object v5, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@10
    invoke-static {v4, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@13
    move-result v0

    #@14
    .line 397
    .local v0, "index":I
    sget-boolean v4, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->-assertionsDisabled:Z

    #@16
    if-nez v4, :cond_2

    #@18
    if-ltz v0, :cond_1

    #@1a
    move v2, v3

    #@1b
    :cond_1
    if-nez v2, :cond_2

    #@1d
    new-instance v2, Ljava/lang/AssertionError;

    #@1f
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@22
    throw v2

    #@23
    .line 398
    :cond_2
    if-lez p1, :cond_3

    #@25
    .line 399
    add-int/lit8 v2, v0, 0x1

    #@27
    rem-int v0, v2, v1

    #@29
    .line 403
    :goto_0
    iget-object v2, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Ljava/lang/String;

    #@31
    iput-object v2, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@33
    .line 404
    return v3

    #@34
    .line 401
    :cond_3
    add-int v2, v0, v1

    #@36
    add-int/lit8 v2, v2, -0x1

    #@38
    rem-int v0, v2, v1

    #@3a
    goto :goto_0
.end method
