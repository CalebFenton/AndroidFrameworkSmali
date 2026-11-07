.class Ljava/util/Arrays$ArrayItr;
.super Ljava/lang/Object;
.source "Arrays.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Arrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final blacklist a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private blacklist cursor:I


# direct methods
.method constructor blacklist <init>([Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 4666
    .local p0, "this":Ljava/util/Arrays$ArrayItr;, "Ljava/util/Arrays$ArrayItr<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4667
    iput-object p1, p0, Ljava/util/Arrays$ArrayItr;->a:[Ljava/lang/Object;

    .line 4668
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 4672
    .local p0, "this":Ljava/util/Arrays$ArrayItr;, "Ljava/util/Arrays$ArrayItr<TE;>;"
    iget v0, p0, Ljava/util/Arrays$ArrayItr;->cursor:I

    iget-object v1, p0, Ljava/util/Arrays$ArrayItr;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 4677
    .local p0, "this":Ljava/util/Arrays$ArrayItr;, "Ljava/util/Arrays$ArrayItr<TE;>;"
    iget v0, p0, Ljava/util/Arrays$ArrayItr;->cursor:I

    .line 4678
    .local v0, "i":I
    iget-object v1, p0, Ljava/util/Arrays$ArrayItr;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 4681
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/Arrays$ArrayItr;->cursor:I

    .line 4682
    iget-object v1, p0, Ljava/util/Arrays$ArrayItr;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1

    .line 4679
    :cond_10
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
