.class public final Landroid/window/TransitionInfo$Root;
.super Ljava/lang/Object;
.source "TransitionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Root"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionInfo$Root;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDisplayId:I

.field private final blacklist mLeash:Landroid/view/SurfaceControl;

.field private final blacklist mOffset:Landroid/graphics/Point;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplayId(Landroid/window/TransitionInfo$Root;)I
    .registers 1

    iget p0, p0, Landroid/window/TransitionInfo$Root;->mDisplayId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeash(Landroid/window/TransitionInfo$Root;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Landroid/window/TransitionInfo$Root;->mLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOffset(Landroid/window/TransitionInfo$Root;)Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Landroid/window/TransitionInfo$Root;->mOffset:Landroid/graphics/Point;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlocalRemoteCopy(Landroid/window/TransitionInfo$Root;)Landroid/window/TransitionInfo$Root;
    .registers 1

    invoke-direct {p0}, Landroid/window/TransitionInfo$Root;->localRemoteCopy()Landroid/window/TransitionInfo$Root;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1525
    new-instance v0, Landroid/window/TransitionInfo$Root$1;

    invoke-direct {v0}, Landroid/window/TransitionInfo$Root$1;-><init>()V

    sput-object v0, Landroid/window/TransitionInfo$Root;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/view/SurfaceControl;II)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "leash"    # Landroid/view/SurfaceControl;
    .param p3, "offsetLeft"    # I
    .param p4, "offsetTop"    # I

    .line 1480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1478
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Root;->mOffset:Landroid/graphics/Point;

    .line 1481
    iput p1, p0, Landroid/window/TransitionInfo$Root;->mDisplayId:I

    .line 1482
    iput-object p2, p0, Landroid/window/TransitionInfo$Root;->mLeash:Landroid/view/SurfaceControl;

    .line 1483
    iget-object v0, p0, Landroid/window/TransitionInfo$Root;->mOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Point;->set(II)V

    .line 1484
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1478
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Root;->mOffset:Landroid/graphics/Point;

    .line 1487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Root;->mDisplayId:I

    .line 1488
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Root;->mLeash:Landroid/view/SurfaceControl;

    .line 1489
    iget-object v0, p0, Landroid/window/TransitionInfo$Root;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V

    .line 1490
    iget-object v0, p0, Landroid/window/TransitionInfo$Root;->mLeash:Landroid/view/SurfaceControl;

    const-string v1, "TransitionInfo.Root"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    .line 1491
    iget-object v0, p0, Landroid/window/TransitionInfo$Root;->mOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V

    .line 1492
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TransitionInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TransitionInfo$Root;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist localRemoteCopy()Landroid/window/TransitionInfo$Root;
    .registers 6

    .line 1495
    new-instance v0, Landroid/window/TransitionInfo$Root;

    iget v1, p0, Landroid/window/TransitionInfo$Root;->mDisplayId:I

    new-instance v2, Landroid/view/SurfaceControl;

    iget-object v3, p0, Landroid/window/TransitionInfo$Root;->mLeash:Landroid/view/SurfaceControl;

    const-string v4, "localRemote"

    invoke-direct {v2, v3, v4}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/window/TransitionInfo$Root;->mOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Landroid/window/TransitionInfo$Root;->mOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/window/TransitionInfo$Root;-><init>(ILandroid/view/SurfaceControl;II)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1541
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 1501
    iget v0, p0, Landroid/window/TransitionInfo$Root;->mDisplayId:I

    return v0
.end method

.method public blacklist getLeash()Landroid/view/SurfaceControl;
    .registers 2

    .line 1507
    iget-object v0, p0, Landroid/window/TransitionInfo$Root;->mLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getOffset()Landroid/graphics/Point;
    .registers 2

    .line 1513
    iget-object v0, p0, Landroid/window/TransitionInfo$Root;->mOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/window/TransitionInfo$Root;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionInfo$Root;->mOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionInfo$Root;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1519
    iget v0, p0, Landroid/window/TransitionInfo$Root;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1520
    iget-object v0, p0, Landroid/window/TransitionInfo$Root;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1521
    iget-object v0, p0, Landroid/window/TransitionInfo$Root;->mOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1522
    return-void
.end method
