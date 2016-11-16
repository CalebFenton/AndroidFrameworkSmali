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

.field public static final TYPE_SPLIT_SCREEN_DIVIDER:I = 0x5

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
.field private mAnchorId:I

.field private mBooleanProperties:I

.field private final mBoundsInScreen:Landroid/graphics/Rect;

.field private mChildIds:Landroid/util/LongArray;

.field private mConnectionId:I

.field private mId:I

.field private mLayer:I

.field private mParentId:I

.field private mTitle:Ljava/lang/CharSequence;

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
    .line 83
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    #@2
    const/16 v1, 0xa

    #@4
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    #@7
    .line 82
    sput-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@9
    .line 668
    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo$1;

    #@b
    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowInfo$1;-><init>()V

    #@e
    .line 667
    sput-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10
    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 86
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@6
    .line 87
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    #@8
    .line 89
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@a
    .line 90
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@c
    .line 91
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@13
    .line 94
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    #@15
    .line 96
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@17
    .line 98
    return-void
.end method

.method private clear()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    .line 566
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@4
    .line 567
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    #@6
    .line 568
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    #@9
    .line 569
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@b
    .line 570
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@d
    .line 571
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@f
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@12
    .line 572
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 573
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@18
    invoke-virtual {v0}, Landroid/util/LongArray;->clear()V

    #@1b
    .line 575
    :cond_0
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@1d
    .line 576
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    #@1f
    .line 577
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    #@21
    .line 565
    return-void
.end method

.method private getBooleanProperty(I)Z
    .locals 2
    .param p1, "property"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 587
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
    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v3

    #@4
    iput v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@6
    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v3

    #@a
    iput v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    #@c
    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v3

    #@10
    iput v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    #@12
    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v3

    #@16
    iput v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@18
    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    iput v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@1e
    .line 488
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@20
    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@23
    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@26
    move-result-object v3

    #@27
    iput-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    #@29
    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v3

    #@2d
    iput v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    #@2f
    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v0

    #@33
    .line 493
    .local v0, "childCount":I
    if-lez v0, :cond_1

    #@35
    .line 494
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@37
    if-nez v3, :cond_0

    #@39
    .line 495
    new-instance v3, Landroid/util/LongArray;

    #@3b
    invoke-direct {v3, v0}, Landroid/util/LongArray;-><init>(I)V

    #@3e
    iput-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@40
    .line 497
    :cond_0
    const/4 v2, 0x0

    #@41
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@43
    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v1

    #@47
    .line 499
    .local v1, "childId":I
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@49
    int-to-long v4, v1

    #@4a
    invoke-virtual {v3, v4, v5}, Landroid/util/LongArray;->add(J)V

    #@4d
    .line 497
    add-int/lit8 v2, v2, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 503
    .end local v1    # "childId":I
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@53
    move-result v3

    #@54
    iput v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@56
    .line 482
    return-void
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 2

    #@0
    .prologue
    .line 399
    sget-object v1, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@2
    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@8
    .line 400
    .local v0, "info":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v0, :cond_0

    #@a
    .line 401
    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@c
    .end local v0    # "info":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>()V

    #@f
    .line 403
    .restart local v0    # "info":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_0
    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 3
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    #@0
    .prologue
    .line 415
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    #@3
    move-result-object v0

    #@4
    .line 417
    .local v0, "infoClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@6
    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@8
    .line 418
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    #@a
    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    #@c
    .line 419
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    #@e
    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    #@10
    .line 420
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@12
    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@14
    .line 421
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@16
    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@18
    .line 422
    iget-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@1a
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@1c
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1f
    .line 423
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    #@21
    iput-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    #@23
    .line 424
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    #@25
    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    #@27
    .line 426
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@29
    if-eqz v1, :cond_0

    #@2b
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@2d
    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    #@30
    move-result v1

    #@31
    if-lez v1, :cond_0

    #@33
    .line 427
    iget-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@35
    if-nez v1, :cond_1

    #@37
    .line 428
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@39
    invoke-virtual {v1}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    #@3c
    move-result-object v1

    #@3d
    iput-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@3f
    .line 434
    :cond_0
    :goto_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@41
    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@43
    .line 436
    return-object v0

    #@44
    .line 430
    :cond_1
    iget-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@46
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@48
    invoke-virtual {v1, v2}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    #@4b
    goto :goto_0
.end method

