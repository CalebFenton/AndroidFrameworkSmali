.class public Landroid/window/WindowContainerTransaction$Change;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowContainerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Change"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowContainerTransaction$Change$ChangeMask;
    }
.end annotation


# static fields
.field public static final blacklist CHANGE_BOUNDS_TRANSACTION:I = 0x2

.field public static final blacklist CHANGE_DRAG_RESIZING:I = 0x80

.field public static final blacklist CHANGE_FOCUSABLE:I = 0x1

.field public static final blacklist CHANGE_FORCE_NO_PIP:I = 0x20

.field public static final blacklist CHANGE_FORCE_TRANSLUCENT:I = 0x40

.field public static final blacklist CHANGE_HIDDEN:I = 0x8

.field public static final blacklist CHANGE_IGNORE_ORIENTATION_REQUEST:I = 0x10

.field public static final blacklist CHANGE_PIP_CALLBACK:I = 0x4

.field public static final blacklist CHANGE_RELATIVE_BOUNDS:I = 0x100

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/WindowContainerTransaction$Change;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mActivityWindowingMode:I

.field private blacklist mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

.field private blacklist mChangeMask:I

.field private blacklist mConfigAtTransitionEnd:Z

.field private blacklist mConfigSetMask:I

.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field private blacklist mDragResizing:Z

.field private blacklist mFocusable:Z

.field private blacklist mForceTranslucent:Z

.field private blacklist mHidden:Z

.field private blacklist mIgnoreOrientationRequest:Z

.field private blacklist mPinnedBounds:Landroid/graphics/Rect;

.field private blacklist mRelativeBounds:Landroid/graphics/Rect;

.field private blacklist mWindowSetMask:I

