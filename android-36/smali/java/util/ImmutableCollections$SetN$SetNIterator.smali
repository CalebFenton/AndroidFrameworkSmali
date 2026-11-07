.class final Ljava/util/ImmutableCollections$SetN$SetNIterator;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections$SetN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SetNIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private blacklist idx:I

.field private blacklist remaining:I

.field final synthetic blacklist this$0:Ljava/util/ImmutableCollections$SetN;


# direct methods
.method constructor blacklist <init>(Ljava/util/ImmutableCollections$SetN;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 961
    .local p0, "this":Ljava/util/ImmutableCollections$SetN$SetNIterator;, "Ljava/util/ImmutableCollections$SetN<TE;>.SetNIterator;"
    iput-object p1, p0, Ljava/util/ImmutableCollections$SetN$SetNIterator;->this$0:Ljava/util/ImmutableCollections$SetN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    iget v0, p1, Ljava/util/ImmutableCollections$SetN;->size:I

    iput v0, p0, Ljava/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    .line 965
    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetSALT32L()J

    move-result-wide v0

    iget-object p1, p1, Ljava/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length p1, p1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const/16 p1, 0x20

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Ljava/util/ImmutableCollections$SetN$SetNIterator;->idx:I

    .line 966
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 970
    .local p0, "this":Ljava/util/ImmutableCollections$SetN$SetNIterator;, "Ljava/util/ImmutableCollections$SetN<TE;>.SetNIterator;"
    iget v0, p0, Ljava/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 975
    .local p0, "this":Ljava/util/ImmutableCollections$SetN$SetNIterator;, "Ljava/util/ImmutableCollections$SetN<TE;>.SetNIterator;"
    iget v0, p0, Ljava/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    if-lez v0, :cond_2f

    .line 977
    iget v0, p0, Ljava/util/ImmutableCollections$SetN$SetNIterator;->idx:I

    .line 978
    .local v0, "idx":I
    iget-object v1, p0, Ljava/util/ImmutableCollections$SetN$SetNIterator;->this$0:Ljava/util/ImmutableCollections$SetN;

    iget-object v1, v1, Ljava/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v1, v1

    .line 981
    .local v1, "len":I
    :cond_b
    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetREVERSE()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 982
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_1d

    .line 983
    const/4 v0, 0x0

    goto :goto_1d

    .line 986
    :cond_17
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1d

    .line 987
    add-int/lit8 v0, v1, -0x1

    .line 990
    :cond_1d
    :goto_1d
    iget-object v2, p0, Ljava/util/ImmutableCollections$SetN$SetNIterator;->this$0:Ljava/util/ImmutableCollections$SetN;

    iget-object v2, v2, Ljava/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    move-object v3, v2

    .local v3, "element":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_b

    .line 991
    iput v0, p0, Ljava/util/ImmutableCollections$SetN$SetNIterator;->idx:I

    .line 992
    iget v2, p0, Ljava/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    .line 993
    return-object v3

    .line 995
    .end local v0    # "idx":I
    .end local v1    # "len":I
    .end local v3    # "element":Ljava/lang/Object;, "TE;"
    :cond_2f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
