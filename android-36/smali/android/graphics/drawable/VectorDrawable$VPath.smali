.class abstract Landroid/graphics/drawable/VectorDrawable$VPath;
.super Landroid/graphics/drawable/VectorDrawable$VObject;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "VPath"
.end annotation


# static fields
.field private static final greylist-max-o PATH_DATA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VPath;",
            "Landroid/util/PathParser$PathData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-o mChangingConfigurations:I

.field protected greylist-max-o mPathData:Landroid/util/PathParser$PathData;

.field greylist-max-o mPathName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1610
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VPath$1;

    const-class v1, Landroid/util/PathParser$PathData;

    const-string/jumbo v2, "pathData"

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VPath$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VPath;->PATH_DATA:Landroid/util/Property;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 1631
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    .line 1605
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 1633
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V
    .registers 4
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VPath;

    .line 1635
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    .line 1605
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 1636
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    .line 1637
    iget v1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    .line 1638
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    if-nez v1, :cond_13

    goto :goto_1a

    :cond_13
    new-instance v0, Landroid/util/PathParser$PathData;

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    invoke-direct {v0, v1}, Landroid/util/PathParser$PathData;-><init>(Landroid/util/PathParser$PathData;)V

    :goto_1a
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 1639
    return-void
.end method


# virtual methods
.method public greylist-max-o getPathData()Landroid/util/PathParser$PathData;
    .registers 2

    .line 1648
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    return-object v0
.end method

.method public greylist-max-o getPathName()Ljava/lang/String;
    .registers 2

    .line 1642
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getProperty(Ljava/lang/String;)Landroid/util/Property;
    .registers 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 1624
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VPath;->PATH_DATA:Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1625
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VPath;->PATH_DATA:Landroid/util/Property;

    return-object v0

    .line 1628
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o setPathData(Landroid/util/PathParser$PathData;)V
    .registers 6
    .param p1, "pathData"    # Landroid/util/PathParser$PathData;

    .line 1654
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    invoke-virtual {v0, p1}, Landroid/util/PathParser$PathData;->setPathData(Landroid/util/PathParser$PathData;)V

    .line 1655
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1656
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;->getNativePtr()J

    move-result-wide v0

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    invoke-virtual {v2}, Landroid/util/PathParser$PathData;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetPathData(JJ)V

    .line 1658
    :cond_18
    return-void
.end method
