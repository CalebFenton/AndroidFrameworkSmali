.class public final Landroid/hardware/camera2/params/InputConfiguration;
.super Ljava/lang/Object;
.source "InputConfiguration.java"


# instance fields
.field private final mFormat:I

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput p1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    #@5
    .line 51
    iput p2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    #@7
    .line 52
    iput p3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    #@9
    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 94
    instance-of v1, p1, Landroid/hardware/camera2/params/InputConfiguration;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 95
    return v3

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 98
    check-cast v0, Landroid/hardware/camera2/params/InputConfiguration;

    #@9
    .line 100
    .local v0, "otherInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    #@c
    move-result v1

    #@d
    iget v2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    #@f
    if-ne v1, v2, :cond_1

    #@11
    .line 101
    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    #@14
    move-result v1

    #@15
    iget v2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    #@17
    if-ne v1, v2, :cond_1

    #@19
    .line 102
    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    #@1c
    move-result v1

    #@1d
    iget v2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    #@1f
    if-ne v1, v2, :cond_1

    #@21
    .line 103
    const/4 v1, 0x1

    #@22
    return v1

    #@23
    .line 105
    :cond_1
    return v3
.end method

.method public getFormat()I
    .locals 1

    #@0
    .prologue
    .line 79
    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    #@2
    return v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 70
    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    #@2
    return v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 61
    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 113
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [I

    #@3
    iget v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    #@5
    const/4 v2, 0x0

    #@6
    aput v1, v0, v2

    #@8
    iget v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    #@a
    const/4 v2, 0x1

    #@b
    aput v1, v0, v2

    #@d
    iget v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    #@f
    const/4 v2, 0x2

    #@10
    aput v1, v0, v2

    #@12
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 126
    const-string/jumbo v0, "InputConfiguration(w:%d, h:%d, format:%d)"

    #@3
    const/4 v1, 0x3

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    iget v2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    iget v2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    #@11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x1

    #@16
    aput-object v2, v1, v3

    #@18
    iget v2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    #@1a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v2

    #@1e
    const/4 v3, 0x2

    #@1f
    aput-object v2, v1, v3

    #@21
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method
