.class public Landroid/os/PooledStringReader;
.super Ljava/lang/Object;
.source "PooledStringReader.java"


# instance fields
.field private final mIn:Landroid/os/Parcel;

.field private final mPool:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    iput-object p1, p0, Landroid/os/PooledStringReader;->mIn:Landroid/os/Parcel;

    #@5
    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v0

    #@9
    .line 36
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    #@b
    iput-object v1, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    #@d
    .line 33
    return-void
.end method


# virtual methods
.method public getStringCount()I
    .locals 1

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public readString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 44
    iget-object v2, p0, Landroid/os/PooledStringReader;->mIn:Landroid/os/Parcel;

    #@2
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v0

    #@6
    .line 45
    .local v0, "idx":I
    if-ltz v0, :cond_0

    #@8
    .line 46
    iget-object v2, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    #@a
    aget-object v2, v2, v0

    #@c
    return-object v2

    #@d
    .line 48
    :cond_0
    neg-int v2, v0

    #@e
    add-int/lit8 v0, v2, -0x1

    #@10
    .line 49
    iget-object v2, p0, Landroid/os/PooledStringReader;->mIn:Landroid/os/Parcel;

    #@12
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 50
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    #@18
    aput-object v1, v2, v0

    #@1a
    .line 51
    return-object v1
.end method