.method private setBooleanProperty(IZ)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 599
    if-eqz p2, :cond_0

    #@2
    .line 600
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    #@4
    or-int/2addr v0, p1

    #@5
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    #@7
    .line 598
    :goto_0
    return-void

    #@8
    .line 602
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
    .line 607
    packed-switch p0, :pswitch_data_0

    #@3
    .line 624
    const-string/jumbo v0, "<UNKNOWN>"

    #@6
    return-object v0

    #@7
    .line 609
    :pswitch_0
    const-string/jumbo v0, "TYPE_APPLICATION"

    #@a
    return-object v0

    #@b
    .line 612
    :pswitch_1
    const-string/jumbo v0, "TYPE_INPUT_METHOD"

    #@e
    return-object v0

    #@f
    .line 615
    :pswitch_2
    const-string/jumbo v0, "TYPE_SYSTEM"

    #@12
    return-object v0

    #@13
    .line 618
    :pswitch_3
    const-string/jumbo v0, "TYPE_ACCESSIBILITY_OVERLAY"

    #@16
    return-object v0

    #@17
    .line 621
    :pswitch_4
    const-string/jumbo v0, "TYPE_SPLIT_SCREEN_DIVIDER"

    #@1a
    return-object v0

    #@1b
    .line 607
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public addChild(I)V
    .locals 4
    .param p1, "childId"    # I

    #@0
    .prologue
    .line 386
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 387
    new-instance v0, Landroid/util/LongArray;

    #@6
    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    #@9
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@b
    .line 389
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@d
    int-to-long v2, p1

    #@e
    invoke-virtual {v0, v2, v3}, Landroid/util/LongArray;->add(J)V

    #@11
    .line 385
    return-void
.end method

.method public changed(Landroid/view/accessibility/AccessibilityWindowInfo;)Z
    .locals 3
    .param p1, "other"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 639
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@3
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 640
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Not same window."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 642
    :cond_0
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@12
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@14
    if-eq v0, v1, :cond_1

    #@16
    .line 643
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "Not same type."

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 645
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
    .line 646
    return v2

    #@2a
    .line 648
    :cond_2
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    #@2c
    iget v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    #@2e
    if-eq v0, v1, :cond_3

    #@30
    .line 649
    return v2

    #@31
    .line 651
    :cond_3
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    #@33
    iget v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    #@35
    if-eq v0, v1, :cond_4

    #@37
    .line 652
    return v2

    #@38
    .line 654
    :cond_4
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@3a
    iget v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@3c
    if-eq v0, v1, :cond_5

    #@3e
    .line 655
    return v2

    #@3f
    .line 657
    :cond_5
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@41
    if-nez v0, :cond_6

    #@43
    .line 658
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@45
    if-eqz v0, :cond_7

    #@47
    .line 659
    return v2

    #@48
    .line 661
    :cond_6
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@4a
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v0

    #@50
    if-nez v0, :cond_7

    #@52
    .line 662
    return v2

    #@53
    .line 664
    :cond_7
    const/4 v0, 0x0

    #@54
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 454
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
    .line 513
    if-ne p0, p1, :cond_0

    #@4
    .line 514
    return v1

    #@5
    .line 516
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 517
    return v2

    #@8
    .line 519
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v4

    #@10
    if-eq v3, v4, :cond_2

    #@12
    .line 520
    return v2

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 522
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@16
    .line 523
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

.method public getAnchor()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 202
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@3
    if-eq v0, v2, :cond_0

    #@5
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    #@7
    if-ne v0, v2, :cond_1

    #@9
    .line 203
    :cond_0
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 202
    :cond_1
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@d
    if-eq v0, v2, :cond_0

    #@f
    .line 206
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@12
    move-result-object v1

    #@13
    .line 207
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@15
    .line 208
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@17
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    #@19
    int-to-long v4, v0

    #@1a
    const/4 v6, 0x1

    #@1b
    const/4 v7, 0x0

    #@1c
    .line 207
    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 272
    return-void
.end method

