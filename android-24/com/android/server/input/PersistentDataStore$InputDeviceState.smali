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
.field private static final CALIBRATION_NAME:[Ljava/lang/String;


# instance fields
.field private mCurrentKeyboardLayout:Ljava/lang/String;

.field private mKeyboardLayouts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

.field private mUnassociatedKeyboardLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/input/PersistentDataStore$InputDeviceState;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 342
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "x_scale"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 343
    const-string/jumbo v1, "x_ymix"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    const-string/jumbo v1, "x_offset"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    const-string/jumbo v1, "y_xmix"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    const-string/jumbo v1, "y_scale"

    #@1e
    const/4 v2, 0x4

    #@1f
    aput-object v1, v0, v2

    #@21
    const-string/jumbo v1, "y_offset"

    #@24
    const/4 v2, 0x5

    #@25
    aput-object v1, v0, v2

    #@27
    .line 342
    sput-object v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    #@29
    .line 341
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 345
    const/4 v0, 0x4

    #@4
    new-array v0, v0, [Landroid/hardware/input/TouchCalibration;

    #@6
    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    #@8
    .line 348
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mUnassociatedKeyboardLayouts:Ljava/util/List;

    #@f
    .line 349
    new-instance v0, Landroid/util/ArrayMap;

    #@11
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Landroid/util/ArrayMap;

    #@16
    .line 341
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

.method private dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v2

    #@9
    const-string/jumbo v3, "CurrentKeyboardLayout="

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    const-string/jumbo v3, "UnassociatedKeyboardLayouts="

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mUnassociatedKeyboardLayouts:Ljava/util/List;

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a
    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    const-string/jumbo v3, "TouchCalibration="

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    #@4c
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5b
    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    const-string/jumbo v3, "Subtype to Layout Mappings:"

    #@67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@72
    .line 619
    iget-object v2, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Landroid/util/ArrayMap;

    #@74
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@77
    move-result v0

    #@78
    .line 620
    .local v0, "N":I
    if-eqz v0, :cond_0

    #@7a
    .line 621
    const/4 v1, 0x0

    #@7b
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@7d
    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v2

    #@86
    const-string/jumbo v3, "  "

    #@89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v2

    #@8d
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Landroid/util/ArrayMap;

    #@8f
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@92
    move-result-object v3

    #@93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    const-string/jumbo v3, ": "

    #@9a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v3

    #@9e
    .line 623
    iget-object v2, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Landroid/util/ArrayMap;

    #@a0
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@a3
    move-result-object v2

    #@a4
    check-cast v2, Ljava/lang/String;

    #@a6
    .line 622
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v2

    #@aa
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v2

    #@ae
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b1
    .line 621
    add-int/lit8 v1, v1, 0x1

    #@b3
    goto :goto_0

    #@b4
    .line 626
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v2

    #@bd
    const-string/jumbo v3, "  <none>"

    #@c0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v2

    #@c4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v2

    #@c8
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cb
    .line 614
    :cond_1
    return-void
.end method

.method private static stringToSurfaceRotation(Ljava/lang/String;)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 641
    const-string/jumbo v0, "0"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 642
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 644
    :cond_0
    const-string/jumbo v0, "90"

    #@e
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 645
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 647
    :cond_1
    const-string/jumbo v0, "180"

    #@19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 648
    const/4 v0, 0x2

    #@20
    return v0

    #@21
    .line 650
    :cond_2
    const-string/jumbo v0, "270"

    #@24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 651
    const/4 v0, 0x3

    #@2b
    return v0

    #@2c
    .line 653
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
    .line 631
    packed-switch p0, :pswitch_data_0

    #@3
    .line 637
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
    .line 632
    :pswitch_0
    const-string/jumbo v0, "0"

    #@20
    return-object v0

    #@21
    .line 633
    :pswitch_1
    const-string/jumbo v0, "90"

    #@24
    return-object v0

    #@25
    .line 634
    :pswitch_2
    const-string/jumbo v0, "180"

    #@28
    return-object v0

    #@29
    .line 635
    :pswitch_3
    const-string/jumbo v0, "270"

    #@2c
    return-object v0

    #@2d
    .line 631
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
    .line 434
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@2
    invoke-static {v1, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 435
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mUnassociatedKeyboardLayouts:Ljava/util/List;

    #@a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_2

    #@10
    .line 436
    move v0, p2

    #@11
    .line 437
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mUnassociatedKeyboardLayouts:Ljava/util/List;

    #@13
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@16
    move-result v1

    #@17
    if-ne p2, v1, :cond_0

    #@19
    .line 438
    const/4 v0, 0x0

    #@1a
    .line 440
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mUnassociatedKeyboardLayouts:Ljava/util/List;

    #@1c
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Ljava/lang/String;

    #@22
    iput-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@24
    .line 433
    .end local v0    # "index":I
    :cond_1
    :goto_0
    return-void

    #@25
    .line 442
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
    .line 411
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mUnassociatedKeyboardLayouts:Ljava/util/List;

    #@3
    .line 410
    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@6
    move-result v0

    #@7
    .line 412
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@9
    .line 413
    return v2

    #@a
    .line 415
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mUnassociatedKeyboardLayouts:Ljava/util/List;

    #@c
    neg-int v2, v0

    #@d
    add-int/lit8 v2, v2, -0x1

    #@f
    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@12
    .line 416
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@14
    if-nez v1, :cond_1

    #@16
    .line 417
    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@18
    .line 419
    :cond_1
    const/4 v1, 0x1

    #@19
    return v1
.end method

.method public getCurrentKeyboardLayout()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getKeyboardLayout(Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)Ljava/lang/String;
    .locals 1
    .param p1, "handle"    # Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    #@0
    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getKeyboardLayouts()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mUnassociatedKeyboardLayouts:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 389
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
    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mUnassociatedKeyboardLayouts:Ljava/util/List;

    #@13
    .line 392
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mUnassociatedKeyboardLayouts:Ljava/util/List;

    #@15
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@18
    move-result v1

    #@19
    new-array v1, v1, [Ljava/lang/String;

    #@1b
    .line 391
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

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
    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    #@2
    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    return-object v1

    #@5
    .line 354
    :catch_0
    move-exception v0

    #@6
    .line 355
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v1, "InputManager"

    #@9
    const-string/jumbo v2, "Cannot get touch calibration."

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    .line 356
    const/4 v1, 0x0

    #@10
    return-object v1
.end method

.method public loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 25
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 472
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v19

    #@4
    .line 473
    .local v19, "outerDepth":I
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    #@6
    move/from16 v1, v19

    #@8
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_12

    #@e
    .line 474
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, "keyboard-layout"

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_a

    #@1b
    .line 475
    const-string/jumbo v2, "descriptor"

    #@1e
    const/4 v3, 0x0

    #@1f
    move-object/from16 v0, p1

    #@21
    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v11

    #@25
    .line 476
    .local v11, "descriptor":Ljava/lang/String;
    if-nez v11, :cond_1

    #@27
    .line 477
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@29
    .line 478
    const-string/jumbo v3, "Missing descriptor attribute on keyboard-layout."

    #@2c
    .line 477
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2

    #@30
    .line 481
    :cond_1
    const-string/jumbo v2, "current"

    #@33
    const/4 v3, 0x0

    #@34
    move-object/from16 v0, p1

    #@36
    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v9

    #@3a
    .line 482
    .local v9, "current":Ljava/lang/String;
    if-eqz v9, :cond_3

    #@3c
    const-string/jumbo v2, "true"

    #@3f
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v2

    #@43
    if-eqz v2, :cond_3

    #@45
    .line 483
    move-object/from16 v0, p0

    #@47
    iget-object v2, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@49
    if-eqz v2, :cond_2

    #@4b
    .line 484
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@4d
    .line 485
    const-string/jumbo v3, "Found multiple current keyboard layouts."

    #@50
    .line 484
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@53
    throw v2

    #@54
    .line 487
    :cond_2
    move-object/from16 v0, p0

    #@56
    iput-object v11, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@58
    .line 490
    :cond_3
    const-string/jumbo v2, "input-method-id"

    #@5b
    const/4 v3, 0x0

    #@5c
    move-object/from16 v0, p1

    #@5e
    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@61
    move-result-object v16

    #@62
    .line 492
    .local v16, "inputMethodId":Ljava/lang/String;
    const-string/jumbo v2, "input-method-subtype-id"

    #@65
    const/4 v3, 0x0

    #@66
    move-object/from16 v0, p1

    #@68
    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6b
    move-result-object v17

    #@6c
    .line 493
    .local v17, "inputMethodSubtypeId":Ljava/lang/String;
    if-nez v16, :cond_5

    #@6e
    if-eqz v17, :cond_5

    #@70
    .line 495
    :cond_4
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@72
    .line 496
    const-string/jumbo v3, "Found an incomplete input method description"

    #@75
    .line 495
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@78
    throw v2

    #@79
    .line 494
    :cond_5
    if-eqz v16, :cond_6

    #@7b
    if-eqz v17, :cond_4

    #@7d
    .line 499
    :cond_6
    if-eqz v17, :cond_8

    #@7f
    .line 500
    new-instance v14, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    #@81
    .line 501
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@84
    move-result v2

    #@85
    .line 500
    move-object/from16 v0, v16

    #@87
    invoke-direct {v14, v0, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;-><init>(Ljava/lang/String;I)V

    #@8a
    .line 502
    .local v14, "handle":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    move-object/from16 v0, p0

    #@8c
    iget-object v2, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Landroid/util/ArrayMap;

    #@8e
    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@91
    move-result v2

    #@92
    if-eqz v2, :cond_7

    #@94
    .line 503
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@96
    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v4, "Found duplicate subtype to keyboard layout mapping: "

    #@9e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v3

    #@a2
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v3

    #@a6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v3

    #@aa
    .line 503
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@ad
    throw v2

    #@ae
    .line 507
    :cond_7
    move-object/from16 v0, p0

    #@b0
    iget-object v2, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Landroid/util/ArrayMap;

    #@b2
    invoke-virtual {v2, v14, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b5
    goto/16 :goto_0

    #@b7
    .line 509
    .end local v14    # "handle":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    :cond_8
    move-object/from16 v0, p0

    #@b9
    iget-object v2, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mUnassociatedKeyboardLayouts:Ljava/util/List;

    #@bb
    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@be
    move-result v2

    #@bf
    if-eqz v2, :cond_9

    #@c1
    .line 510
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@c3
    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    #@c5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c8
    const-string/jumbo v4, "Found duplicate unassociated keyboard layout: "

    #@cb
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v3

    #@cf
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v3

    #@d3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v3

    #@d7
    .line 510
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@da
    throw v2

    #@db
    .line 513
    :cond_9
    move-object/from16 v0, p0

    #@dd
    iget-object v2, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mUnassociatedKeyboardLayouts:Ljava/util/List;

    #@df
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e2
    goto/16 :goto_0

    #@e4
    .line 515
    .end local v9    # "current":Ljava/lang/String;
    .end local v11    # "descriptor":Ljava/lang/String;
    .end local v16    # "inputMethodId":Ljava/lang/String;
    .end local v17    # "inputMethodSubtypeId":Ljava/lang/String;
    :cond_a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@e7
    move-result-object v2

    #@e8
    const-string/jumbo v3, "calibration"

    #@eb
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ee
    move-result v2

    #@ef
    if-eqz v2, :cond_0

    #@f1
    .line 516
    const-string/jumbo v2, "format"

    #@f4
    const/4 v3, 0x0

    #@f5
    move-object/from16 v0, p1

    #@f7
    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@fa
    move-result-object v13

    #@fb
    .line 517
    .local v13, "format":Ljava/lang/String;
    const-string/jumbo v2, "rotation"

    #@fe
    const/4 v3, 0x0

    #@ff
    move-object/from16 v0, p1

    #@101
    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@104
    move-result-object v21

    #@105
    .line 518
    .local v21, "rotation":Ljava/lang/String;
    const/16 v20, -0x1

    #@107
    .line 520
    .local v20, "r":I
    if-nez v13, :cond_b

    #@109
    .line 521
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@10b
    .line 522
    const-string/jumbo v3, "Missing format attribute on calibration."

    #@10e
    .line 521
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@111
    throw v2

    #@112
    .line 524
    :cond_b
    const-string/jumbo v2, "affine"

    #@115
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@118
    move-result v2

    #@119
    if-nez v2, :cond_c

    #@11b
    .line 525
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@11d
    .line 526
    const-string/jumbo v3, "Unsupported format for calibration."

    #@120
    .line 525
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@123
    throw v2

    #@124
    .line 528
    :cond_c
    if-eqz v21, :cond_d

    #@126
    .line 530
    :try_start_0
    invoke-static/range {v21 .. v21}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->stringToSurfaceRotation(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@129
    move-result v20

    #@12a
    .line 537
    :cond_d
    sget-object v2, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    #@12c
    invoke-virtual {v2}, Landroid/hardware/input/TouchCalibration;->getAffineTransform()[F

    #@12f
    move-result-object v18

    #@130
    .line 538
    .local v18, "matrix":[F
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@133
    move-result v10

    #@134
    .line 539
    .local v10, "depth":I
    :cond_e
    :goto_1
    move-object/from16 v0, p1

    #@136
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@139
    move-result v2

    #@13a
    if-eqz v2, :cond_10

    #@13c
    .line 540
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@13f
    move-result-object v2

    #@140
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@143
    move-result-object v22

    #@144
    .line 541
    .local v22, "tag":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    #@147
    move-result-object v23

    #@148
    .line 543
    .local v23, "value":Ljava/lang/String;
    const/4 v15, 0x0

    #@149
    .local v15, "i":I
    :goto_2
    move-object/from16 v0, v18

    #@14b
    array-length v2, v0

    #@14c
    if-ge v15, v2, :cond_e

    #@14e
    sget-object v2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    #@150
    array-length v2, v2

    #@151
    if-ge v15, v2, :cond_e

    #@153
    .line 544
    sget-object v2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    #@155
    aget-object v2, v2, v15

    #@157
    move-object/from16 v0, v22

    #@159
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15c
    move-result v2

    #@15d
    if-eqz v2, :cond_f

    #@15f
    .line 545
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@162
    move-result v2

    #@163
    aput v2, v18, v15

    #@165
    goto :goto_1

    #@166
    .line 531
    .end local v10    # "depth":I
    .end local v15    # "i":I
    .end local v18    # "matrix":[F
    .end local v22    # "tag":Ljava/lang/String;
    .end local v23    # "value":Ljava/lang/String;
    :catch_0
    move-exception v12

    #@167
    .line 532
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@169
    .line 533
    const-string/jumbo v3, "Unsupported rotation for calibration."

    #@16c
    .line 532
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@16f
    throw v2

    #@170
    .line 543
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v10    # "depth":I
    .restart local v15    # "i":I
    .restart local v18    # "matrix":[F
    .restart local v22    # "tag":Ljava/lang/String;
    .restart local v23    # "value":Ljava/lang/String;
    :cond_f
    add-int/lit8 v15, v15, 0x1

    #@172
    goto :goto_2

    #@173
    .line 551
    .end local v15    # "i":I
    .end local v22    # "tag":Ljava/lang/String;
    .end local v23    # "value":Ljava/lang/String;
    :cond_10
    const/4 v2, -0x1

    #@174
    move/from16 v0, v20

    #@176
    if-ne v0, v2, :cond_11

    #@178
    .line 553
    const/16 v20, 0x0

    #@17a
    :goto_3
    move-object/from16 v0, p0

    #@17c
    iget-object v2, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    #@17e
    array-length v2, v2

    #@17f
    move/from16 v0, v20

    #@181
    if-ge v0, v2, :cond_0

    #@183
    .line 554
    move-object/from16 v0, p0

    #@185
    iget-object v0, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    #@187
    move-object/from16 v24, v0

    #@189
    new-instance v2, Landroid/hardware/input/TouchCalibration;

    #@18b
    const/4 v3, 0x0

    #@18c
    aget v3, v18, v3

    #@18e
    .line 555
    const/4 v4, 0x1

    #@18f
    aget v4, v18, v4

    #@191
    const/4 v5, 0x2

    #@192
    aget v5, v18, v5

    #@194
    const/4 v6, 0x3

    #@195
    aget v6, v18, v6

    #@197
    const/4 v7, 0x4

    #@198
    aget v7, v18, v7

    #@19a
    const/4 v8, 0x5

    #@19b
    aget v8, v18, v8

    #@19d
    .line 554
    invoke-direct/range {v2 .. v8}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    #@1a0
    aput-object v2, v24, v20

    #@1a2
    .line 553
    add-int/lit8 v20, v20, 0x1

    #@1a4
    goto :goto_3

    #@1a5
    .line 558
    :cond_11
    move-object/from16 v0, p0

    #@1a7
    iget-object v0, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    #@1a9
    move-object/from16 v24, v0

    #@1ab
    new-instance v2, Landroid/hardware/input/TouchCalibration;

    #@1ad
    const/4 v3, 0x0

    #@1ae
    aget v3, v18, v3

    #@1b0
    .line 559
    const/4 v4, 0x1

    #@1b1
    aget v4, v18, v4

    #@1b3
    const/4 v5, 0x2

    #@1b4
    aget v5, v18, v5

    #@1b6
    const/4 v6, 0x3

    #@1b7
    aget v6, v18, v6

    #@1b9
    const/4 v7, 0x4

    #@1ba
    aget v7, v18, v7

    #@1bc
    const/4 v8, 0x5

    #@1bd
    aget v8, v18, v8

    #@1bf
    .line 558
    invoke-direct/range {v2 .. v8}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    #@1c2
    aput-object v2, v24, v20

    #@1c4
    goto/16 :goto_0

    #@1c6
    .line 565
    .end local v10    # "depth":I
    .end local v13    # "format":Ljava/lang/String;
    .end local v18    # "matrix":[F
    .end local v20    # "r":I
    .end local v21    # "rotation":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    #@1c8
    iget-object v2, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mUnassociatedKeyboardLayouts:Ljava/util/List;

    #@1ca
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@1cd
    .line 569
    move-object/from16 v0, p0

    #@1cf
    iget-object v2, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@1d1
    if-nez v2, :cond_13

    #@1d3
    move-object/from16 v0, p0

    #@1d5
    iget-object v2, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mUnassociatedKeyboardLayouts:Ljava/util/List;

    #@1d7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@1da
    move-result v2

    #@1db
    if-eqz v2, :cond_14

    #@1dd
    .line 471
    :cond_13
    :goto_4
    return-void

    #@1de
    .line 570
    :cond_14
    move-object/from16 v0, p0

    #@1e0
    iget-object v2, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mUnassociatedKeyboardLayouts:Ljava/util/List;

    #@1e2
    const/4 v3, 0x0

    #@1e3
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e6
    move-result-object v2

    #@1e7
    check-cast v2, Ljava/lang/String;

    #@1e9
    move-object/from16 v0, p0

    #@1eb
    iput-object v2, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@1ed
    goto :goto_4
.end method

.method public removeKeyboardLayout(Ljava/lang/String;)Z
    .locals 3
    .param p1, "keyboardLayout"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 423
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mUnassociatedKeyboardLayouts:Ljava/util/List;

    #@3
    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@6
    move-result v0

    #@7
    .line 424
    .local v0, "index":I
    if-gez v0, :cond_0

    #@9
    .line 425
    return v2

    #@a
    .line 427
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mUnassociatedKeyboardLayouts:Ljava/util/List;

    #@c
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@f
    .line 428
    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->updateCurrentKeyboardLayoutIfRemoved(Ljava/lang/String;I)V

    #@12
    .line 429
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
    .line 457
    .local p1, "availableKeyboardLayouts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    .line 458
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mUnassociatedKeyboardLayouts:Ljava/util/List;

    #@3
    invoke-interface {v4}, Ljava/util/List;->size()I

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
    .line 459
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mUnassociatedKeyboardLayouts:Ljava/util/List;

    #@e
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Ljava/lang/String;

    #@14
    .line 460
    .local v3, "keyboardLayout":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@17
    move-result v4

    #@18
    if-nez v4, :cond_0

    #@1a
    .line 461
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
    .line 462
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mUnassociatedKeyboardLayouts:Ljava/util/List;

    #@36
    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@39
    .line 463
    invoke-direct {p0, v3, v1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->updateCurrentKeyboardLayoutIfRemoved(Ljava/lang/String;I)V

    #@3c
    .line 464
    const/4 v0, 0x1

    #@3d
    :cond_0
    move v2, v1

    #@3e
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    #@3f
    .line 467
    .end local v2    # "i":I
    .end local v3    # "keyboardLayout":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_1
    return v0
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 11
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 575
    iget-object v8, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mUnassociatedKeyboardLayouts:Ljava/util/List;

    #@3
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v5

    #@7
    .local v5, "layout$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v8

    #@b
    if-eqz v8, :cond_0

    #@d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Ljava/lang/String;

    #@13
    .line 576
    .local v4, "layout":Ljava/lang/String;
    const-string/jumbo v8, "keyboard-layout"

    #@16
    invoke-interface {p1, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@19
    .line 577
    const-string/jumbo v8, "descriptor"

    #@1c
    invoke-interface {p1, v10, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1f
    .line 578
    const-string/jumbo v8, "keyboard-layout"

    #@22
    invoke-interface {p1, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@25
    goto :goto_0

    #@26
    .line 581
    .end local v4    # "layout":Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Landroid/util/ArrayMap;

    #@28
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@2b
    move-result v0

    #@2c
    .line 582
    .local v0, "N":I
    const/4 v2, 0x0

    #@2d
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    #@2f
    .line 583
    iget-object v8, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Landroid/util/ArrayMap;

    #@31
    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    #@37
    .line 584
    .local v1, "handle":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    iget-object v8, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Landroid/util/ArrayMap;

    #@39
    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3c
    move-result-object v4

    #@3d
    check-cast v4, Ljava/lang/String;

    #@3f
    .line 585
    .restart local v4    # "layout":Ljava/lang/String;
    const-string/jumbo v8, "keyboard-layout"

    #@42
    invoke-interface {p1, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@45
    .line 586
    const-string/jumbo v8, "descriptor"

    #@48
    invoke-interface {p1, v10, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4b
    .line 587
    const-string/jumbo v8, "input-method-id"

    #@4e
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->getInputMethodId()Ljava/lang/String;

    #@51
    move-result-object v9

    #@52
    invoke-interface {p1, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@55
    .line 588
    const-string/jumbo v8, "input-method-subtype-id"

    #@58
    .line 589
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->getSubtypeId()I

    #@5b
    move-result v9

    #@5c
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5f
    move-result-object v9

    #@60
    .line 588
    invoke-interface {p1, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@63
    .line 590
    iget-object v8, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@65
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v8

    #@69
    if-eqz v8, :cond_1

    #@6b
    .line 591
    const-string/jumbo v8, "current"

    #@6e
    const-string/jumbo v9, "true"

    #@71
    invoke-interface {p1, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@74
    .line 593
    :cond_1
    const-string/jumbo v8, "keyboard-layout"

    #@77
    invoke-interface {p1, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7a
    .line 582
    add-int/lit8 v2, v2, 0x1

    #@7c
    goto :goto_1

    #@7d
    .line 596
    .end local v1    # "handle":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    .end local v4    # "layout":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    #@7e
    :goto_2
    iget-object v8, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    #@80
    array-length v8, v8

    #@81
    if-ge v2, v8, :cond_5

    #@83
    .line 597
    iget-object v8, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    #@85
    aget-object v8, v8, v2

    #@87
    if-eqz v8, :cond_4

    #@89
    .line 598
    invoke-static {v2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->surfaceRotationToString(I)Ljava/lang/String;

    #@8c
    move-result-object v6

    #@8d
    .line 599
    .local v6, "rotation":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    #@8f
    aget-object v8, v8, v2

    #@91
    invoke-virtual {v8}, Landroid/hardware/input/TouchCalibration;->getAffineTransform()[F

    #@94
    move-result-object v7

    #@95
    .line 601
    .local v7, "transform":[F
    const-string/jumbo v8, "calibration"

    #@98
    invoke-interface {p1, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9b
    .line 602
    const-string/jumbo v8, "format"

    #@9e
    const-string/jumbo v9, "affine"

    #@a1
    invoke-interface {p1, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a4
    .line 603
    const-string/jumbo v8, "rotation"

    #@a7
    invoke-interface {p1, v10, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@aa
    .line 604
    const/4 v3, 0x0

    #@ab
    .local v3, "j":I
    :goto_3
    array-length v8, v7

    #@ac
    if-ge v3, v8, :cond_3

    #@ae
    sget-object v8, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    #@b0
    array-length v8, v8

    #@b1
    if-ge v3, v8, :cond_3

    #@b3
    .line 605
    sget-object v8, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    #@b5
    aget-object v8, v8, v3

    #@b7
    invoke-interface {p1, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ba
    .line 606
    aget v8, v7, v3

    #@bc
    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@bf
    move-result-object v8

    #@c0
    invoke-interface {p1, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@c3
    .line 607
    sget-object v8, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    #@c5
    aget-object v8, v8, v3

    #@c7
    invoke-interface {p1, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ca
    .line 604
    add-int/lit8 v3, v3, 0x1

    #@cc
    goto :goto_3

    #@cd
    .line 609
    :cond_3
    const-string/jumbo v8, "calibration"

    #@d0
    invoke-interface {p1, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d3
    .line 596
    .end local v3    # "j":I
    .end local v6    # "rotation":Ljava/lang/String;
    .end local v7    # "transform":[F
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@d5
    goto :goto_2

    #@d6
    .line 574
    :cond_5
    return-void
.end method

.method public setCurrentKeyboardLayout(Ljava/lang/String;)Z
    .locals 1
    .param p1, "keyboardLayout"    # Ljava/lang/String;

    #@0
    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 380
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 382
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->addKeyboardLayout(Ljava/lang/String;)Z

    #@d
    .line 383
    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@f
    .line 384
    const/4 v0, 0x1

    #@10
    return v0
.end method

.method public setKeyboardLayout(Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;Ljava/lang/String;)Z
    .locals 2
    .param p1, "imeHandle"    # Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    .param p2, "keyboardLayout"    # Ljava/lang/String;

    #@0
    .prologue
    .line 401
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    .line 402
    .local v0, "existingLayout":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 403
    const/4 v1, 0x0

    #@f
    return v1

    #@10
    .line 405
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 406
    const/4 v1, 0x1

    #@16
    return v1
.end method

.method public setTouchCalibration(ILandroid/hardware/input/TouchCalibration;)Z
    .locals 4
    .param p1, "surfaceRotation"    # I
    .param p2, "calibration"    # Landroid/hardware/input/TouchCalibration;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 362
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
    .line 363
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    #@d
    aput-object p2, v1, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 364
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 366
    :cond_0
    return v3

    #@12
    .line 367
    :catch_0
    move-exception v0

    #@13
    .line 368
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v1, "InputManager"

    #@16
    const-string/jumbo v2, "Cannot set touch calibration."

    #@19
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    .line 369
    return v3
.end method

.method public switchKeyboardLayout(Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)Z
    .locals 2
    .param p1, "imeHandle"    # Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    #@0
    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    .line 449
    .local v0, "layout":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@a
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 450
    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    #@12
    .line 451
    const/4 v1, 0x1

    #@13
    return v1

    #@14
    .line 453
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method
