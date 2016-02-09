.class public Landroid/graphics/Point;
.super Ljava/lang/Object;
.source "Point.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Point$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 117
    new-instance v0, Landroid/graphics/Point$1;

    #@2
    invoke-direct {v0}, Landroid/graphics/Point$1;-><init>()V

    #@5
    sput-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iput p1, p0, Landroid/graphics/Point;->x:I

    #@5
    .line 34
    iput p2, p0, Landroid/graphics/Point;->y:I

    #@7
    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "src"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iget v0, p1, Landroid/graphics/Point;->x:I

    #@5
    iput v0, p0, Landroid/graphics/Point;->x:I

    #@7
    .line 39
    iget v0, p1, Landroid/graphics/Point;->y:I

    #@9
    iput v0, p0, Landroid/graphics/Point;->y:I

    #@b
    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 103
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final equals(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 70
    iget v1, p0, Landroid/graphics/Point;->x:I

    #@3
    if-ne v1, p1, :cond_0

    #@5
    iget v1, p0, Landroid/graphics/Point;->y:I

    #@7
    if-ne v1, p2, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 75
    if-ne p0, p1, :cond_0

    #@4
    return v4

    #@5
    .line 76
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/graphics/Point;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v2

    #@f
    if-eq v1, v2, :cond_2

    #@11
    :cond_1
    return v3

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 78
    check-cast v0, Landroid/graphics/Point;

    #@15
    .line 80
    .local v0, "point":Landroid/graphics/Point;
    iget v1, p0, Landroid/graphics/Point;->x:I

    #@17
    iget v2, v0, Landroid/graphics/Point;->x:I

    #@19
    if-eq v1, v2, :cond_3

    #@1b
    return v3

    #@1c
    .line 81
    :cond_3
    iget v1, p0, Landroid/graphics/Point;->y:I

    #@1e
    iget v2, v0, Landroid/graphics/Point;->y:I

    #@20
    if-eq v1, v2, :cond_4

    #@22
    return v3

    #@23
    .line 83
    :cond_4
    return v4
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 88
    iget v0, p0, Landroid/graphics/Point;->x:I

    #@2
    .line 89
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@4
    iget v2, p0, Landroid/graphics/Point;->y:I

    #@6
    add-int v0, v1, v2

    #@8
    .line 90
    return v0
.end method

.method public final negate()V
    .locals 1

    #@0
    .prologue
    .line 54
    iget v0, p0, Landroid/graphics/Point;->x:I

    #@2
    neg-int v0, v0

    #@3
    iput v0, p0, Landroid/graphics/Point;->x:I

    #@5
    .line 55
    iget v0, p0, Landroid/graphics/Point;->y:I

    #@7
    neg-int v0, v0

    #@8
    iput v0, p0, Landroid/graphics/Point;->y:I

    #@a
    .line 53
    return-void
.end method

.method public final offset(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    #@0
    .prologue
    .line 62
    iget v0, p0, Landroid/graphics/Point;->x:I

    #@2
    add-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/graphics/Point;->x:I

    #@5
    .line 63
    iget v0, p0, Landroid/graphics/Point;->y:I

    #@7
    add-int/2addr v0, p2

    #@8
    iput v0, p0, Landroid/graphics/Point;->y:I

    #@a
    .line 61
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/graphics/Point;->x:I

    #@6
    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/graphics/Point;->y:I

    #@c
    .line 141
    return-void
.end method

.method public set(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 46
    iput p1, p0, Landroid/graphics/Point;->x:I

    #@2
    .line 47
    iput p2, p0, Landroid/graphics/Point;->y:I

    #@4
    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Point("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/graphics/Point;->x:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/graphics/Point;->y:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ")"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 113
    iget v0, p0, Landroid/graphics/Point;->x:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 114
    iget v0, p0, Landroid/graphics/Point;->y:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 112
    return-void
.end method