.method public getChild(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 367
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 368
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@7
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@a
    throw v2

    #@b
    .line 370
    :cond_0
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@d
    const/4 v3, -0x1

    #@e
    if-ne v2, v3, :cond_1

    #@10
    .line 371
    return-object v4

    #@11
    .line 373
    :cond_1
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@13
    invoke-virtual {v2, p1}, Landroid/util/LongArray;->get(I)J

    #@16
    move-result-wide v2

    #@17
    long-to-int v0, v2

    #@18
    .line 374
    .local v0, "childId":I
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@1b
    move-result-object v1

    #@1c
    .line 375
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
    .line 357
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
    .line 241
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@2
    return v0
.end method

.method public getLayer()I
    .locals 1

    #@0
    .prologue
    .line 155
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
    .line 217
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@3
    if-eq v1, v2, :cond_0

    #@5
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@7
    if-ne v1, v2, :cond_1

    #@9
    .line 218
    :cond_0
    const/4 v1, 0x0

    #@a
    return-object v1

    #@b
    .line 220
    :cond_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@e
    move-result-object v0

    #@f
    .line 221
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
    .line 176
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@2
    const/4 v2, -0x1

    #@3
    if-ne v0, v2, :cond_0

    #@5
    .line 177
    const/4 v0, 0x0

    #@6
    return-object v0

    #@7
    .line 179
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@a
    move-result-object v1

    #@b
    .line 180
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@d
    .line 181
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@f
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@11
    .line 182
    const/4 v6, 0x1

    #@12
    const/4 v7, 0x4

    #@13
    .line 180
    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 134
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 508
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@2
    return v0
.end method

.method public isAccessibilityFocused()Z
    .locals 1

    #@0
    .prologue
    .line 337
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
    .line 295
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
    .line 317
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
    .line 448
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->clear()V

    #@3
    .line 449
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@5
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    #@8
    .line 447
    return-void
.end method

.method public setAccessibilityFocused(Z)V
    .locals 1
    .param p1, "focused"    # Z

    #@0
    .prologue
    .line 348
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    #@4
    .line 347
    return-void
.end method

.method public setActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    #@0
    .prologue
    .line 308
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    #@4
    .line 307
    return-void
.end method

.method public setAnchorId(I)V
    .locals 0
    .param p1, "anchorId"    # I

    #@0
    .prologue
    .line 193
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    #@2
    .line 192
    return-void
.end method

.method public setBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 284
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 283
    return-void
.end method

.method public setConnectionId(I)V
    .locals 0
    .param p1, "connectionId"    # I

    #@0
    .prologue
    .line 264
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@2
    .line 263
    return-void
.end method

.method public setFocused(Z)V
    .locals 1
    .param p1, "focused"    # Z

    #@0
    .prologue
    .line 328
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    #@4
    .line 327
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    #@0
    .prologue
    .line 252
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@2
    .line 251
    return-void
.end method

.method public setLayer(I)V
    .locals 0
    .param p1, "layer"    # I

    #@0
    .prologue
    .line 167
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    #@2
    .line 166
    return-void
.end method

.method public setParentId(I)V
    .locals 0
    .param p1, "parentId"    # I

    #@0
    .prologue
    .line 232
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@2
    .line 231
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 120
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    #@2
    .line 119
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 145
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@2
    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    .line 529
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "AccessibilityWindowInfo["

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 530
    const-string/jumbo v1, "title="

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    #@17
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1a
    .line 531
    const-string/jumbo v1, "id="

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    iget v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@23
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    .line 532
    const-string/jumbo v1, ", type="

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    iget v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@2f
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->typeToString(I)Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 533
    const-string/jumbo v1, ", layer="

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    iget v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    #@3f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    .line 534
    const-string/jumbo v1, ", bounds="

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@4b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    .line 535
    const-string/jumbo v1, ", focused="

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    #@58
    move-result v4

    #@59
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5c
    .line 536
    const-string/jumbo v1, ", active="

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    #@66
    move-result v4

    #@67
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6a
    .line 553
    const-string/jumbo v1, ", hasParent="

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@73
    if-eq v1, v5, :cond_1

    #@75
    move v1, v2

    #@76
    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@79
    .line 554
    const-string/jumbo v1, ", isAnchored="

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v4

    #@80
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    #@82
    if-eq v1, v5, :cond_2

    #@84
    move v1, v2

    #@85
    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@88
    .line 555
    const-string/jumbo v1, ", hasChildren="

    #@8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@91
    if-eqz v4, :cond_0

    #@93
    .line 556
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@95
    invoke-virtual {v4}, Landroid/util/LongArray;->size()I

    #@98
    move-result v4

    #@99
    if-lez v4, :cond_0

    #@9b
    move v3, v2

    #@9c
    .line 555
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@9f
    .line 558
    const/16 v1, 0x5d

    #@a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a4
    .line 559
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v1

    #@a8
    return-object v1

    #@a9
    :cond_1
    move v1, v3

    #@aa
    .line 553
    goto :goto_0

    #@ab
    :cond_2
    move v1, v3

    #@ac
    .line 554
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 459
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    #@2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 460
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    #@7
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 461
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    #@c
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 462
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    #@11
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 463
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    #@16
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 464
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    #@1b
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 465
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    #@20
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@23
    .line 466
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    #@25
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 468
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    #@2a
    .line 469
    .local v1, "childIds":Landroid/util/LongArray;
    if-nez v1, :cond_1

    #@2c
    .line 470
    const/4 v3, 0x0

    #@2d
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 479
    :cond_0
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    #@32
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 458
    return-void

    #@36
    .line 472
    :cond_1
    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    #@39
    move-result v0

    #@3a
    .line 473
    .local v0, "childCount":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 474
    const/4 v2, 0x0

    #@3e
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@40
    .line 475
    invoke-virtual {v1, v2}, Landroid/util/LongArray;->get(I)J

    #@43
    move-result-wide v4

    #@44
    long-to-int v3, v4

    #@45
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@48
    .line 474
    add-int/lit8 v2, v2, 0x1

    #@4a
    goto :goto_0
.end method
