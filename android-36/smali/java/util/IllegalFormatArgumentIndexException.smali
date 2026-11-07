.class Ljava/util/IllegalFormatArgumentIndexException;
.super Ljava/util/IllegalFormatException;
.source "IllegalFormatArgumentIndexException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x3a2c269d8668ff20L


# instance fields
.field private final blacklist illegalIndex:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2
    .param p1, "index"    # I

    .line 47
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 48
    iput p1, p0, Ljava/util/IllegalFormatArgumentIndexException;->illegalIndex:I

    .line 49
    return-void
.end method


# virtual methods
.method blacklist getIndex()I
    .registers 2

    .line 58
    iget v0, p0, Ljava/util/IllegalFormatArgumentIndexException;->illegalIndex:I

    return v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 4

    .line 63
    invoke-virtual {p0}, Ljava/util/IllegalFormatArgumentIndexException;->getIndex()I

    move-result v0

    .line 65
    .local v0, "index":I
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_b

    .line 66
    const-string v1, "Format argument index: (not representable as int)"

    return-object v1

    .line 69
    :cond_b
    invoke-virtual {p0}, Ljava/util/IllegalFormatArgumentIndexException;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Illegal format argument index = %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
