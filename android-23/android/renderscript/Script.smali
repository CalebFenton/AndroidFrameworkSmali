.class public Landroid/renderscript/Script;
.super Landroid/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Script$KernelID;,
        Landroid/renderscript/Script$InvokeID;,
        Landroid/renderscript/Script$FieldID;,
        Landroid/renderscript/Script$Builder;,
        Landroid/renderscript/Script$FieldBase;,
        Landroid/renderscript/Script$LaunchOptions;
    }
.end annotation


# instance fields
.field private final mFIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/renderscript/Script$FieldID;",
            ">;"
        }
    .end annotation
.end field

.field private final mIIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/renderscript/Script$InvokeID;",
            ">;"
        }
    .end annotation
.end field

.field mInIdsBuffer:[J

.field private final mKIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/renderscript/Script$KernelID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 289
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 47
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    #@a
    .line 86
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    iput-object v0, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    #@11
    .line 124
    new-instance v0, Landroid/util/SparseArray;

    #@13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@16
    iput-object v0, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    #@18
    .line 291
    const/4 v0, 0x1

    #@19
    new-array v0, v0, [J

    #@1b
    iput-object v0, p0, Landroid/renderscript/Script;->mInIdsBuffer:[J

    #@1d
    .line 288
    return-void
.end method


# virtual methods
.method public bindAllocation(Landroid/renderscript/Allocation;I)V
    .locals 8
    .param p1, "va"    # Landroid/renderscript/Allocation;
    .param p2, "slot"    # I

    #@0
    .prologue
    .line 300
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 301
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@7
    invoke-virtual {v1, p1}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    #@a
    .line 302
    if-eqz p1, :cond_3

    #@c
    .line 304
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@e
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    #@11
    move-result-object v0

    #@12
    .line 306
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@15
    move-result-object v1

    #@16
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@18
    const/16 v2, 0x14

    #@1a
    if-lt v1, v2, :cond_2

    #@1c
    .line 307
    iget-object v7, p1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@1e
    .line 308
    .local v7, "t":Landroid/renderscript/Type;
    invoke-virtual {v7}, Landroid/renderscript/Type;->hasMipmaps()Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_0

    #@24
    invoke-virtual {v7}, Landroid/renderscript/Type;->hasFaces()Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_0

    #@2a
    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_1

    #@30
    .line 311
    :cond_0
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@32
    .line 312
    const-string/jumbo v2, "API 20+ only allows simple 1D allocations to be used with bind."

    #@35
    .line 311
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v1

    #@39
    .line 309
    :cond_1
    invoke-virtual {v7}, Landroid/renderscript/Type;->getZ()I

    #@3c
    move-result v1

    #@3d
    if-nez v1, :cond_0

    #@3f
    .line 316
    .end local v7    # "t":Landroid/renderscript/Type;
    :cond_2
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@41
    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@43
    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@46
    move-result-wide v2

    #@47
    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@49
    invoke-virtual {p1, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4c
    move-result-wide v4

    #@4d
    move v6, p2

    #@4e
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(JJI)V

    #@51
    .line 299
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    #@52
    .line 318
    :cond_3
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@54
    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@56
    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@59
    move-result-wide v2

    #@5a
    const-wide/16 v4, 0x0

    #@5c
    move v6, p2

    #@5d
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(JJI)V

    #@60
    goto :goto_0
.end method

.method protected createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;
    .locals 7
    .param p1, "slot"    # I
    .param p2, "e"    # Landroid/renderscript/Element;

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/renderscript/Script$FieldID;

    #@8
    .line 130
    .local v1, "f":Landroid/renderscript/Script$FieldID;
    if-eqz v1, :cond_0

    #@a
    .line 131
    return-object v1

    #@b
    .line 134
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@d
    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@f
    invoke-virtual {p0, v4}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@12
    move-result-wide v4

    #@13
    invoke-virtual {v0, v4, v5, p1}, Landroid/renderscript/RenderScript;->nScriptFieldIDCreate(JI)J

    #@16
    move-result-wide v2

    #@17
    .line 135
    .local v2, "id":J
    const-wide/16 v4, 0x0

    #@19
    cmp-long v0, v2, v4

    #@1b
    if-nez v0, :cond_1

    #@1d
    .line 136
    new-instance v0, Landroid/renderscript/RSDriverException;

    #@1f
    const-string/jumbo v4, "Failed to create FieldID"

    #@22
    invoke-direct {v0, v4}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 139
    :cond_1
    new-instance v1, Landroid/renderscript/Script$FieldID;

    #@28
    .end local v1    # "f":Landroid/renderscript/Script$FieldID;
    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2a
    move-object v5, p0

    #@2b
    move v6, p1

    #@2c
    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Script$FieldID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V

    #@2f
    .line 140
    .restart local v1    # "f":Landroid/renderscript/Script$FieldID;
    iget-object v0, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    #@31
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@34
    .line 141
    return-object v1
.end method

.method protected createInvokeID(I)Landroid/renderscript/Script$InvokeID;
    .locals 7
    .param p1, "slot"    # I

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/renderscript/Script$InvokeID;

    #@8
    .line 92
    .local v1, "i":Landroid/renderscript/Script$InvokeID;
    if-eqz v1, :cond_0

    #@a
    .line 93
    return-object v1

    #@b
    .line 96
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@d
    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@f
    invoke-virtual {p0, v4}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@12
    move-result-wide v4

    #@13
    invoke-virtual {v0, v4, v5, p1}, Landroid/renderscript/RenderScript;->nScriptInvokeIDCreate(JI)J

    #@16
    move-result-wide v2

    #@17
    .line 97
    .local v2, "id":J
    const-wide/16 v4, 0x0

    #@19
    cmp-long v0, v2, v4

    #@1b
    if-nez v0, :cond_1

    #@1d
    .line 98
    new-instance v0, Landroid/renderscript/RSDriverException;

    #@1f
    const-string/jumbo v4, "Failed to create KernelID"

    #@22
    invoke-direct {v0, v4}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 101
    :cond_1
    new-instance v1, Landroid/renderscript/Script$InvokeID;

    #@28
    .end local v1    # "i":Landroid/renderscript/Script$InvokeID;
    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2a
    move-object v5, p0

    #@2b
    move v6, p1

    #@2c
    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Script$InvokeID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V

    #@2f
    .line 102
    .restart local v1    # "i":Landroid/renderscript/Script$InvokeID;
    iget-object v0, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    #@31
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@34
    .line 103
    return-object v1
.end method

.method protected createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;
    .locals 8
    .param p1, "slot"    # I
    .param p2, "sig"    # I
    .param p3, "ein"    # Landroid/renderscript/Element;
    .param p4, "eout"    # Landroid/renderscript/Element;

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/renderscript/Script$KernelID;

    #@8
    .line 54
    .local v1, "k":Landroid/renderscript/Script$KernelID;
    if-eqz v1, :cond_0

    #@a
    .line 55
    return-object v1

    #@b
    .line 58
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@d
    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@f
    invoke-virtual {p0, v4}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@12
    move-result-wide v4

    #@13
    invoke-virtual {v0, v4, v5, p1, p2}, Landroid/renderscript/RenderScript;->nScriptKernelIDCreate(JII)J

    #@16
    move-result-wide v2

    #@17
    .line 59
    .local v2, "id":J
    const-wide/16 v4, 0x0

    #@19
    cmp-long v0, v2, v4

    #@1b
    if-nez v0, :cond_1

    #@1d
    .line 60
    new-instance v0, Landroid/renderscript/RSDriverException;

    #@1f
    const-string/jumbo v4, "Failed to create KernelID"

    #@22
    invoke-direct {v0, v4}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 63
    :cond_1
    new-instance v1, Landroid/renderscript/Script$KernelID;

    #@28
    .end local v1    # "k":Landroid/renderscript/Script$KernelID;
    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2a
    move-object v5, p0

    #@2b
    move v6, p1

    #@2c
    move v7, p2

    #@2d
    invoke-direct/range {v1 .. v7}, Landroid/renderscript/Script$KernelID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;II)V

    #@30
    .line 64
    .restart local v1    # "k":Landroid/renderscript/Script$KernelID;
    iget-object v0, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    #@32
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@35
    .line 65
    return-object v1
.end method

.method protected forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    .locals 6
    .param p1, "slot"    # I
    .param p2, "ain"    # Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;

    #@0
    .prologue
    .line 171
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Script;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    #@9
    .line 170
    return-void
.end method

.method protected forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 10
    .param p1, "slot"    # I
    .param p2, "ain"    # Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;
    .param p5, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 181
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@3
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@6
    .line 182
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@8
    invoke-virtual {v0, p2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    #@b
    .line 183
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@d
    invoke-virtual {v0, p3}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    #@10
    .line 185
    if-nez p2, :cond_0

    #@12
    if-nez p3, :cond_0

    #@14
    if-nez p5, :cond_0

    #@16
    .line 186
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@18
    .line 187
    const-string/jumbo v1, "At least one of input allocation, output allocation, or LaunchOptions is required to be non-null."

    #@1b
    .line 186
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 190
    :cond_0
    const/4 v5, 0x0

    #@20
    .line 191
    .local v5, "in_ids":[J
    if-eqz p2, :cond_1

    #@22
    .line 192
    iget-object v5, p0, Landroid/renderscript/Script;->mInIdsBuffer:[J

    #@24
    .line 193
    .local v5, "in_ids":[J
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@26
    invoke-virtual {p2, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@29
    move-result-wide v0

    #@2a
    aput-wide v0, v5, v2

    #@2c
    .line 196
    .end local v5    # "in_ids":[J
    :cond_1
    const-wide/16 v6, 0x0

    #@2e
    .line 197
    .local v6, "out_id":J
    if-eqz p3, :cond_2

    #@30
    .line 198
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@32
    invoke-virtual {p3, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@35
    move-result-wide v6

    #@36
    .line 201
    :cond_2
    const/4 v8, 0x0

    #@37
    .line 202
    .local v8, "params":[B
    if-eqz p4, :cond_3

    #@39
    .line 203
    invoke-virtual {p4}, Landroid/renderscript/FieldPacker;->getData()[B

    #@3c
    move-result-object v8

    #@3d
    .line 206
    .end local v8    # "params":[B
    :cond_3
    const/4 v9, 0x0

    #@3e
    .line 207
    .local v9, "limits":[I
    if-eqz p5, :cond_4

    #@40
    .line 208
    const/4 v0, 0x6

    #@41
    new-array v9, v0, [I

    #@43
    .line 210
    .local v9, "limits":[I
    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->-get1(Landroid/renderscript/Script$LaunchOptions;)I

    #@46
    move-result v0

    #@47
    aput v0, v9, v2

    #@49
    .line 211
    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->-get0(Landroid/renderscript/Script$LaunchOptions;)I

    #@4c
    move-result v0

    #@4d
    const/4 v1, 0x1

    #@4e
    aput v0, v9, v1

    #@50
    .line 212
    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->-get3(Landroid/renderscript/Script$LaunchOptions;)I

    #@53
    move-result v0

    #@54
    const/4 v1, 0x2

    #@55
    aput v0, v9, v1

    #@57
    .line 213
    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->-get2(Landroid/renderscript/Script$LaunchOptions;)I

    #@5a
    move-result v0

    #@5b
    const/4 v1, 0x3

    #@5c
    aput v0, v9, v1

    #@5e
    .line 214
    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->-get5(Landroid/renderscript/Script$LaunchOptions;)I

    #@61
    move-result v0

    #@62
    const/4 v1, 0x4

    #@63
    aput v0, v9, v1

    #@65
    .line 215
    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->-get4(Landroid/renderscript/Script$LaunchOptions;)I

    #@68
    move-result v0

    #@69
    const/4 v1, 0x5

    #@6a
    aput v0, v9, v1

    #@6c
    .line 218
    .end local v9    # "limits":[I
    :cond_4
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@6e
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@70
    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@73
    move-result-wide v2

    #@74
    move v4, p1

    #@75
    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nScriptForEach(JI[JJ[B[I)V

    #@78
    .line 179
    return-void
.end method

.method protected forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    .locals 6
    .param p1, "slot"    # I
    .param p2, "ains"    # [Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;

    #@0
    .prologue
    .line 228
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Script;->forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    #@9
    .line 225
    return-void
.end method

.method protected forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 11
    .param p1, "slot"    # I
    .param p2, "ains"    # [Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;
    .param p5, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    .line 238
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 239
    if-eqz p2, :cond_0

    #@7
    .line 240
    const/4 v1, 0x0

    #@8
    array-length v2, p2

    #@9
    :goto_0
    if-ge v1, v2, :cond_0

    #@b
    aget-object v0, p2, v1

    #@d
    .line 241
    .local v0, "ain":Landroid/renderscript/Allocation;
    iget-object v3, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@f
    invoke-virtual {v3, v0}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    #@12
    .line 240
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 244
    .end local v0    # "ain":Landroid/renderscript/Allocation;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@17
    invoke-virtual {v1, p3}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    #@1a
    .line 246
    if-nez p2, :cond_1

    #@1c
    if-nez p3, :cond_1

    #@1e
    .line 247
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@20
    .line 248
    const-string/jumbo v2, "At least one of ain or aout is required to be non-null."

    #@23
    .line 247
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 252
    :cond_1
    if-eqz p2, :cond_2

    #@29
    .line 253
    array-length v1, p2

    #@2a
    new-array v5, v1, [J

    #@2c
    .line 254
    .local v5, "in_ids":[J
    const/4 v10, 0x0

    #@2d
    .local v10, "index":I
    :goto_1
    array-length v1, p2

    #@2e
    if-ge v10, v1, :cond_3

    #@30
    .line 255
    aget-object v1, p2, v10

    #@32
    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@34
    invoke-virtual {v1, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@37
    move-result-wide v2

    #@38
    aput-wide v2, v5, v10

    #@3a
    .line 254
    add-int/lit8 v10, v10, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 258
    .end local v5    # "in_ids":[J
    .end local v10    # "index":I
    :cond_2
    const/4 v5, 0x0

    #@3e
    .line 261
    :cond_3
    const-wide/16 v6, 0x0

    #@40
    .line 262
    .local v6, "out_id":J
    if-eqz p3, :cond_4

    #@42
    .line 263
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@44
    invoke-virtual {p3, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@47
    move-result-wide v6

    #@48
    .line 266
    :cond_4
    const/4 v8, 0x0

    #@49
    .line 267
    .local v8, "params":[B
    if-eqz p4, :cond_5

    #@4b
    .line 268
    invoke-virtual {p4}, Landroid/renderscript/FieldPacker;->getData()[B

    #@4e
    move-result-object v8

    #@4f
    .line 271
    .end local v8    # "params":[B
    :cond_5
    const/4 v9, 0x0

    #@50
    .line 272
    .local v9, "limits":[I
    if-eqz p5, :cond_6

    #@52
    .line 273
    const/4 v1, 0x6

    #@53
    new-array v9, v1, [I

    #@55
    .line 275
    .local v9, "limits":[I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-get1(Landroid/renderscript/Script$LaunchOptions;)I

    #@58
    move-result v1

    #@59
    const/4 v2, 0x0

    #@5a
    aput v1, v9, v2

    #@5c
    .line 276
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-get0(Landroid/renderscript/Script$LaunchOptions;)I

    #@5f
    move-result v1

    #@60
    const/4 v2, 0x1

    #@61
    aput v1, v9, v2

    #@63
    .line 277
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-get3(Landroid/renderscript/Script$LaunchOptions;)I

    #@66
    move-result v1

    #@67
    const/4 v2, 0x2

    #@68
    aput v1, v9, v2

    #@6a
    .line 278
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-get2(Landroid/renderscript/Script$LaunchOptions;)I

    #@6d
    move-result v1

    #@6e
    const/4 v2, 0x3

    #@6f
    aput v1, v9, v2

    #@71
    .line 279
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-get5(Landroid/renderscript/Script$LaunchOptions;)I

    #@74
    move-result v1

    #@75
    const/4 v2, 0x4

    #@76
    aput v1, v9, v2

    #@78
    .line 280
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-get4(Landroid/renderscript/Script$LaunchOptions;)I

    #@7b
    move-result v1

    #@7c
    const/4 v2, 0x5

    #@7d
    aput v1, v9, v2

    #@7f
    .line 283
    .end local v9    # "limits":[I
    :cond_6
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@81
    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@83
    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@86
    move-result-wide v2

    #@87
    move v4, p1

    #@88
    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nScriptForEach(JI[JJ[B[I)V

    #@8b
    .line 235
    return-void
.end method

.method public getVarB(I)Z
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 376
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@3
    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@5
    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@8
    move-result-wide v2

    #@9
    invoke-virtual {v1, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarI(JI)I

    #@c
    move-result v1

    #@d
    if-lez v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method

.method public getVarD(I)D
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 341
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarD(JI)D

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public getVarF(I)F
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 330
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarF(JI)F

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getVarI(I)I
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarI(JI)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getVarJ(I)J
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 364
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarJ(JI)J

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public getVarV(ILandroid/renderscript/FieldPacker;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;

    #@0
    .prologue
    .line 410
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/renderscript/RenderScript;->nScriptGetVarV(JI[B)V

    #@f
    .line 409
    return-void
.end method

.method protected invoke(I)V
    .locals 4
    .param p1, "slot"    # I

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(JI)V

    #@b
    .line 149
    return-void
.end method

.method protected invoke(ILandroid/renderscript/FieldPacker;)V
    .locals 4
    .param p1, "slot"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;

    #@0
    .prologue
    .line 158
    if-eqz p2, :cond_0

    #@2
    .line 159
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@4
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@6
    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@9
    move-result-wide v2

    #@a
    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/renderscript/RenderScript;->nScriptInvokeV(JI[B)V

    #@11
    .line 157
    :goto_0
    return-void

    #@12
    .line 161
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@14
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@16
    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@19
    move-result-wide v2

    #@1a
    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(JI)V

    #@1d
    goto :goto_0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 5
    .param p1, "timeZone"    # Ljava/lang/String;

    #@0
    .prologue
    .line 414
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 416
    :try_start_0
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@7
    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@9
    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@c
    move-result-wide v2

    #@d
    const-string/jumbo v4, "UTF-8"

    #@10
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v1, v2, v3, v4}, Landroid/renderscript/RenderScript;->nScriptSetTimeZone(J[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 413
    return-void

    #@18
    .line 417
    :catch_0
    move-exception v0

    #@19
    .line 418
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@1b
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1e
    throw v1
.end method

.method public setVar(ID)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "v"    # D

    #@0
    .prologue
    .line 338
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@7
    move-result-wide v1

    #@8
    move v3, p1

    #@9
    move-wide v4, p2

    #@a
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarD(JID)V

    #@d
    .line 337
    return-void
.end method

.method public setVar(IF)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # F

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarF(JIF)V

    #@b
    .line 326
    return-void
.end method

.method public setVar(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # I

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarI(JII)V

    #@b
    .line 348
    return-void
.end method

.method public setVar(IJ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "v"    # J

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@7
    move-result-wide v1

    #@8
    move v3, p1

    #@9
    move-wide v4, p2

    #@a
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarJ(JIJ)V

    #@d
    .line 360
    return-void
.end method

.method public setVar(ILandroid/renderscript/BaseObj;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "o"    # Landroid/renderscript/BaseObj;

    #@0
    .prologue
    .line 384
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 385
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@7
    invoke-virtual {v0, p2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    #@a
    .line 386
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@c
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@e
    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@11
    move-result-wide v1

    #@12
    if-nez p2, :cond_0

    #@14
    const-wide/16 v4, 0x0

    #@16
    :goto_0
    move v3, p1

    #@17
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarObj(JIJ)V

    #@1a
    .line 383
    return-void

    #@1b
    .line 386
    :cond_0
    iget-object v3, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@1d
    invoke-virtual {p2, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    #@20
    move-result-wide v4

    #@21
    goto :goto_0
.end method

.method public setVar(ILandroid/renderscript/FieldPacker;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;

    #@0
    .prologue
    .line 394
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/renderscript/RenderScript;->nScriptSetVarV(JI[B)V

    #@f
    .line 393
    return-void
.end method

.method public setVar(ILandroid/renderscript/FieldPacker;Landroid/renderscript/Element;[I)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;
    .param p3, "e"    # Landroid/renderscript/Element;
    .param p4, "dims"    # [I

    #@0
    .prologue
    .line 402
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    #@b
    move-result-object v5

    #@c
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@e
    invoke-virtual {p3, v0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    #@11
    move-result-wide v6

    #@12
    move v4, p1

    #@13
    move-object v8, p4

    #@14
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->nScriptSetVarVE(JI[BJ[I)V

    #@17
    .line 401
    return-void
.end method

.method public setVar(IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Z

    #@0
    .prologue
    .line 373
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@7
    move-result-wide v2

    #@8
    if-eqz p2, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    invoke-virtual {v1, v2, v3, p1, v0}, Landroid/renderscript/RenderScript;->nScriptSetVarI(JII)V

    #@e
    .line 372
    return-void

    #@f
    .line 373
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method
