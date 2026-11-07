.class final Ljava/util/ImmutableCollections$ListN;
.super Ljava/util/ImmutableCollections$AbstractImmutableList;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListN"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ImmutableCollections$AbstractImmutableList<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final blacklist allowNulls:Z
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field private final blacklist elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetallowNulls(Ljava/util/ImmutableCollections$ListN;)Z
    .registers 1

    iget-boolean p0, p0, Ljava/util/ImmutableCollections$ListN;->allowNulls:Z

    return p0
.end method

.method private constructor blacklist <init>([Ljava/lang/Object;Z)V
    .registers 3
    .param p2, "allowNulls"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;Z)V"
        }
    .end annotation

    .line 677
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 678
    iput-object p1, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    .line 679
    iput-boolean p2, p0, Ljava/util/ImmutableCollections$ListN;->allowNulls:Z

    .line 680
    return-void
.end method

.method synthetic constructor blacklist <init>([Ljava/lang/Object;ZLjava/util/ImmutableCollections-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;Z)V

    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 699
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 4

    .line 704
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    new-instance v0, Ljava/util/CollSer;

    iget-boolean v1, p0, Ljava/util/ImmutableCollections$ListN;->allowNulls:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x4

    goto :goto_9

    :cond_8
    const/4 v1, 0x1

    :goto_9
    iget-object v2, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Ljava/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 694
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 729
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    iget-boolean v0, p0, Ljava/util/ImmutableCollections$ListN;->allowNulls:Z

    if-nez v0, :cond_d

    if-eqz p1, :cond_7

    goto :goto_d

    .line 730
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 732
    :cond_d
    :goto_d
    iget-object v0, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    .line 733
    .local v0, "es":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    array-length v2, v0

    if-ge v1, v2, :cond_1f

    .line 734
    aget-object v2, v0, v1

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 735
    return v1

    .line 733
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 738
    .end local v1    # "i":I
    :cond_1f
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 684
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 743
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    iget-boolean v0, p0, Ljava/util/ImmutableCollections$ListN;->allowNulls:Z

    if-nez v0, :cond_d

    if-eqz p1, :cond_7

    goto :goto_d

    .line 744
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 746
    :cond_d
    :goto_d
    iget-object v0, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    .line 747
    .local v0, "es":[Ljava/lang/Object;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_20

    .line 748
    aget-object v2, v0, v1

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 749
    return v1

    .line 747
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 752
    .end local v1    # "i":I
    :cond_20
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 689
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 3

    .line 709
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 715
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    array-length v0, v0

    .line 716
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_11

    .line 718
    iget-object v1, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 720
    :cond_11
    iget-object v1, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 721
    array-length v1, p1

    if-le v1, v0, :cond_1d

    .line 722
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 724
    :cond_1d
    return-object p1
.end method
