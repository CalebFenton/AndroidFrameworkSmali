.class public Landroid_maps_conflict_avoidance/com/google/debug/DebugUtil;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getAntProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    #@0
    .prologue
    .line 25
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/debug/DebugUtil;->isAntPropertyExpanded(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .end local p1    # "def":Ljava/lang/String;
    :goto_0
    return-object p1

    #@7
    .restart local p1    # "def":Ljava/lang/String;
    :cond_0
    move-object p1, p0

    #@8
    goto :goto_0
.end method

.method public static getAntPropertyOrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 54
    invoke-static {p0, v0}, Landroid_maps_conflict_avoidance/com/google/debug/DebugUtil;->getAntProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static isAntPropertyExpanded(Ljava/lang/String;)Z
    .locals 2
    .param p0, "property"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const-string/jumbo v1, "${"

    #@4
    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p0, "cls"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    #@3
    move-result-object v2

    #@4
    return-object v2

    #@5
    :catch_0
    move-exception v1

    #@6
    .line 111
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "Cannot instantiate instance of class "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v2

    #@24
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    #@25
    .line 113
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@27
    new-instance v3, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v4, "No public default constructor for class "

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@42
    throw v2
.end method
