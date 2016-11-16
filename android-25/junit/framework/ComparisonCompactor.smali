.class public Ljunit/framework/ComparisonCompactor;
.super Ljava/lang/Object;
.source "ComparisonCompactor.java"


# static fields
.field private static final DELTA_END:Ljava/lang/String; = "]"

.field private static final DELTA_START:Ljava/lang/String; = "["

.field private static final ELLIPSIS:Ljava/lang/String; = "..."


# instance fields
.field private fActual:Ljava/lang/String;

.field private fContextLength:I

.field private fExpected:Ljava/lang/String;

.field private fPrefix:I

.field private fSuffix:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "contextLength"    # I
    .param p2, "expected"    # Ljava/lang/String;
    .param p3, "actual"    # Ljava/lang/String;

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 20
    iput p1, p0, Ljunit/framework/ComparisonCompactor;->fContextLength:I

    #@5
    .line 21
    iput-object p2, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    #@7
    .line 22
    iput-object p3, p0, Ljunit/framework/ComparisonCompactor;->fActual:Ljava/lang/String;

    #@9
    .line 19
    return-void
.end method

.method private areStringsEqual()Z
    .locals 2

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    #@2
    iget-object v1, p0, Ljunit/framework/ComparisonCompactor;->fActual:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private compactString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "["

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    #@e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@11
    move-result v3

    #@12
    iget v4, p0, Ljunit/framework/ComparisonCompactor;->fSuffix:I

    #@14
    sub-int/2addr v3, v4

    #@15
    add-int/lit8 v3, v3, 0x1

    #@17
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, "]"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 41
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    #@2c
    if-lez v1, :cond_0

    #@2e
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-direct {p0}, Ljunit/framework/ComparisonCompactor;->computeCommonPrefix()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    .line 43
    :cond_0
    iget v1, p0, Ljunit/framework/ComparisonCompactor;->fSuffix:I

    #@45
    if-lez v1, :cond_1

    #@47
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-direct {p0}, Ljunit/framework/ComparisonCompactor;->computeCommonSuffix()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    .line 45
    :cond_1
    return-object v0
.end method

.method private computeCommonPrefix()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget v0, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    #@7
    iget v2, p0, Ljunit/framework/ComparisonCompactor;->fContextLength:I

    #@9
    if-le v0, v2, :cond_0

    #@b
    const-string/jumbo v0, "..."

    #@e
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    #@14
    iget v2, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    #@16
    iget v3, p0, Ljunit/framework/ComparisonCompactor;->fContextLength:I

    #@18
    sub-int/2addr v2, v3

    #@19
    const/4 v3, 0x0

    #@1a
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    #@1d
    move-result v2

    #@1e
    iget v3, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    #@20
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    return-object v0

    #@2d
    :cond_0
    const-string/jumbo v0, ""

    #@30
    goto :goto_0
.end method

.method private computeCommonSuffix()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 72
    iget-object v1, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    #@2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    iget v2, p0, Ljunit/framework/ComparisonCompactor;->fSuffix:I

    #@8
    sub-int/2addr v1, v2

    #@9
    add-int/lit8 v1, v1, 0x1

    #@b
    iget v2, p0, Ljunit/framework/ComparisonCompactor;->fContextLength:I

    #@d
    add-int/2addr v1, v2

    #@e
    iget-object v2, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    #@10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@13
    move-result v2

    #@14
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@17
    move-result v0

    #@18
    .line 73
    .local v0, "end":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    iget-object v2, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    #@1f
    iget-object v3, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    #@21
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@24
    move-result v3

    #@25
    iget v4, p0, Ljunit/framework/ComparisonCompactor;->fSuffix:I

    #@27
    sub-int/2addr v3, v4

    #@28
    add-int/lit8 v3, v3, 0x1

    #@2a
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    iget-object v1, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    #@34
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@37
    move-result v1

    #@38
    iget v3, p0, Ljunit/framework/ComparisonCompactor;->fSuffix:I

    #@3a
    sub-int/2addr v1, v3

    #@3b
    add-int/lit8 v1, v1, 0x1

    #@3d
    iget-object v3, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    #@3f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@42
    move-result v3

    #@43
    iget v4, p0, Ljunit/framework/ComparisonCompactor;->fContextLength:I

    #@45
    sub-int/2addr v3, v4

    #@46
    if-ge v1, v3, :cond_0

    #@48
    const-string/jumbo v1, "..."

    #@4b
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    return-object v1

    #@54
    :cond_0
    const-string/jumbo v1, ""

    #@57
    goto :goto_0
.end method