.field private blacklist mWindowingMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I
    .registers 1

    iget p0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I
    .registers 1

    iget p0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;
    .registers 1

    iget-object p0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRelativeBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I
    .registers 1

    iget p0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActivityWindowingMode(Landroid/window/WindowContainerTransaction$Change;I)V
    .registers 2

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundsChangeTransaction(Landroid/window/WindowContainerTransaction$Change;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V
    .registers 2

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConfigAtTransitionEnd(Landroid/window/WindowContainerTransaction$Change;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V
    .registers 2

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDragResizing(Landroid/window/WindowContainerTransaction$Change;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFocusable(Landroid/window/WindowContainerTransaction$Change;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmForceTranslucent(Landroid/window/WindowContainerTransaction$Change;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHidden(Landroid/window/WindowContainerTransaction$Change;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIgnoreOrientationRequest(Landroid/window/WindowContainerTransaction$Change;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPinnedBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRelativeBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V
    .registers 2

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindowingMode(Landroid/window/WindowContainerTransaction$Change;I)V
    .registers 2

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1590
    new-instance v0, Landroid/window/WindowContainerTransaction$Change$1;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction$Change$1;-><init>()V

    sput-object v0, Landroid/window/WindowContainerTransaction$Change;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 1330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1310
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    .line 1311
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    .line 1312
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    .line 1313
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    .line 1314
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    .line 1315
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    .line 1317
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    .line 1318
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    .line 1319
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    .line 1321
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    .line 1322
    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1323
    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    .line 1325
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    .line 1327
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    .line 1328
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    .line 1330
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1310
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    .line 1311
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    .line 1312
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    .line 1313
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    .line 1314
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    .line 1315
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    .line 1317
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    .line 1318
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    .line 1319
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    .line 1321
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    .line 1322
    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1323
    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    .line 1325
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    .line 1327
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    .line 1328
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    .line 1333
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 1334
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    .line 1335
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    .line 1336
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    .line 1337
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    .line 1338
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    .line 1339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    .line 1340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    .line 1341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    .line 1342
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_71

    .line 1343
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    .line 1344
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 1346
    :cond_71
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_81

    .line 1347
    sget-object v0, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1348
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1350
    :cond_81
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_93

    .line 1351
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    .line 1352
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 1354
    :cond_93
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    .line 1356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    .line 1357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    .line 1358
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/WindowContainerTransaction-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction$Change;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/WindowContainerTransaction-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction$Change;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1587
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActivityWindowingMode()I
    .registers 2

    .line 1412
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    return v0
.end method

.method public blacklist getBoundsChangeTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 1494
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method public blacklist getChangeMask()I
    .registers 2

    .line 1470
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    return v0
.end method

.method public blacklist getConfigAtTransitionEnd()Z
    .registers 2

    .line 1465
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    return v0
.end method

.method public blacklist getConfigSetMask()I
    .registers 2

    .line 1475
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    return v0
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 1417
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public blacklist getDragResizing()Z
    .registers 3

    .line 1456
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 1460
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    return v0

    .line 1457
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Drag resizing not set. Check CHANGE_DRAG_RESIZING first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getEnterPipBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1489
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getFocusable()Z
    .registers 3

    .line 1422
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    .line 1425
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    return v0

    .line 1423
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Focusable not set. check CHANGE_FOCUSABLE first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getForceTranslucent()Z
    .registers 3

    .line 1447
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 1451
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    return v0

    .line 1448
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Force translucent not set. Check CHANGE_FORCE_TRANSLUCENT first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getHidden()Z
    .registers 3

    .line 1430
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9

    .line 1433
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    return v0

    .line 1431
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Hidden not set. check CHANGE_HIDDEN first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getIgnoreOrientationRequest()Z
    .registers 3

    .line 1438
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 1442
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    return v0

    .line 1439
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "IgnoreOrientationRequest not set. Check CHANGE_IGNORE_ORIENTATION_REQUEST first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRelativeBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1499
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getWindowSetMask()I
    .registers 2

    .line 1480
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    return v0
.end method

.method public blacklist getWindowingMode()I
    .registers 2

    .line 1408
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    return v0
.end method

.method public blacklist merge(Landroid/window/WindowContainerTransaction$Change;Z)V
    .registers 7
    .param p1, "other"    # Landroid/window/WindowContainerTransaction$Change;
    .param p2, "transfer"    # Z

    .line 1366
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p1, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, p1, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    iget v3, p1, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 1367
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    iget v1, p1, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    .line 1368
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    iget v1, p1, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    .line 1369
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_23

    .line 1370
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    .line 1372
    :cond_23
    if-eqz p2, :cond_32

    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_32

    .line 1373
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1374
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1376
    :cond_32
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_46

    .line 1377
    if-eqz p2, :cond_3d

    iget-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    goto :goto_44

    :cond_3d
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_44
    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    .line 1379
    :cond_46
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_50

    .line 1380
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    .line 1382
    :cond_50
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5a

    .line 1383
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    .line 1385
    :cond_5a
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_64

    .line 1386
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    .line 1388
    :cond_64
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6e

    .line 1389
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    .line 1391
    :cond_6e
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    iget v2, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    .line 1392
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    if-ltz v0, :cond_7d

    .line 1393
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    .line 1395
    :cond_7d
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    if-ltz v0, :cond_85

    .line 1396
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    .line 1398
    :cond_85
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_97

    .line 1399
    if-eqz p2, :cond_8e

    .line 1400
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    goto :goto_95

    .line 1401
    :cond_8e
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_95
    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    .line 1403
    :cond_97
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    if-nez v0, :cond_a1

    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    if-eqz v0, :cond_a0

    goto :goto_a1

    :cond_a0
    const/4 v1, 0x0

    :cond_a1
    :goto_a1
    iput-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    .line 1405
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 1504
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_10

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_10

    move v0, v3

    goto :goto_11

    :cond_10
    move v0, v2

    .line 1508
    .local v0, "changesBounds":Z
    :goto_11
    iget v4, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_1e

    iget v1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1e

    move v1, v3

    goto :goto_1f

    :cond_1e
    move v1, v2

    .line 1512
    .local v1, "changesAppBounds":Z
    :goto_1f
    iget v4, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_27

    move v4, v3

    goto :goto_28

    :cond_27
    move v4, v2

    .line 1513
    .local v4, "changesSs":Z
    :goto_28
    iget v5, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_2f

    move v2, v3

    .line 1515
    .local v2, "changesSss":Z
    :cond_2f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1516
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/16 v6, 0x7b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1517
    const-string v6, ","

    if-eqz v0, :cond_5f

    .line 1518
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bounds:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    :cond_5f
    if-eqz v1, :cond_83

    .line 1521
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appbounds:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    :cond_83
    if-eqz v2, :cond_a4

    .line 1524
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ssw:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    :cond_a4
    if-eqz v4, :cond_d4

    .line 1527
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sw/h:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    :cond_d4
    iget v7, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/2addr v3, v7

    if-eqz v3, :cond_f5

    .line 1531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "focusable:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    :cond_f5
    iget v3, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_117

    .line 1534
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forceTranslucent:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    :cond_117
    iget v3, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_139

    .line 1537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hidden:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    :cond_139
    iget v3, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_15b

    .line 1540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dragResizing:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    :cond_15b
    iget-object v3, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v3, :cond_164

    .line 1543
    const-string v3, "hasBoundsTransaction,"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    :cond_164
    iget v3, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_186

    .line 1546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignoreOrientationRequest:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    :cond_186
    iget v3, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_19c

    .line 1549
    const-string/jumbo v3, "relativeBounds:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    :cond_19c
    iget-boolean v3, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    if-eqz v3, :cond_1a9

    .line 1552
    const-string v3, "configAtTransitionEnd"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    :cond_1a9
    const-string/jumbo v3, "}"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1560
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1561
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1562
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1563
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1564
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1565
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1566
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1567
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1568
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1570
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_36

    .line 1571
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1573
    :cond_36
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_3f

    .line 1574
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1576
    :cond_3f
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_48

    .line 1577
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1579
    :cond_48
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1581
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1582
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1583
    return-void
.end method
