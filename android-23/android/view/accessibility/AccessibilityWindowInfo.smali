.class public final Landroid/view/accessibility/AccessibilityWindowInfo;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityWindowInfo$1;
    }
.end annotation


# static fields
.field private static final BOOLEAN_PROPERTY_ACCESSIBILITY_FOCUSED:I = 0x4

.field private static final BOOLEAN_PROPERTY_ACTIVE:I = 0x1

.field private static final BOOLEAN_PROPERTY_FOCUSED:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final MAX_POOL_SIZE:I = 0xa

.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x4

.field public static final TYPE_APPLICATION:I = 0x1

.field public static final TYPE_INPUT_METHOD:I = 0x2

.field public static final TYPE_SYSTEM:I = 0x3

.field private static final UNDEFINED:I = -0x1

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBooleanProperties:I

.field private final mBoundsInScreen:Landroid/graphics/Rect;

.field private mChildIds:Landroid/util/LongArray;

.field private mConnectionId:I

.field private mId:I

.field private mLayer:I

.field private mParentId:I

.field private mType:I


# direct methods
.method static synthetic -wrap0(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->initFromParcel(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 76
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    #@2
    const/16 v1, 0xa

    #@4
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    #@7
    .line 75
    sput-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@9
    .line 599
    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo$1;

    #@b
    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowInfo$1;-><init>()V

    #@e
    .line 598
    sput-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10
    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 79
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@6
    .line 80
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    #@8
    .line 82
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@a
    .line 83
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@c
    .line 84
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@13
    .line 87
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@15
    .line 89
    return-void
.end method

.method private clear()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 502
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@3
    .line 503
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    #@5
    .line 504
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    #@8
    .line 505
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@a
    .line 506
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@c
    .line 507
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@e
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@11
    .line 508
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 509
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@17
    invoke-virtual {v0}, Landroid/util/LongArray;->clear()V

    #@1a
    .line 511
    :cond_0
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@1c
    .line 501
    return-void
.end method

.method private getBooleanProperty(I)Z
    .locals 2
    .param p1, "property"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 521
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    #@3
    and-int/2addr v1, p1

    #@4
    if-eqz v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v3

    #@4
    iput v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@6
    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v3

    #@a
    iput v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    #@c
    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v3

    #@10
    iput v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    #@12
    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v3

    #@16
    iput v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@18
    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    iput v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@1e
    .line 428
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@20
    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@23
    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v0

    #@27
    .line 431
    .local v0, "childCount":I
    if-lez v0, :cond_1

    #@29
    .line 432
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@2b
    if-nez v3, :cond_0

    #@2d
    .line 433
    new-instance v3, Landroid/util/LongArray;

    #@2f
    invoke-direct {v3, v0}, Landroid/util/LongArray;-><init>(I)V

    #@32
    iput-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@34
    .line 435
    :cond_0
    const/4 v2, 0x0

    #@35
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@37
    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v1

    #@3b
    .line 437
    .local v1, "childId":I
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@3d
    int-to-long v4, v1

    #@3e
    invoke-virtual {v3, v4, v5}, Landroid/util/LongArray;->add(J)V

    #@41
    .line 435
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_0

    #@44
    .line 441
    .end local v1    # "childId":I
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v3

    #@48
    iput v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@4a
    .line 422
    return-void
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 2

    #@0
    .prologue
    .line 343
    sget-object v1, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@2
    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@8
    .line 344
    .local v0, "info":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v0, :cond_0

    #@a
    .line 345
    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@c
    .end local v0    # "info":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>()V

    #@f
    .line 347
    .restart local v0    # "info":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_0
    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 3
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    #@0
    .prologue
    .line 359
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    #@3
    move-result-object v0

    #@4
    .line 361
    .local v0, "infoClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@6
    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@8
    .line 362
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    #@a
    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    #@c
    .line 363
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    #@e
    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    #@10
    .line 364
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@12
    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@14
    .line 365
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@16
    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@18
    .line 366
    iget-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@1a
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@1c
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1f
    .line 368
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@21
    if-eqz v1, :cond_0

    #@23
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@25
    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    #@28
    move-result v1

    #@29
    if-lez v1, :cond_0

    #@2b
    .line 369
    iget-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@2d
    if-nez v1, :cond_1

    #@2f
    .line 370
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@31
    invoke-virtual {v1}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    #@34
    move-result-object v1

    #@35
    iput-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@37
    .line 376
    :cond_0
    :goto_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@39
    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@3b
    .line 378
    return-object v0

    #@3c
    .line 372
    :cond_1
    iget-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@3e
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@40
    invoke-virtual {v1, v2}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    #@43
    goto :goto_0
.end method

.method private setBooleanProperty(IZ)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 533
    if-eqz p2, :cond_0

    #@2
    .line 534
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    #@4
    or-int/2addr v0, p1

    #@5
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    #@7
    .line 532
    :goto_0
    return-void

    #@8
    .line 536
    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    #@a
    not-int v1, p1

    #@b
    and-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    #@e
    goto :goto_0
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 541
    packed-switch p0, :pswitch_data_0

    #@3
    .line 555
    const-string/jumbo v0, "<UNKNOWN>"

    #@6
    return-object v0

    #@7
    .line 543
    :pswitch_0
    const-string/jumbo v0, "TYPE_APPLICATION"

    #@a
    return-object v0

    #@b
    .line 546
    :pswitch_1
    const-string/jumbo v0, "TYPE_INPUT_METHOD"

    #@e
    return-object v0

    #@f
    .line 549
    :pswitch_2
    const-string/jumbo v0, "TYPE_SYSTEM"

    #@12
    return-object v0

    #@13
    .line 552
    :pswitch_3
    const-string/jumbo v0, "TYPE_ACCESSIBILITY_OVERLAY"

    #@16
    return-object v0

    #@17
    .line 541
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addChild(I)V
    .locals 4
    .param p1, "childId"    # I

    #@0
    .prologue
    .line 330
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 331
    new-instance v0, Landroid/util/LongArray;

    #@6
    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    #@9
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@b
    .line 333
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@d
    int-to-long v2, p1

    #@e
    invoke-virtual {v0, v2, v3}, Landroid/util/LongArray;->add(J)V

    #@11
    .line 329
    return-void
.end method

.method public changed(Landroid/view/accessibility/AccessibilityWindowInfo;)Z
    .locals 3
    .param p1, "other"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 570
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@3
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Not same window."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 573
    :cond_0
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@12
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@14
    if-eq v0, v1, :cond_1

    #@16
    .line 574
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "Not same type."

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 576
    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@21
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@23
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_2

    #@29
    .line 577
    return v2

    #@2a
    .line 579
    :cond_2
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    #@2c
    iget v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    #@2e
    if-eq v0, v1, :cond_3

    #@30
    .line 580
    return v2

    #@31
    .line 582
    :cond_3
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    #@33
    iget v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    #@35
    if-eq v0, v1, :cond_4

    #@37
    .line 583
    return v2

    #@38
    .line 585
    :cond_4
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@3a
    iget v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@3c
    if-eq v0, v1, :cond_5

    #@3e
    .line 586
    return v2

    #@3f
    .line 588
    :cond_5
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@41
    if-nez v0, :cond_6

    #@43
    .line 589
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@45
    if-eqz v0, :cond_7

    #@47
    .line 590
    return v2

    #@48
    .line 592
    :cond_6
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@4a
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@4c
    invoke-virtual {v0, v1}, Landroid/util/LongArray;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v0

    #@50
    if-nez v0, :cond_7

    #@52
    .line 593
    return v2

    #@53
    .line 595
    :cond_7
    const/4 v0, 0x0

    #@54
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 396
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 451
    if-ne p0, p1, :cond_0

    #@4
    .line 452
    return v1

    #@5
    .line 454
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 455
    return v2

    #@8
    .line 457
    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v4

    #@10
    if-eq v3, v4, :cond_2

    #@12
    .line 458
    return v2

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 460
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@16
    .line 461
    .local v0, "other":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@18
    iget v4, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@1a
    if-ne v3, v4, :cond_3

    #@1c
    :goto_0
    return v1

    #@1d
    :cond_3
    move v1, v2

    #@1e
    goto :goto_0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 216
    return-void
.end method

.method public getChild(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 311
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 312
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@7
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@a
    throw v2

    #@b
    .line 314
    :cond_0
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@d
    const/4 v3, -0x1

    #@e
    if-ne v2, v3, :cond_1

    #@10
    .line 315
    return-object v4

    #@11
    .line 317
    :cond_1
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@13
    invoke-virtual {v2, p1}, Landroid/util/LongArray;->get(I)J

    #@16
    move-result-wide v2

    #@17
    long-to-int v0, v2

    #@18
    .line 318
    .local v0, "childId":I
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@1b
    move-result-object v1

    #@1c
    .line 319
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@1e
    invoke-virtual {v1, v2, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    #@21
    move-result-object v2

    #@22
    return-object v2
.end method

.method public getChildCount()I
    .locals 1

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@6
    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 185
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@2
    return v0
.end method

.method public getLayer()I
    .locals 1

    #@0
    .prologue
    .line 125
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    #@2
    return v0
.end method

.method public getParent()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 161
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@3
    if-eq v1, v2, :cond_0

    #@5
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@7
    if-ne v1, v2, :cond_1

    #@9
    .line 162
    :cond_0
    const/4 v1, 0x0

    #@a
    return-object v1

    #@b
    .line 164
    :cond_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@e
    move-result-object v0

    #@f
    .line 165
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@11
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8

    #@0
    .prologue
    .line 146
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@2
    const/4 v2, -0x1

    #@3
    if-ne v0, v2, :cond_0

    #@5
    .line 147
    const/4 v0, 0x0

    #@6
    return-object v0

    #@7
    .line 149
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@a
    move-result-object v1

    #@b
    .line 150
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@d
    .line 151
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@f
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@11
    .line 152
    const/4 v6, 0x1

    #@12
    const/4 v7, 0x4

    #@13
    .line 150
    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 104
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 446
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@2
    return v0
.end method

.method public isAccessibilityFocused()Z
    .locals 1

    #@0
    .prologue
    .line 281
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public isActive()Z
    .locals 1

    #@0
    .prologue
    .line 239
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public isFocused()Z
    .locals 1

    #@0
    .prologue
    .line 261
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public recycle()V
    .locals 1

    #@0
    .prologue
    .line 390
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->clear()V

    #@3
    .line 391
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@5
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    #@8
    .line 389
    return-void
.end method

.method public setAccessibilityFocused(Z)V
    .locals 1
    .param p1, "focused"    # Z

    #@0
    .prologue
    .line 292
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    #@4
    .line 291
    return-void
.end method

.method public setActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    #@0
    .prologue
    .line 252
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    #@4
    .line 251
    return-void
.end method

.method public setBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 227
    return-void
.end method

.method public setConnectionId(I)V
    .locals 0
    .param p1, "connectionId"    # I

    #@0
    .prologue
    .line 208
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@2
    .line 207
    return-void
.end method

.method public setFocused(Z)V
    .locals 1
    .param p1, "focused"    # Z

    #@0
    .prologue
    .line 272
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    #@4
    .line 271
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    #@0
    .prologue
    .line 196
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@2
    .line 195
    return-void
.end method

.method public setLayer(I)V
    .locals 0
    .param p1, "layer"    # I

    #@0
    .prologue
    .line 137
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    #@2
    .line 136
    return-void
.end method

.method public setParentId(I)V
    .locals 0
    .param p1, "parentId"    # I

    #@0
    .prologue
    .line 176
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@2
    .line 175
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 115
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@2
    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 467
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "AccessibilityWindowInfo["

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 468
    const-string/jumbo v1, "id="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@16
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    .line 469
    const-string/jumbo v1, ", type="

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    iget v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@22
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->typeToString(I)Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 470
    const-string/jumbo v1, ", layer="

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    iget v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    #@32
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    .line 471
    const-string/jumbo v1, ", bounds="

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@3e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    .line 472
    const-string/jumbo v1, ", focused="

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    #@4b
    move-result v4

    #@4c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4f
    .line 473
    const-string/jumbo v1, ", active="

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    #@59
    move-result v4

    #@5a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5d
    .line 490
    const-string/jumbo v1, ", hasParent="

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@66
    const/4 v5, -0x1

    #@67
    if-eq v1, v5, :cond_1

    #@69
    move v1, v2

    #@6a
    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6d
    .line 491
    const-string/jumbo v1, ", hasChildren="

    #@70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@76
    if-eqz v4, :cond_0

    #@78
    .line 492
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@7a
    invoke-virtual {v4}, Landroid/util/LongArray;->size()I

    #@7d
    move-result v4

    #@7e
    if-lez v4, :cond_0

    #@80
    move v3, v2

    #@81
    .line 491
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@84
    .line 494
    const/16 v1, 0x5d

    #@86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@89
    .line 495
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v1

    #@8d
    return-object v1

    #@8e
    :cond_1
    move v1, v3

    #@8f
    .line 490
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 401
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 402
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    #@7
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 403
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    #@c
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 404
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@11
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 405
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@16
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 406
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@1b
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 408
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@20
    .line 409
    .local v1, "childIds":Landroid/util/LongArray;
    if-nez v1, :cond_1

    #@22
    .line 410
    const/4 v3, 0x0

    #@23
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 419
    :cond_0
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@28
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 400
    return-void

    #@2c
    .line 412
    :cond_1
    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    #@2f
    move-result v0

    #@30
    .line 413
    .local v0, "childCount":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 414
    const/4 v2, 0x0

    #@34
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@36
    .line 415
    invoke-virtual {v1, v2}, Landroid/util/LongArray;->get(I)J

    #@39
    move-result-wide v4

    #@3a
    long-to-int v3, v4

    #@3b
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3e
    .line 414
    add-int/lit8 v2, v2, 0x1

    #@40
    goto :goto_0
.end method
