.class public Landroid/view/MagnificationSpec;
.super Ljava/lang/Object;
.source "MagnificationSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MagnificationSpec$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/MagnificationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_POOL_SIZE:I = 0x14

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/MagnificationSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public offsetX:F

.field public offsetY:F

.field public scale:F


# direct methods
.method static synthetic -wrap0(Landroid/view/MagnificationSpec;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/MagnificationSpec;->initFromParcel(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 31
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    #@2
    const/16 v1, 0x14

    #@4
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    #@7
    .line 30
    sput-object v0, Landroid/view/MagnificationSpec;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@9
    .line 149
    new-instance v0, Landroid/view/MagnificationSpec$1;

    #@b
    invoke-direct {v0}, Landroid/view/MagnificationSpec$1;-><init>()V

    #@e
    sput-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10
    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    #@5
    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    #@7
    .line 48
    return-void
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    #@6
    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    #@c
    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    #@12
    .line 143
    return-void
.end method

.method public static obtain()Landroid/view/MagnificationSpec;
    .locals 2

    #@0
    .prologue
    .line 74
    sget-object v1, Landroid/view/MagnificationSpec;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@2
    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/MagnificationSpec;

    #@8
    .line 75
    .local v0, "spec":Landroid/view/MagnificationSpec;
    if-eqz v0, :cond_0

    #@a
    .end local v0    # "spec":Landroid/view/MagnificationSpec;
    :goto_0
    return-object v0

    #@b
    .restart local v0    # "spec":Landroid/view/MagnificationSpec;
    :cond_0
    new-instance v0, Landroid/view/MagnificationSpec;

    #@d
    .end local v0    # "spec":Landroid/view/MagnificationSpec;
    invoke-direct {v0}, Landroid/view/MagnificationSpec;-><init>()V

    #@10
    goto :goto_0
.end method

.method public static obtain(Landroid/view/MagnificationSpec;)Landroid/view/MagnificationSpec;
    .locals 2
    .param p0, "other"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 66
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    #@3
    move-result-object v0

    #@4
    .line 67
    .local v0, "info":Landroid/view/MagnificationSpec;
    iget v1, p0, Landroid/view/MagnificationSpec;->scale:F

    #@6
    iput v1, v0, Landroid/view/MagnificationSpec;->scale:F

    #@8
    .line 68
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    #@a
    iput v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    #@c
    .line 69
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetY:F

    #@e
    iput v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    #@10
    .line 70
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 84
    const/high16 v0, 0x3f800000    # 1.0f

    #@3
    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    #@5
    .line 85
    iput v1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    #@7
    .line 86
    iput v1, p0, Landroid/view/MagnificationSpec;->offsetY:F

    #@9
    .line 83
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 97
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 110
    if-ne p0, p1, :cond_0

    #@4
    .line 111
    return v1

    #@5
    .line 114
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/view/MagnificationSpec;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v4

    #@f
    if-eq v3, v4, :cond_2

    #@11
    .line 115
    :cond_1
    return v2

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 118
    check-cast v0, Landroid/view/MagnificationSpec;

    #@15
    .line 119
    .local v0, "s":Landroid/view/MagnificationSpec;
    iget v3, p0, Landroid/view/MagnificationSpec;->scale:F

    #@17
    iget v4, v0, Landroid/view/MagnificationSpec;->scale:F

    #@19
    cmpl-float v3, v3, v4

    #@1b
    if-nez v3, :cond_3

    #@1d
    iget v3, p0, Landroid/view/MagnificationSpec;->offsetX:F

    #@1f
    iget v4, v0, Landroid/view/MagnificationSpec;->offsetX:F

    #@21
    cmpl-float v3, v3, v4

    #@23
    if-nez v3, :cond_3

    #@25
    iget v3, p0, Landroid/view/MagnificationSpec;->offsetY:F

    #@27
    iget v4, v0, Landroid/view/MagnificationSpec;->offsetY:F

    #@29
    cmpl-float v3, v3, v4

    #@2b
    if-nez v3, :cond_3

    #@2d
    :goto_0
    return v1

    #@2e
    :cond_3
    move v1, v2

    #@2f
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 124
    iget v2, p0, Landroid/view/MagnificationSpec;->scale:F

    #@4
    cmpl-float v2, v2, v4

    #@6
    if-eqz v2, :cond_1

    #@8
    iget v2, p0, Landroid/view/MagnificationSpec;->scale:F

    #@a
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@d
    move-result v0

    #@e
    .line 125
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    #@10
    iget v2, p0, Landroid/view/MagnificationSpec;->offsetX:F

    #@12
    cmpl-float v2, v2, v4

    #@14
    if-eqz v2, :cond_2

    #@16
    iget v2, p0, Landroid/view/MagnificationSpec;->offsetX:F

    #@18
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@1b
    move-result v2

    #@1c
    :goto_1
    add-int v0, v3, v2

    #@1e
    .line 126
    mul-int/lit8 v2, v0, 0x1f

    #@20
    iget v3, p0, Landroid/view/MagnificationSpec;->offsetY:F

    #@22
    cmpl-float v3, v3, v4

    #@24
    if-eqz v3, :cond_0

    #@26
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetY:F

    #@28
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@2b
    move-result v1

    #@2c
    :cond_0
    add-int v0, v2, v1

    #@2e
    .line 127
    return v0

    #@2f
    .end local v0    # "result":I
    :cond_1
    move v0, v1

    #@30
    .line 124
    goto :goto_0

    #@31
    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    #@32
    .line 125
    goto :goto_1
.end method

.method public initialize(FFF)V
    .locals 2
    .param p1, "scale"    # F
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F

    #@0
    .prologue
    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    cmpg-float v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Scale must be greater than or equal to one!"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 56
    :cond_0
    iput p1, p0, Landroid/view/MagnificationSpec;->scale:F

    #@11
    .line 57
    iput p2, p0, Landroid/view/MagnificationSpec;->offsetX:F

    #@13
    .line 58
    iput p3, p0, Landroid/view/MagnificationSpec;->offsetY:F

    #@15
    .line 52
    return-void
.end method

.method public isNop()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 62
    iget v1, p0, Landroid/view/MagnificationSpec;->scale:F

    #@4
    const/high16 v2, 0x3f800000    # 1.0f

    #@6
    cmpl-float v1, v1, v2

    #@8
    if-nez v1, :cond_0

    #@a
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    #@c
    cmpl-float v1, v1, v3

    #@e
    if-nez v1, :cond_0

    #@10
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetY:F

    #@12
    cmpl-float v1, v1, v3

    #@14
    if-nez v1, :cond_0

    #@16
    const/4 v0, 0x1

    #@17
    :cond_0
    return v0
.end method

.method public recycle()V
    .locals 1

    #@0
    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/view/MagnificationSpec;->clear()V

    #@3
    .line 80
    sget-object v0, Landroid/view/MagnificationSpec;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@5
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    #@8
    .line 78
    return-void
.end method

.method public setTo(Landroid/view/MagnificationSpec;)V
    .locals 1
    .param p1, "other"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 90
    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    #@2
    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    #@4
    .line 91
    iget v0, p1, Landroid/view/MagnificationSpec;->offsetX:F

    #@6
    iput v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    #@8
    .line 92
    iget v0, p1, Landroid/view/MagnificationSpec;->offsetY:F

    #@a
    iput v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    #@c
    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 133
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "<scale:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 134
    iget v1, p0, Landroid/view/MagnificationSpec;->scale:F

    #@d
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 135
    const-string/jumbo v1, ",offsetX:"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 136
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    #@1c
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 137
    const-string/jumbo v1, ",offsetY:"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 138
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetY:F

    #@2b
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 139
    const-string/jumbo v1, ">"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 102
    iget v0, p0, Landroid/view/MagnificationSpec;->scale:F

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@5
    .line 103
    iget v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@a
    .line 104
    iget v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@f
    .line 105
    invoke-virtual {p0}, Landroid/view/MagnificationSpec;->recycle()V

    #@12
    .line 101
    return-void
.end method
