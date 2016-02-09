.class public Landroid/os/PooledStringWriter;
.super Ljava/lang/Object;
.source "PooledStringWriter.java"


# instance fields
.field private mNext:I

.field private final mOut:Landroid/os/Parcel;

.field private final mPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStart:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput-object p1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    #@5
    .line 53
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    iput-object v0, p0, Landroid/os/PooledStringWriter;->mPool:Ljava/util/HashMap;

    #@c
    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/os/PooledStringWriter;->mStart:I

    #@12
    .line 55
    const/4 v0, 0x0

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 51
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    #@0
    .prologue
    .line 75
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    #@2
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    #@5
    move-result v0

    #@6
    .line 76
    .local v0, "pos":I
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    #@8
    iget v2, p0, Landroid/os/PooledStringWriter;->mStart:I

    #@a
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    #@d
    .line 77
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    #@f
    iget v2, p0, Landroid/os/PooledStringWriter;->mNext:I

    #@11
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 78
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    #@16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    #@19
    .line 74
    return-void
.end method

.method public getStringCount()I
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/os/PooledStringWriter;->mPool:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mPool:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    .line 60
    .local v0, "cur":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@a
    .line 61
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    #@c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@f
    move-result v2

    #@10
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 58
    :goto_0
    return-void

    #@14
    .line 63
    :cond_0
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mPool:Ljava/util/HashMap;

    #@16
    iget v2, p0, Landroid/os/PooledStringWriter;->mNext:I

    #@18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 64
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    #@21
    iget v2, p0, Landroid/os/PooledStringWriter;->mNext:I

    #@23
    add-int/lit8 v2, v2, 0x1

    #@25
    neg-int v2, v2

    #@26
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 65
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    #@2b
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2e
    .line 66
    iget v1, p0, Landroid/os/PooledStringWriter;->mNext:I

    #@30
    add-int/lit8 v1, v1, 0x1

    #@32
    iput v1, p0, Landroid/os/PooledStringWriter;->mNext:I

    #@34
    goto :goto_0
.end method
