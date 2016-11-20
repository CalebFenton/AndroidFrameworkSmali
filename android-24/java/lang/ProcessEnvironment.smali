.class final Ljava/lang/ProcessEnvironment;
.super Ljava/lang/Object;
.source "ProcessEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ProcessEnvironment$ExternalData;,
        Ljava/lang/ProcessEnvironment$StringEntry;,
        Ljava/lang/ProcessEnvironment$StringEntrySet;,
        Ljava/lang/ProcessEnvironment$StringEnvironment;,
        Ljava/lang/ProcessEnvironment$StringKeySet;,
        Ljava/lang/ProcessEnvironment$StringValues;,
        Ljava/lang/ProcessEnvironment$Value;,
        Ljava/lang/ProcessEnvironment$Variable;
    }
.end annotation


# static fields
.field static final MIN_NAME_LENGTH:I

.field private static final theEnvironment:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;"
        }
    .end annotation
.end field

.field private static final theUnmodifiableEnvironment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0([B[B)Z
    .locals 1
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    #@0
    .prologue
    invoke-static {p0, p1}, Ljava/lang/ProcessEnvironment;->arrayEquals([B[B)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1([B[B)I
    .locals 1
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    #@0
    .prologue
    invoke-static {p0, p1}, Ljava/lang/ProcessEnvironment;->arrayCompare([B[B)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2([B)I
    .locals 1
    .param p0, "x"    # [B

    #@0
    .prologue
    invoke-static {p0}, Ljava/lang/ProcessEnvironment;->arrayHash([B)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Ljava/lang/String;)V
    .locals 0
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Ljava/lang/ProcessEnvironment;->validateValue(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Ljava/lang/ProcessEnvironment;->validateVariable(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 70
    invoke-static {}, Ljava/lang/ProcessEnvironment;->environ()[[B

    #@3
    move-result-object v0

    #@4
    .line 71
    .local v0, "environ":[[B
    new-instance v2, Ljava/util/HashMap;

    #@6
    array-length v3, v0

    #@7
    div-int/lit8 v3, v3, 0x2

    #@9
    add-int/lit8 v3, v3, 0x3

    #@b
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    #@e
    sput-object v2, Ljava/lang/ProcessEnvironment;->theEnvironment:Ljava/util/HashMap;

    #@10
    .line 74
    array-length v2, v0

    #@11
    add-int/lit8 v1, v2, -0x1

    #@13
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    #@15
    .line 75
    sget-object v2, Ljava/lang/ProcessEnvironment;->theEnvironment:Ljava/util/HashMap;

    #@17
    add-int/lit8 v3, v1, -0x1

    #@19
    aget-object v3, v0, v3

    #@1b
    invoke-static {v3}, Ljava/lang/ProcessEnvironment$Variable;->valueOf([B)Ljava/lang/ProcessEnvironment$Variable;

    #@1e
    move-result-object v3

    #@1f
    .line 76
    aget-object v4, v0, v1

    #@21
    invoke-static {v4}, Ljava/lang/ProcessEnvironment$Value;->valueOf([B)Ljava/lang/ProcessEnvironment$Value;

    #@24
    move-result-object v4

    #@25
    .line 75
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 74
    add-int/lit8 v1, v1, -0x2

    #@2a
    goto :goto_0

    #@2b
    .line 80
    :cond_0
    new-instance v2, Ljava/lang/ProcessEnvironment$StringEnvironment;

    #@2d
    sget-object v3, Ljava/lang/ProcessEnvironment;->theEnvironment:Ljava/util/HashMap;

    #@2f
    invoke-direct {v2, v3}, Ljava/lang/ProcessEnvironment$StringEnvironment;-><init>(Ljava/util/Map;)V

    #@32
    .line 79
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@35
    move-result-object v2

    #@36
    .line 78
    sput-object v2, Ljava/lang/ProcessEnvironment;->theUnmodifiableEnvironment:Ljava/util/Map;

    #@38
    .line 61
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static arrayCompare([B[B)I
    .locals 4
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    #@0
    .prologue
    .line 414
    array-length v2, p0

    #@1
    array-length v3, p1

    #@2
    if-ge v2, v3, :cond_0

    #@4
    array-length v1, p0

    #@5
    .line 415
    .local v1, "min":I
    :goto_0
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    #@8
    .line 416
    aget-byte v2, p0, v0

    #@a
    aget-byte v3, p1, v0

    #@c
    if-eq v2, v3, :cond_1

    #@e
    .line 417
    aget-byte v2, p0, v0

    #@10
    aget-byte v3, p1, v0

    #@12
    sub-int/2addr v2, v3

    #@13
    return v2

    #@14
    .line 414
    .end local v0    # "i":I
    .end local v1    # "min":I
    :cond_0
    array-length v1, p1

    #@15
    .restart local v1    # "min":I
    goto :goto_0

    #@16
    .line 415
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_1

    #@19
    .line 418
    :cond_2
    array-length v2, p0

    #@1a
    array-length v3, p1

    #@1b
    sub-int/2addr v2, v3

    #@1c
    return v2
.end method

.method private static arrayEquals([B[B)Z
    .locals 4
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 423
    array-length v1, p0

    #@2
    array-length v2, p1

    #@3
    if-eq v1, v2, :cond_0

    #@5
    .line 424
    return v3

    #@6
    .line 425
    :cond_0
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@8
    if-ge v0, v1, :cond_2

    #@a
    .line 426
    aget-byte v1, p0, v0

    #@c
    aget-byte v2, p1, v0

    #@e
    if-eq v1, v2, :cond_1

    #@10
    .line 427
    return v3

    #@11
    .line 425
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 428
    :cond_2
    const/4 v1, 0x1

    #@15
    return v1
.end method

.method private static arrayHash([B)I
    .locals 4
    .param p0, "x"    # [B

    #@0
    .prologue
    .line 433
    const/4 v0, 0x0

    #@1
    .line 434
    .local v0, "hash":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    #@3
    if-ge v1, v2, :cond_0

    #@5
    .line 435
    mul-int/lit8 v2, v0, 0x1f

    #@7
    aget-byte v3, p0, v1

    #@9
    add-int v0, v2, v3

    #@b
    .line 434
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 436
    :cond_0
    return v0
.end method

.method static emptyEnvironment(I)Ljava/util/Map;
    .locals 2
    .param p0, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 101
    new-instance v0, Ljava/lang/ProcessEnvironment$StringEnvironment;

    #@2
    new-instance v1, Ljava/util/HashMap;

    #@4
    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(I)V

    #@7
    invoke-direct {v0, v1}, Ljava/lang/ProcessEnvironment$StringEnvironment;-><init>(Ljava/util/Map;)V

    #@a
    return-object v0
.end method

.method private static native environ()[[B
.end method

.method static environment()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 95
    new-instance v1, Ljava/lang/ProcessEnvironment$StringEnvironment;

    #@2
    .line 96
    sget-object v0, Ljava/lang/ProcessEnvironment;->theEnvironment:Ljava/util/HashMap;

    #@4
    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/Map;

    #@a
    .line 95
    invoke-direct {v1, v0}, Ljava/lang/ProcessEnvironment$StringEnvironment;-><init>(Ljava/util/Map;)V

    #@d
    return-object v1
.end method

.method static getenv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 85
    sget-object v0, Ljava/lang/ProcessEnvironment;->theUnmodifiableEnvironment:Ljava/util/Map;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method static getenv()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 90
    sget-object v0, Ljava/lang/ProcessEnvironment;->theUnmodifiableEnvironment:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static toEnvironmentBlock(Ljava/util/Map;[I)[B
    .locals 1
    .param p1, "envc"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[I)[B"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    .line 296
    if-nez p0, :cond_0

    #@3
    .end local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    #@4
    .line 297
    .restart local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    check-cast p0, Ljava/lang/ProcessEnvironment$StringEnvironment;

    #@6
    .end local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/lang/ProcessEnvironment$StringEnvironment;->toEnvironmentBlock([I)[B

    #@9
    move-result-object v0

    #@a
    goto :goto_0
.end method

.method private static validateValue(Ljava/lang/String;)V
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 119
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    #@4
    move-result v0

    #@5
    const/4 v1, -0x1

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Invalid environment variable value: \""

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, "\""

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 120
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 118
    :cond_0
    return-void
.end method

.method private static validateVariable(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 111
    const/16 v0, 0x3d

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 112
    const/4 v0, 0x0

    #@a
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    #@d
    move-result v0

    #@e
    if-eq v0, v1, :cond_1

    #@10
    .line 113
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Invalid environment variable name: \""

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, "\""

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 113
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 110
    :cond_1
    return-void
.end method
