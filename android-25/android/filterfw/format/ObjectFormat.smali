.class public Landroid/filterfw/format/ObjectFormat;
.super Ljava/lang/Object;
.source "ObjectFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static bytesPerSampleForClass(Ljava/lang/Class;I)I
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "target"    # I

    #@0
    .prologue
    .line 59
    const/4 v1, 0x2

    #@1
    if-ne p1, v1, :cond_1

    #@3
    .line 60
    const-class v1, Landroid/filterfw/core/NativeBuffer;

    #@5
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Native object-based formats must be of a NativeBuffer subclass! (Received class: "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    .line 62
    const-string/jumbo v3, ")."

    #@20
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1

    #@2c
    .line 65
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Landroid/filterfw/core/NativeBuffer;

    #@32
    invoke-virtual {v1}, Landroid/filterfw/core/NativeBuffer;->getElementSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    move-result v1

    #@36
    return v1

    #@37
    .line 66
    :catch_0
    move-exception v0

    #@38
    .line 67
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    #@3a
    new-instance v2, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v3, "Could not determine the size of an element in a native object-based frame of type "

    #@42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    .line 68
    const-string/jumbo v3, "! Perhaps it is missing a "

    #@4d
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    .line 69
    const-string/jumbo v3, "default constructor?"

    #@54
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v1

    #@60
    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x1

    #@61
    return v1
.end method

.method public static fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "target"    # I

    #@0
    .prologue
    .line 41
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0, p1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "count"    # I
    .param p2, "target"    # I

    #@0
    .prologue
    .line 31
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    #@2
    const/16 v1, 0x8

    #@4
    invoke-direct {v0, v1, p2}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    #@7
    .line 32
    .local v0, "result":Landroid/filterfw/core/MutableFrameFormat;
    invoke-static {p0}, Landroid/filterfw/format/ObjectFormat;->getBoxedClass(Ljava/lang/Class;)Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setObjectClass(Ljava/lang/Class;)V

    #@e
    .line 33
    if-eqz p1, :cond_0

    #@10
    .line 34
    invoke-virtual {v0, p1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(I)V

    #@13
    .line 36
    :cond_0
    invoke-static {p0, p2}, Landroid/filterfw/format/ObjectFormat;->bytesPerSampleForClass(Ljava/lang/Class;I)I

    #@16
    move-result v1

    #@17
    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    #@1a
    .line 37
    return-object v0
.end method

.method public static fromObject(Ljava/lang/Object;I)Landroid/filterfw/core/MutableFrameFormat;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "target"    # I

    #@0
    .prologue
    .line 45
    if-nez p0, :cond_0

    #@2
    .line 46
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    #@4
    const/16 v1, 0x8

    #@6
    invoke-direct {v0, v1, p1}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    #@9
    .line 45
    :goto_0
    return-object v0

    #@a
    .line 47
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v0

    #@e
    const/4 v1, 0x0

    #@f
    invoke-static {v0, v1, p1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    #@12
    move-result-object v0

    #@13
    goto :goto_0
.end method

.method public static fromObject(Ljava/lang/Object;II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "count"    # I
    .param p2, "target"    # I

    #@0
    .prologue
    .line 51
    if-nez p0, :cond_0

    #@2
    .line 52
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    #@4
    const/16 v1, 0x8

    #@6
    invoke-direct {v0, v1, p2}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    #@9
    .line 51
    :goto_0
    return-object v0

    #@a
    .line 53
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v0

    #@e
    invoke-static {v0, p1, p2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    #@11
    move-result-object v0

    #@12
    goto :goto_0
.end method

.method private static getBoxedClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .param p0, "type"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    .line 80
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@8
    if-ne p0, v0, :cond_0

    #@a
    .line 81
    const-class v0, Ljava/lang/Boolean;

    #@c
    return-object v0

    #@d
    .line 82
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@f
    if-ne p0, v0, :cond_1

    #@11
    .line 83
    const-class v0, Ljava/lang/Byte;

    #@13
    return-object v0

    #@14
    .line 84
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@16
    if-ne p0, v0, :cond_2

    #@18
    .line 85
    const-class v0, Ljava/lang/Character;

    #@1a
    return-object v0

    #@1b
    .line 86
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@1d
    if-ne p0, v0, :cond_3

    #@1f
    .line 87
    const-class v0, Ljava/lang/Short;

    #@21
    return-object v0

    #@22
    .line 88
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@24
    if-ne p0, v0, :cond_4

    #@26
    .line 89
    const-class v0, Ljava/lang/Integer;

    #@28
    return-object v0

    #@29
    .line 90
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@2b
    if-ne p0, v0, :cond_5

    #@2d
    .line 91
    const-class v0, Ljava/lang/Long;

    #@2f
    return-object v0

    #@30
    .line 92
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@32
    if-ne p0, v0, :cond_6

    #@34
    .line 93
    const-class v0, Ljava/lang/Float;

    #@36
    return-object v0

    #@37
    .line 94
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@39
    if-ne p0, v0, :cond_7

    #@3b
    .line 95
    const-class v0, Ljava/lang/Double;

    #@3d
    return-object v0

    #@3e
    .line 97
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@40
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v2, "Unknown primitive type: "

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    const-string/jumbo v2, "!"

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    .line 97
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@62
    throw v0

    #@63
    .line 102
    :cond_8
    return-object p0
.end method
