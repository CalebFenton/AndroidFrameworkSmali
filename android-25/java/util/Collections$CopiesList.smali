.class Ljava/util/Collections$CopiesList;
.super Ljava/util/AbstractList;
.source "Collections.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CopiesList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$CopiesList$-java_util_stream_Stream_parallelStream__LambdaImpl0;,
        Ljava/util/Collections$CopiesList$-java_util_stream_Stream_stream__LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x26033c45b17003f8L


# instance fields
.field final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/Collections$CopiesList;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/util/Collections$CopiesList;->-assertionsDisabled:Z

    #@b
    .line 4190
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(ILjava/lang/Object;)V
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    #@1
    .line 4199
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@4
    .line 4200
    sget-boolean v1, Ljava/util/Collections$CopiesList;->-assertionsDisabled:Z

    #@6
    if-nez v1, :cond_1

    #@8
    if-ltz p1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :cond_0
    if-nez v0, :cond_1

    #@d
    new-instance v0, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v0

    #@13
    .line 4201
    :cond_1
    iput p1, p0, Ljava/util/Collections$CopiesList;->n:I

    #@15
    .line 4202
    iput-object p2, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    #@17
    .line 4199
    return-void
.end method


# virtual methods
.method synthetic -java_util_Collections$CopiesList_lambda$6(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 4265
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method synthetic -java_util_Collections$CopiesList_lambda$7(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 4270
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 4210
    iget v1, p0, Ljava/util/Collections$CopiesList;->n:I

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    #@7
    invoke-static {p1, v0}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    :cond_0
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 4222
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 4223
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Index: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 4224
    const-string/jumbo v2, ", Size: "

    #@1b
    .line 4223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 4224
    iget v2, p0, Ljava/util/Collections$CopiesList;->n:I

    #@21
    .line 4223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 4225
    :cond_1
    iget-object v0, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    #@2f
    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4214
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$CopiesList;->contains(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, -0x1

    #@9
    goto :goto_0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4218
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$CopiesList;->contains(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, -0x1

    #@c
    goto :goto_0
.end method

.method public parallelStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 4270
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    #@6
    move-result-object v0

    #@7
    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    #@a
    move-result-object v0

    #@b
    new-instance v1, Ljava/util/Collections$CopiesList$-java_util_stream_Stream_parallelStream__LambdaImpl0;

    #@d
    invoke-direct {v1, p0}, Ljava/util/Collections$CopiesList$-java_util_stream_Stream_parallelStream__LambdaImpl0;-><init>(Ljava/util/Collections$CopiesList;)V

    #@10
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 4206
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    #@2
    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 4275
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    invoke-virtual {p0}, Ljava/util/Collections$CopiesList;->stream()Ljava/util/stream/Stream;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/stream/Stream;->spliterator()Ljava/util/Spliterator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 4265
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    #@6
    move-result-object v0

    #@7
    new-instance v1, Ljava/util/Collections$CopiesList$-java_util_stream_Stream_stream__LambdaImpl0;

    #@9
    invoke-direct {v1, p0}, Ljava/util/Collections$CopiesList$-java_util_stream_Stream_stream__LambdaImpl0;-><init>(Ljava/util/Collections$CopiesList;)V

    #@c
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 4252
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    if-gez p1, :cond_0

    #@2
    .line 4253
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "fromIndex = "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 4254
    :cond_0
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    #@1e
    if-le p2, v0, :cond_1

    #@20
    .line 4255
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@22
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v2, "toIndex = "

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 4256
    :cond_1
    if-le p1, p2, :cond_2

    #@3c
    .line 4257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3e
    new-instance v1, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v2, "fromIndex("

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    .line 4258
    const-string/jumbo v2, ") > toIndex("

    #@51
    .line 4257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    .line 4258
    const-string/jumbo v2, ")"

    #@5c
    .line 4257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@67
    throw v0

    #@68
    .line 4259
    :cond_2
    new-instance v0, Ljava/util/Collections$CopiesList;

    #@6a
    sub-int v1, p2, p1

    #@6c
    iget-object v2, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    #@6e
    invoke-direct {v0, v1, v2}, Ljava/util/Collections$CopiesList;-><init>(ILjava/lang/Object;)V

    #@71
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 4229
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    iget v1, p0, Ljava/util/Collections$CopiesList;->n:I

    #@2
    new-array v0, v1, [Ljava/lang/Object;

    #@4
    .line 4230
    .local v0, "a":[Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 4231
    iget v1, p0, Ljava/util/Collections$CopiesList;->n:I

    #@a
    iget-object v2, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    #@c
    const/4 v3, 0x0

    #@d
    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    #@10
    .line 4232
    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 4237
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    #@4
    .line 4238
    .local v0, "n":I
    array-length v1, p1

    #@5
    if-ge v1, v0, :cond_1

    #@7
    .line 4240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@e
    move-result-object v1

    #@f
    .line 4239
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@12
    move-result-object p1

    #@13
    .end local p1    # "a":[Ljava/lang/Object;, "[TT;"
    check-cast p1, [Ljava/lang/Object;

    #@15
    .line 4241
    .restart local p1    # "a":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 4242
    iget-object v1, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    #@1b
    invoke-static {p1, v2, v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    #@1e
    .line 4248
    :cond_0
    :goto_0
    return-object p1

    #@1f
    .line 4244
    :cond_1
    iget-object v1, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    #@21
    invoke-static {p1, v2, v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    #@24
    .line 4245
    array-length v1, p1

    #@25
    if-le v1, v0, :cond_0

    #@27
    .line 4246
    aput-object v3, p1, v0

    #@29
    goto :goto_0
.end method
