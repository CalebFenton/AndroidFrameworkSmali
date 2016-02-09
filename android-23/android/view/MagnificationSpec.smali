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
    .line 110
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
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    #@5
    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    #@7
    .line 37
    return-void
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    #@6
    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    #@c
    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    #@12
    .line 104
    return-void
.end method

.method public static obtain()Landroid/view/MagnificationSpec;
    .locals 2

    #@0
    .prologue
    .line 63
    sget-object v1, Landroid/view/MagnificationSpec;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@2
    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/MagnificationSpec;

    #@8
    .line 64
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
    .line 55
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    #@3
    move-result-object v0

    #@4
    .line 56
    .local v0, "info":Landroid/view/MagnificationSpec;
    iget v1, p0, Landroid/view/MagnificationSpec;->scale:F

    #@6
    iput v1, v0, Landroid/view/MagnificationSpec;->scale:F

    #@8
    .line 57
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    #@a
    iput v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    #@c
    .line 58
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetY:F

    #@e
    iput v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    #@10
    .line 59
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    #@3
    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    #@5
    .line 74
    iput v1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    #@7
    .line 75
    iput v1, p0, Landroid/view/MagnificationSpec;->offsetY:F

    #@9
    .line 72
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 80
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public initialize(FFF)V
    .locals 2
    .param p1, "scale"    # F
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F

    #@0
    .prologue
    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    cmpg-float v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Scale must be greater than or equal to one!"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 45
    :cond_0
    iput p1, p0, Landroid/view/MagnificationSpec;->scale:F

    #@11
    .line 46
    iput p2, p0, Landroid/view/MagnificationSpec;->offsetX:F

    #@13
    .line 47
    iput p3, p0, Landroid/view/MagnificationSpec;->offsetY:F

    #@15
    .line 41
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
    .line 51
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
    .line 68
    invoke-virtual {p0}, Landroid/view/MagnificationSpec;->clear()V

    #@3
    .line 69
    sget-object v0, Landroid/view/MagnificationSpec;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@5
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    #@8
    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 94
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "<scale:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 95
    iget v1, p0, Landroid/view/MagnificationSpec;->scale:F

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@10
    .line 96
    const-string/jumbo v1, ",offsetX:"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 97
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@1b
    .line 98
    const-string/jumbo v1, ",offsetY:"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 99
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetY:F

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@26
    .line 100
    const-string/jumbo v1, ">"

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 85
    iget v0, p0, Landroid/view/MagnificationSpec;->scale:F

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@5
    .line 86
    iget v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@a
    .line 87
    iget v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@f
    .line 88
    invoke-virtual {p0}, Landroid/view/MagnificationSpec;->recycle()V

    #@12
    .line 84
    return-void
.end method