.method private findCommonPrefix()V
    .locals 4

    #@0
    .prologue
    .line 49
    const/4 v1, 0x0

    #@1
    iput v1, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    #@3
    .line 50
    iget-object v1, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    #@5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    iget-object v2, p0, Ljunit/framework/ComparisonCompactor;->fActual:Ljava/lang/String;

    #@b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@e
    move-result v2

    #@f
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@12
    move-result v0

    #@13
    .line 51
    .local v0, "end":I
    :goto_0
    iget v1, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    #@15
    if-ge v1, v0, :cond_0

    #@17
    .line 52
    iget-object v1, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    #@19
    iget v2, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v1

    #@1f
    iget-object v2, p0, Ljunit/framework/ComparisonCompactor;->fActual:Ljava/lang/String;

    #@21
    iget v3, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v2

    #@27
    if-eq v1, v2, :cond_1

    #@29
    .line 48
    :cond_0
    return-void

    #@2a
    .line 51
    :cond_1
    iget v1, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    #@2c
    add-int/lit8 v1, v1, 0x1

    #@2e
    iput v1, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    #@30
    goto :goto_0
.end method

.method private findCommonSuffix()V
    .locals 4

    #@0
    .prologue
    .line 58
    iget-object v2, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    #@2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v1, v2, -0x1

    #@8
    .line 59
    .local v1, "expectedSuffix":I
    iget-object v2, p0, Ljunit/framework/ComparisonCompactor;->fActual:Ljava/lang/String;

    #@a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@d
    move-result v2

    #@e
    add-int/lit8 v0, v2, -0x1

    #@10
    .line 60
    .local v0, "actualSuffix":I
    :goto_0
    iget v2, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    #@12
    if-lt v0, v2, :cond_0

    #@14
    iget v2, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    #@16
    if-lt v1, v2, :cond_0

    #@18
    .line 61
    iget-object v2, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    #@1a
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v2

    #@1e
    iget-object v3, p0, Ljunit/framework/ComparisonCompactor;->fActual:Ljava/lang/String;

    #@20
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    #@23
    move-result v3

    #@24
    if-eq v2, v3, :cond_1

    #@26
    .line 64
    :cond_0
    iget-object v2, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    #@28
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@2b
    move-result v2

    #@2c
    sub-int/2addr v2, v1

    #@2d
    iput v2, p0, Ljunit/framework/ComparisonCompactor;->fSuffix:I

    #@2f
    .line 57
    return-void

    #@30
    .line 60
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@32
    add-int/lit8 v1, v1, -0x1

    #@34
    goto :goto_0
.end method

.method private static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 82
    const-string/jumbo v0, ""

    #@3
    .line 83
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    #@5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    if-lez v1, :cond_0

    #@b
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, " "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 85
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    const-string/jumbo v2, "expected:<"

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    const-string/jumbo v2, "> but was:<"

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    const-string/jumbo v2, ">"

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    return-object v1
.end method


# virtual methods
.method public compact(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 26
    iget-object v2, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    #@2
    if-eqz v2, :cond_0

    #@4
    iget-object v2, p0, Ljunit/framework/ComparisonCompactor;->fActual:Ljava/lang/String;

    #@6
    if-nez v2, :cond_1

    #@8
    .line 29
    :cond_0
    iget-object v2, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    #@a
    iget-object v3, p0, Ljunit/framework/ComparisonCompactor;->fActual:Ljava/lang/String;

    #@c
    invoke-static {p1, v2, v3}, Ljunit/framework/ComparisonCompactor;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    return-object v2

    #@11
    .line 26
    :cond_1
    invoke-direct {p0}, Ljunit/framework/ComparisonCompactor;->areStringsEqual()Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_0

    #@17
    .line 31
    invoke-direct {p0}, Ljunit/framework/ComparisonCompactor;->findCommonPrefix()V

    #@1a
    .line 32
    invoke-direct {p0}, Ljunit/framework/ComparisonCompactor;->findCommonSuffix()V

    #@1d
    .line 33
    iget-object v2, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    #@1f
    invoke-direct {p0, v2}, Ljunit/framework/ComparisonCompactor;->compactString(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 34
    .local v1, "expected":Ljava/lang/String;
    iget-object v2, p0, Ljunit/framework/ComparisonCompactor;->fActual:Ljava/lang/String;

    #@25
    invoke-direct {p0, v2}, Ljunit/framework/ComparisonCompactor;->compactString(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 36
    .local v0, "actual":Ljava/lang/String;
    invoke-static {p1, v1, v0}, Ljunit/framework/ComparisonCompactor;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    return-object v2
.end method
