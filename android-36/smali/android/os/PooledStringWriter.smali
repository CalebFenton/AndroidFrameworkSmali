.class public Landroid/os/PooledStringWriter;
.super Ljava/lang/Object;
.source "PooledStringWriter.java"


# instance fields
.field private greylist-max-o mNext:I

.field private final greylist-max-o mOut:Landroid/os/Parcel;

.field private final greylist-max-o mPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStart:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/PooledStringWriter;->mPool:Ljava/util/HashMap;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Landroid/os/PooledStringWriter;->mStart:I

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return-void
.end method


# virtual methods
.method public greylist-max-o finish()V
    .registers 4

    .line 75
    iget-object v0, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 76
    .local v0, "pos":I
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    iget v2, p0, Landroid/os/PooledStringWriter;->mStart:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    iget v2, p0, Landroid/os/PooledStringWriter;->mNext:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void
.end method

.method public greylist-max-o getStringCount()I
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/os/PooledStringWriter;->mPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public greylist-max-o writeString(Ljava/lang/String;)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Landroid/os/PooledStringWriter;->mPool:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 60
    .local v0, "cur":Ljava/lang/Integer;
    if-eqz v0, :cond_14

    .line 61
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34

    .line 63
    :cond_14
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mPool:Ljava/util/HashMap;

    iget v2, p0, Landroid/os/PooledStringWriter;->mNext:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    iget v2, p0, Landroid/os/PooledStringWriter;->mNext:I

    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget v1, p0, Landroid/os/PooledStringWriter;->mNext:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/PooledStringWriter;->mNext:I

    .line 68
    :goto_34
    return-void
.end method
