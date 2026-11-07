.class public Landroid/graphics/Point;
.super Ljava/lang/Object;
.source "Point.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist x:I

.field public whitelist y:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 148
    new-instance v0, Landroid/graphics/Point$1;

    invoke-direct {v0}, Landroid/graphics/Point$1;-><init>()V

    sput-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Landroid/graphics/Point;->x:I

    .line 36
    iput p2, p0, Landroid/graphics/Point;->y:I

    .line 37
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Point;)V
    .registers 2
    .param p1, "src"    # Landroid/graphics/Point;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    .line 41
    return-void
.end method

.method public static blacklist unflattenFromString(Ljava/lang/String;)Landroid/graphics/Point;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 124
    const-string/jumbo v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, "sep_ix":I
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    .line 126
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 125
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist equals(II)Z
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 80
    iget v0, p0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_a

    iget v0, p0, Landroid/graphics/Point;->y:I

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 85
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 86
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_24

    .line 88
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/graphics/Point;

    .line 90
    .local v2, "point":Landroid/graphics/Point;
    iget v3, p0, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    if-eq v3, v4, :cond_1c

    return v1

    .line 91
    :cond_1c
    iget v3, p0, Landroid/graphics/Point;->y:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-eq v3, v4, :cond_23

    return v1

    .line 93
    :cond_23
    return v0

    .line 86
    .end local v2    # "point":Landroid/graphics/Point;
    :cond_24
    :goto_24
    return v1
.end method

.method public blacklist flattenToString()Ljava/lang/String;
    .registers 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 98
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 99
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    .line 100
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public final whitelist negate()V
    .registers 2

    .line 64
    iget v0, p0, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 65
    iget v0, p0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 66
    return-void
.end method

.method public final whitelist offset(II)V
    .registers 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 72
    iget v0, p0, Landroid/graphics/Point;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 73
    iget v0, p0, Landroid/graphics/Point;->y:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 74
    return-void
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 177
    return-void
.end method

.method public whitelist set(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 47
    iput p1, p0, Landroid/graphics/Point;->x:I

    .line 48
    iput p2, p0, Landroid/graphics/Point;->y:I

    .line 49
    return-void
.end method

.method public blacklist set(Landroid/graphics/Point;)V
    .registers 3
    .param p1, "src"    # Landroid/graphics/Point;

    .line 56
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 57
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 58
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 144
    iget v0, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    return-void
.end method
