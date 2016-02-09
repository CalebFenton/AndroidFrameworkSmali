.class Ljava/util/regex/MatchResultImpl;
.super Ljava/lang/Object;
.source "MatchResultImpl.java"

# interfaces
.implements Ljava/util/regex/MatchResult;


# instance fields
.field private offsets:[I

.field private text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offsets"    # [I

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Ljava/util/regex/MatchResultImpl;->text:Ljava/lang/String;

    #@5
    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [I

    #@b
    iput-object v0, p0, Ljava/util/regex/MatchResultImpl;->offsets:[I

    #@d
    .line 40
    return-void
.end method


# virtual methods
.method public end()I
    .locals 1

    #@0
    .prologue
    .line 46
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Ljava/util/regex/MatchResultImpl;->end(I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public end(I)I
    .locals 2
    .param p1, "group"    # I

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Ljava/util/regex/MatchResultImpl;->offsets:[I

    #@2
    mul-int/lit8 v1, p1, 0x2

    #@4
    add-int/lit8 v1, v1, 0x1

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public group()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Ljava/util/regex/MatchResultImpl;->text:Ljava/lang/String;

    #@2
    invoke-virtual {p0}, Ljava/util/regex/MatchResultImpl;->start()I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0}, Ljava/util/regex/MatchResultImpl;->end()I

    #@9
    move-result v2

    #@a
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public group(I)Ljava/lang/String;
    .locals 5
    .param p1, "group"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 58
    iget-object v2, p0, Ljava/util/regex/MatchResultImpl;->offsets:[I

    #@3
    mul-int/lit8 v3, p1, 0x2

    #@5
    aget v0, v2, v3

    #@7
    .line 59
    .local v0, "from":I
    iget-object v2, p0, Ljava/util/regex/MatchResultImpl;->offsets:[I

    #@9
    mul-int/lit8 v3, p1, 0x2

    #@b
    add-int/lit8 v3, v3, 0x1

    #@d
    aget v1, v2, v3

    #@f
    .line 60
    .local v1, "to":I
    if-eq v0, v4, :cond_0

    #@11
    if-ne v1, v4, :cond_1

    #@13
    .line 61
    :cond_0
    const/4 v2, 0x0

    #@14
    return-object v2

    #@15
    .line 63
    :cond_1
    iget-object v2, p0, Ljava/util/regex/MatchResultImpl;->text:Ljava/lang/String;

    #@17
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    return-object v2
.end method

.method public groupCount()I
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Ljava/util/regex/MatchResultImpl;->offsets:[I

    #@2
    array-length v0, v0

    #@3
    div-int/lit8 v0, v0, 0x2

    #@5
    add-int/lit8 v0, v0, -0x1

    #@7
    return v0
.end method

.method public start()I
    .locals 1

    #@0
    .prologue
    .line 72
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Ljava/util/regex/MatchResultImpl;->start(I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public start(I)I
    .locals 2
    .param p1, "group"    # I

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Ljava/util/regex/MatchResultImpl;->offsets:[I

    #@2
    mul-int/lit8 v1, p1, 0x2

    #@4
    aget v0, v0, v1

    #@6
    return v0
.end method
