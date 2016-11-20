.class abstract Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;
.super Ljava/lang/Object;
.source "OMADMAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/OMADMAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PathAccessor"
.end annotation


# instance fields
.field private final mHashCode:I

.field private final mPath:[Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;)[Ljava/lang/String;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->getPath()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected varargs constructor <init>([Ljava/lang/Object;)V
    .locals 11
    .param p1, "path"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 57
    const/4 v1, 0x0

    #@5
    .line 58
    .local v1, "length":I
    array-length v7, p1

    #@6
    move v5, v6

    #@7
    :goto_0
    if-ge v5, v7, :cond_1

    #@9
    aget-object v4, p1, v5

    #@b
    .line 59
    .local v4, "o":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v8

    #@f
    const-class v9, [Ljava/lang/String;

    #@11
    if-ne v8, v9, :cond_0

    #@13
    .line 60
    check-cast v4, [Ljava/lang/String;

    #@15
    .end local v4    # "o":Ljava/lang/Object;
    array-length v8, v4

    #@16
    add-int/2addr v1, v8

    #@17
    .line 58
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 63
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_1

    #@1d
    .line 66
    .end local v4    # "o":Ljava/lang/Object;
    :cond_1
    new-array v5, v1, [Ljava/lang/String;

    #@1f
    iput-object v5, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->mPath:[Ljava/lang/String;

    #@21
    .line 67
    const/4 v2, 0x0

    #@22
    .line 68
    .local v2, "n":I
    array-length v8, p1

    #@23
    move v7, v6

    #@24
    move v3, v2

    #@25
    .end local v2    # "n":I
    .local v3, "n":I
    :goto_2
    if-ge v7, v8, :cond_4

    #@27
    aget-object v4, p1, v7

    #@29
    .line 69
    .restart local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2c
    move-result-object v5

    #@2d
    const-class v9, [Ljava/lang/String;

    #@2f
    if-ne v5, v9, :cond_2

    #@31
    .line 70
    check-cast v4, [Ljava/lang/String;

    #@33
    .end local v4    # "o":Ljava/lang/Object;
    array-length v9, v4

    #@34
    move v5, v6

    #@35
    :goto_3
    if-ge v5, v9, :cond_5

    #@37
    aget-object v0, v4, v5

    #@39
    .line 71
    .local v0, "element":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->mPath:[Ljava/lang/String;

    #@3b
    add-int/lit8 v2, v3, 0x1

    #@3d
    .end local v3    # "n":I
    .restart local v2    # "n":I
    aput-object v0, v10, v3

    #@3f
    .line 70
    add-int/lit8 v5, v5, 0x1

    #@41
    move v3, v2

    #@42
    .end local v2    # "n":I
    .restart local v3    # "n":I
    goto :goto_3

    #@43
    .line 74
    .end local v0    # "element":Ljava/lang/String;
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@46
    move-result-object v5

    #@47
    const-class v9, Ljava/lang/Integer;

    #@49
    if-ne v5, v9, :cond_3

    #@4b
    .line 75
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->mPath:[Ljava/lang/String;

    #@4d
    add-int/lit8 v2, v3, 0x1

    #@4f
    .end local v3    # "n":I
    .restart local v2    # "n":I
    new-instance v9, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v10, "x"

    #@57
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v9

    #@5b
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5e
    move-result-object v10

    #@5f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v9

    #@63
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v9

    #@67
    aput-object v9, v5, v3

    #@69
    .line 68
    .end local v4    # "o":Ljava/lang/Object;
    :goto_4
    add-int/lit8 v5, v7, 0x1

    #@6b
    move v7, v5

    #@6c
    move v3, v2

    #@6d
    .end local v2    # "n":I
    .restart local v3    # "n":I
    goto :goto_2

    #@6e
    .line 78
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->mPath:[Ljava/lang/String;

    #@70
    add-int/lit8 v2, v3, 0x1

    #@72
    .end local v3    # "n":I
    .restart local v2    # "n":I
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@75
    move-result-object v9

    #@76
    aput-object v9, v5, v3

    #@78
    goto :goto_4

    #@79
    .line 81
    .end local v2    # "n":I
    .end local v4    # "o":Ljava/lang/Object;
    .restart local v3    # "n":I
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->mPath:[Ljava/lang/String;

    #@7b
    invoke-static {v5}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@7e
    move-result v5

    #@7f
    iput v5, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->mHashCode:I

    #@81
    .line 56
    return-void

    #@82
    :cond_5
    move v2, v3

    #@83
    .end local v3    # "n":I
    .restart local v2    # "n":I
    goto :goto_4
.end method

.method private getPath()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->mPath:[Ljava/lang/String;

    #@2
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "thatObject"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 91
    if-eq p1, p0, :cond_0

    #@2
    instance-of v0, p1, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 92
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->mPath:[Ljava/lang/String;

    #@8
    check-cast p1, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;

    #@a
    .end local p1    # "thatObject":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->mPath:[Ljava/lang/String;

    #@c
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    .line 91
    :goto_0
    return v0

    #@11
    .restart local p1    # "thatObject":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0

    #@13
    :cond_1
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method

.method protected abstract getValue()Ljava/lang/Object;
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 86
    iget v0, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->mHashCode:I

    #@2
    return v0
.end method
