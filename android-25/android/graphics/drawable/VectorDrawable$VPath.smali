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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/VectorDrawable$VPath$1;
    }
.end annotation


# static fields
.field private static final PATH_DATA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/VectorDrawable$VPath;",
            "Landroid/util/PathParser$PathData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mChangingConfigurations:I

.field protected mPathData:Landroid/util/PathParser$PathData;

.field mPathName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 1502
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VPath$1;

    #@2
    const-class v1, Landroid/util/PathParser$PathData;

    #@4
    const-string/jumbo v2, "pathData"

    #@7
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VPath$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@a
    .line 1501
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VPath;->PATH_DATA:Landroid/util/Property;

    #@c
    .line 1495
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1522
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    #@3
    .line 1496
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    #@6
    .line 1522
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V
    .locals 2
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VPath;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1526
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    #@4
    .line 1496
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    #@6
    .line 1527
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    #@8
    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    #@a
    .line 1528
    iget v1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    #@c
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    #@e
    .line 1529
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    #@10
    if-nez v1, :cond_0

    #@12
    :goto_0
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    #@14
    .line 1526
    return-void

    #@15
    .line 1529
    :cond_0
    new-instance v0, Landroid/util/PathParser$PathData;

    #@17
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    #@19
    invoke-direct {v0, v1}, Landroid/util/PathParser$PathData;-><init>(Landroid/util/PathParser$PathData;)V

    #@1c
    goto :goto_0
.end method


# virtual methods
.method public getPathData()Landroid/util/PathParser$PathData;
    .locals 1

    #@0
    .prologue
    .line 1539
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    #@2
    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1533
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getProperty(Ljava/lang/String;)Landroid/util/Property;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1515
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VPath;->PATH_DATA:Landroid/util/Property;

    #@2
    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1516
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VPath;->PATH_DATA:Landroid/util/Property;

    #@e
    return-object v0

    #@f
    .line 1519
    :cond_0
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method public setPathData(Landroid/util/PathParser$PathData;)V
    .locals 4
    .param p1, "pathData"    # Landroid/util/PathParser$PathData;

    #@0
    .prologue
    .line 1545
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/PathParser$PathData;->setPathData(Landroid/util/PathParser$PathData;)V

    #@5
    .line 1546
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;->isTreeValid()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1547
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;->getNativePtr()J

    #@e
    move-result-wide v0

    #@f
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    #@11
    invoke-virtual {v2}, Landroid/util/PathParser$PathData;->getNativePtr()J

    #@14
    move-result-wide v2

    #@15
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-wrap31(JJ)V

    #@18
    .line 1544
    :cond_0
    return-void
.end method
