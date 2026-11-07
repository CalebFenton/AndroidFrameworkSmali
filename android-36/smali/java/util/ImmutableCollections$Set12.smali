.class final Ljava/util/ImmutableCollections$Set12;
.super Ljava/util/ImmutableCollections$AbstractImmutableSet;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Set12"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ImmutableCollections$AbstractImmutableSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final blacklist e0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field private final blacklist e1:Ljava/lang/Object;
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgete0(Ljava/util/ImmutableCollections$Set12;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Ljava/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgete1(Ljava/util/ImmutableCollections$Set12;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Ljava/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    return-object p0
.end method

.method constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 796
    .local p0, "this":Ljava/util/ImmutableCollections$Set12;, "Ljava/util/ImmutableCollections$Set12<TE;>;"
    .local p1, "e0":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableSet;-><init>()V

    .line 797
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    .line 800
    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetEMPTY()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    .line 801
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 803
    .local p0, "this":Ljava/util/ImmutableCollections$Set12;, "Ljava/util/ImmutableCollections$Set12<TE;>;"
    .local p1, "e0":Ljava/lang/Object;, "TE;"
    .local p2, "e1":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableSet;-><init>()V

    .line 804
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 808
    iput-object p1, p0, Ljava/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    .line 809
    iput-object p2, p0, Ljava/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    .line 810
    return-void

    .line 805
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 860
    .local p0, "this":Ljava/util/ImmutableCollections$Set12;, "Ljava/util/ImmutableCollections$Set12<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 5

    .line 865
    .local p0, "this":Ljava/util/ImmutableCollections$Set12;, "Ljava/util/ImmutableCollections$Set12<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetEMPTY()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_15

    .line 866
    new-instance v0, Ljava/util/CollSer;

    iget-object v1, p0, Ljava/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0

    .line 868
    :cond_15
    new-instance v0, Ljava/util/CollSer;

    iget-object v1, p0, Ljava/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 824
    .local p0, "this":Ljava/util/ImmutableCollections$Set12;, "Ljava/util/ImmutableCollections$Set12<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Ljava/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 829
    .local p0, "this":Ljava/util/ImmutableCollections$Set12;, "Ljava/util/ImmutableCollections$Set12<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetEMPTY()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_10

    const/4 v1, 0x0

    goto :goto_16

    :cond_10
    iget-object v1, p0, Ljava/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 819
    .local p0, "this":Ljava/util/ImmutableCollections$Set12;, "Ljava/util/ImmutableCollections$Set12<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 834
    .local p0, "this":Ljava/util/ImmutableCollections$Set12;, "Ljava/util/ImmutableCollections$Set12<TE;>;"
    new-instance v0, Ljava/util/ImmutableCollections$Set12$1;

    invoke-direct {v0, p0}, Ljava/util/ImmutableCollections$Set12$1;-><init>(Ljava/util/ImmutableCollections$Set12;)V

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 3

    .line 814
    .local p0, "this":Ljava/util/ImmutableCollections$Set12;, "Ljava/util/ImmutableCollections$Set12<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetEMPTY()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x2

    :goto_b
    return v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 3

    .line 874
    .local p0, "this":Ljava/util/ImmutableCollections$Set12;, "Ljava/util/ImmutableCollections$Set12<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetEMPTY()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_f

    .line 875
    iget-object v0, p0, Ljava/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 876
    :cond_f
    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetREVERSE()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 877
    iget-object v0, p0, Ljava/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 879
    :cond_1e
    iget-object v0, p0, Ljava/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 886
    .local p0, "this":Ljava/util/ImmutableCollections$Set12;, "Ljava/util/ImmutableCollections$Set12<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/util/ImmutableCollections$Set12;->size()I

    move-result v0

    .line 887
    .local v0, "size":I
    array-length v1, p1

    if-lt v1, v0, :cond_9

    move-object v1, p1

    goto :goto_17

    .line 888
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    :goto_17
    nop

    .line 889
    .local v1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_21

    .line 890
    iget-object v3, p0, Ljava/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    aput-object v3, v1, v2

    goto :goto_38

    .line 891
    :cond_21
    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetREVERSE()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 892
    iget-object v4, p0, Ljava/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    aput-object v4, v1, v2

    .line 893
    iget-object v2, p0, Ljava/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    aput-object v2, v1, v3

    goto :goto_38

    .line 895
    :cond_30
    iget-object v4, p0, Ljava/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    aput-object v4, v1, v2

    .line 896
    iget-object v2, p0, Ljava/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 898
    :goto_38
    array-length v2, v1

    if-le v2, v0, :cond_3e

    .line 899
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 901
    :cond_3e
    return-object v1
.end method
