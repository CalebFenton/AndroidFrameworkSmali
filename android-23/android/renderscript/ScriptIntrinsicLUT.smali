.class public final Landroid/renderscript/ScriptIntrinsicLUT;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicLUT.java"


# instance fields
.field private final mCache:[B

.field private mDirty:Z

.field private final mMatrix:Landroid/renderscript/Matrix4f;

.field private mTables:Landroid/renderscript/Allocation;


# direct methods
.method private constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    const/16 v2, 0x400

    #@2
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    #@5
    .line 26
    new-instance v1, Landroid/renderscript/Matrix4f;

    #@7
    invoke-direct {v1}, Landroid/renderscript/Matrix4f;-><init>()V

    #@a
    iput-object v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mMatrix:Landroid/renderscript/Matrix4f;

    #@c
    .line 28
    new-array v1, v2, [B

    #@e
    iput-object v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    #@10
    .line 29
    const/4 v1, 0x1

    #@11
    iput-boolean v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    #@13
    .line 33
    invoke-static {p3}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@16
    move-result-object v1

    #@17
    invoke-static {p3, v1, v2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/renderscript/Allocation;

    #@1d
    .line 34
    const/4 v0, 0x0

    #@1e
    .local v0, "ct":I
    :goto_0
    const/16 v1, 0x100

    #@20
    if-ge v0, v1, :cond_0

    #@22
    .line 35
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    #@24
    int-to-byte v2, v0

    #@25
    aput-byte v2, v1, v0

    #@27
    .line 36
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    #@29
    add-int/lit16 v2, v0, 0x100

    #@2b
    int-to-byte v3, v0

    #@2c
    aput-byte v3, v1, v2

    #@2e
    .line 37
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    #@30
    add-int/lit16 v2, v0, 0x200

    #@32
    int-to-byte v3, v0

    #@33
    aput-byte v3, v1, v2

    #@35
    .line 38
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    #@37
    add-int/lit16 v2, v0, 0x300

    #@39
    int-to-byte v3, v0

    #@3a
    aput-byte v3, v1, v2

    #@3c
    .line 34
    add-int/lit8 v0, v0, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 40
    :cond_0
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/renderscript/Allocation;

    #@41
    const/4 v2, 0x0

    #@42
    invoke-virtual {p0, v2, v1}, Landroid/renderscript/ScriptIntrinsicLUT;->setVar(ILandroid/renderscript/BaseObj;)V

    #@45
    .line 31
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicLUT;
    .locals 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;

    #@0
    .prologue
    .line 54
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    #@3
    move-result-wide v2

    #@4
    const/4 v4, 0x3

    #@5
    invoke-virtual {p0, v4, v2, v3}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    #@8
    move-result-wide v0

    #@9
    .line 55
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ScriptIntrinsicLUT;

    #@b
    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicLUT;-><init>(JLandroid/renderscript/RenderScript;)V

    #@e
    return-object v2
.end method

.method private validate(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    const/16 v0, 0xff

    #@2
    .line 61
    if-ltz p1, :cond_0

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 62
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@8
    const-string/jumbo v1, "Index out of range (0-255)."

    #@b
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 64
    :cond_1
    if-ltz p2, :cond_2

    #@11
    if-le p2, v0, :cond_3

    #@13
    .line 65
    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@15
    const-string/jumbo v1, "Value out of range (0-255)."

    #@18
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 60
    :cond_3
    return-void
.end method


# virtual methods
.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 125
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicLUT;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    #@4
    .line 124
    return-void
.end method

.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 137
    iget-boolean v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 138
    iput-boolean v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    #@7
    .line 139
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/renderscript/Allocation;

    #@9
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    #@b
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->copyFromUnchecked([B)V

    #@e
    .line 141
    :cond_0
    const/4 v4, 0x0

    #@f
    move-object v0, p0

    #@10
    move-object v2, p1

    #@11
    move-object v3, p2

    #@12
    move-object v5, p3

    #@13
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/ScriptIntrinsicLUT;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    #@16
    .line 136
    return-void
.end method

.method public getKernelID()Landroid/renderscript/Script$KernelID;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 150
    const/4 v0, 0x0

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicLUT;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public setAlpha(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    #@3
    .line 113
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    #@5
    add-int/lit16 v1, p1, 0x300

    #@7
    int-to-byte v2, p2

    #@8
    aput-byte v2, v0, v1

    #@a
    .line 114
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    #@d
    .line 111
    return-void
.end method

.method public setBlue(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    #@3
    .line 101
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    #@5
    add-int/lit16 v1, p1, 0x200

    #@7
    int-to-byte v2, p2

    #@8
    aput-byte v2, v0, v1

    #@a
    .line 102
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    #@d
    .line 99
    return-void
.end method

.method public setGreen(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    #@3
    .line 89
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    #@5
    add-int/lit16 v1, p1, 0x100

    #@7
    int-to-byte v2, p2

    #@8
    aput-byte v2, v0, v1

    #@a
    .line 90
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    #@d
    .line 87
    return-void
.end method

.method public setRed(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    #@3
    .line 77
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    #@5
    int-to-byte v1, p2

    #@6
    aput-byte v1, v0, p1

    #@8
    .line 78
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    #@b
    .line 75
    return-void
.end method
