.class public final Landroid/window/WindowInfosListener$DisplayInfo;
.super Ljava/lang/Object;
.source "WindowInfosListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowInfosListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayInfo"
.end annotation


# instance fields
.field public final blacklist mDisplayId:I

.field public final blacklist mLogicalSize:Landroid/util/Size;

.field public final blacklist mTransform:Landroid/graphics/Matrix;


# direct methods
.method private constructor blacklist <init>(IIILandroid/graphics/Matrix;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "logicalWidth"    # I
    .param p3, "logicalHeight"    # I
    .param p4, "transform"    # Landroid/graphics/Matrix;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Landroid/window/WindowInfosListener$DisplayInfo;->mDisplayId:I

    .line 99
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p2, p3}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/window/WindowInfosListener$DisplayInfo;->mLogicalSize:Landroid/util/Size;

    .line 100
    iput-object p4, p0, Landroid/window/WindowInfosListener$DisplayInfo;->mTransform:Landroid/graphics/Matrix;

    .line 101
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/WindowInfosListener$DisplayInfo;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLogicalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowInfosListener$DisplayInfo;->mLogicalSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowInfosListener$DisplayInfo;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
