.class public Landroid/renderscript/Script;
.super Landroid/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Script$Builder;,
        Landroid/renderscript/Script$FieldBase;,
        Landroid/renderscript/Script$FieldID;,
        Landroid/renderscript/Script$InvokeID;,
        Landroid/renderscript/Script$KernelID;,
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
    .locals 3
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 330
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 48
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    #@a
    .line 87
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    iput-object v0, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    #@11
    .line 126
    new-instance v0, Landroid/util/SparseArray;

    #@13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@16
    iput-object v0, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    #@18
    .line 332
    const/4 v0, 0x1

    #@19
    new-array v0, v0, [J

    #@1b
    iput-object v0, p0, Landroid/renderscript/Script;->mInIdsBuffer:[J

    #@1d
    .line 345
    iget-object v0, p0, Landroid/renderscript/Script;->guard:Ldalvik/system/CloseGuard;

    #@1f
    const-string/jumbo v1, "destroy"

    #@22
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@25
    .line 329
    return-void
.end method


# virtual methods
.method public bindAllocation(Landroid/renderscript/Allocation;I)V
    .locals 8
    .param p1, "va"    # Landroid/renderscript/Allocation;
    .param p2, "slot"    # I

    #@0
    .prologue
    .line 353
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 354
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@7
    invoke-virtual {v1, p1}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    #@a
    .line 355
    if-eqz p1, :cond_3

    #@c
    .line 357
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@e
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    #@11
    move-result-object v0

    #@12
    .line 359
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
    .line 360
    iget-object v7, p1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@1e
    .line 361
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
    .line 364
    :cond_0
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@32
    .line 365
    const-string/jumbo v2, "API 20+ only allows simple 1D allocations to be used with bind."

    #@35
    .line 364
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v1

    #@39
    .line 362
    :cond_1
    invoke-virtual {v7}, Landroid/renderscript/Type;->getZ()I

    #@3c
    move-result v1

    #@3d
    if-nez v1, :cond_0

    #@3f
    .line 369
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
    .line 352
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    #@52
    .line 371
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
    .line 131
    iget-object v0, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/renderscript/Script$FieldID;

    #@8
    .line 132
    .local v1, "f":Landroid/renderscript/Script$FieldID;
    if-eqz v1, :cond_0

    #@a
    .line 133
    return-object v1

    #@b
    .line 136
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
    .line 137
    .local v2, "id":J
    const-wide/16 v4, 0x0

    #@19
    cmp-long v0, v2, v4

    #@1b
    if-nez v0, :cond_1

    #@1d
    .line 138
    new-instance v0, Landroid/renderscript/RSDriverException;

    #@1f
    const-string/jumbo v4, "Failed to create FieldID"

    #@22
    invoke-direct {v0, v4}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 141
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
    .line 142
    .restart local v1    # "f":Landroid/renderscript/Script$FieldID;
    iget-object v0, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    #@31
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@34
    .line 143
    return-object v1
.end method

.method protected createInvokeID(I)Landroid/renderscript/Script$InvokeID;
    .locals 7
    .param p1, "slot"    # I

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/renderscript/Script$InvokeID;

    #@8
    .line 93
    .local v1, "i":Landroid/renderscript/Script$InvokeID;
    if-eqz v1, :cond_0

    #@a
    .line 94
    return-object v1

    #@b
    .line 97
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
    .line 98
    .local v2, "id":J
    const-wide/16 v4, 0x0

    #@19
    cmp-long v0, v2, v4

    #@1b
    if-nez v0, :cond_1

    #@1d
    .line 99
    new-instance v0, Landroid/renderscript/RSDriverException;

    #@1f
    const-string/jumbo v4, "Failed to create KernelID"

    #@22
    invoke-direct {v0, v4}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 102
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
    .line 103
    .restart local v1    # "i":Landroid/renderscript/Script$InvokeID;
    iget-object v0, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    #@31
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@34
    .line 104
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
    .line 54
    iget-object v0, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/renderscript/Script$KernelID;

    #@8
    .line 55
    .local v1, "k":Landroid/renderscript/Script$KernelID;
    if-eqz v1, :cond_0

    #@a
    .line 56
    return-object v1

    #@b
    .line 59
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
    .line 60
    .local v2, "id":J
    const-wide/16 v4, 0x0

    #@19
    cmp-long v0, v2, v4

    #@1b
    if-nez v0, :cond_1

    #@1d
    .line 61
    new-instance v0, Landroid/renderscript/RSDriverException;

    #@1f
    const-string/jumbo v4, "Failed to create KernelID"

    #@22
    invoke-direct {v0, v4}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 64
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
    .line 65
    .restart local v1    # "k":Landroid/renderscript/Script$KernelID;
    iget-object v0, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    #@32
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@35
    .line 66
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
    .line 173
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
    .line 172
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
    .line 183
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@3
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@6
    .line 184
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@8
    invoke-virtual {v0, p2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    #@b
    .line 185
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@d
    invoke-virtual {v0, p3}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    #@10
    .line 187
    if-nez p2, :cond_0

    #@12
    if-nez p3, :cond_0

    #@14
    if-nez p5, :cond_0

    #@16
    .line 188
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@18
    .line 189
    const-string/jumbo v1, "At least one of input allocation, output allocation, or LaunchOptions is required to be non-null."

    #@1b
    .line 188
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 192
    :cond_0
    const/4 v5, 0x0

    #@20
    .line 193
    .local v5, "in_ids":[J
    if-eqz p2, :cond_1

    #@22
    .line 194
    iget-object v5, p0, Landroid/renderscript/Script;->mInIdsBuffer:[J

    #@24
    .line 195
    .local v5, "in_ids":[J
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@26
    invoke-virtual {p2, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@29
    move-result-wide v0

    #@2a
    aput-wide v0, v5, v2

    #@2c
    .line 198
    .end local v5    # "in_ids":[J
    :cond_1
    const-wide/16 v6, 0x0

    #@2e
    .line 199
    .local v6, "out_id":J
    if-eqz p3, :cond_2

    #@30
    .line 200
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@32
    invoke-virtual {p3, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@35
    move-result-wide v6

    #@36
    .line 203
    :cond_2
    const/4 v8, 0x0

    #@37
    .line 204
    .local v8, "params":[B
    if-eqz p4, :cond_3

    #@39
    .line 205
    invoke-virtual {p4}, Landroid/renderscript/FieldPacker;->getData()[B

    #@3c
    move-result-object v8

    #@3d
    .line 208
    .end local v8    # "params":[B
    :cond_3
    const/4 v9, 0x0

    #@3e
    .line 209
    .local v9, "limits":[I
    if-eqz p5, :cond_4

    #@40
    .line 210
    const/4 v0, 0x6

    #@41
    new-array v9, v0, [I

    #@43
    .line 212
    .local v9, "limits":[I
    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->-get1(Landroid/renderscript/Script$LaunchOptions;)I

    #@46
    move-result v0

    #@47
    aput v0, v9, v2

    #@49
    .line 213
    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->-get0(Landroid/renderscript/Script$LaunchOptions;)I

    #@4c
    move-result v0

    #@4d
    const/4 v1, 0x1

    #@4e
    aput v0, v9, v1

    #@50
    .line 214
    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->-get3(Landroid/renderscript/Script$LaunchOptions;)I

    #@53
    move-result v0

    #@54
    const/4 v1, 0x2

    #@55
    aput v0, v9, v1

    #@57
    .line 215
    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->-get2(Landroid/renderscript/Script$LaunchOptions;)I

    #@5a
    move-result v0

    #@5b
    const/4 v1, 0x3

    #@5c
    aput v0, v9, v1

    #@5e
    .line 216
    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->-get5(Landroid/renderscript/Script$LaunchOptions;)I

    #@61
    move-result v0

    #@62
    const/4 v1, 0x4

    #@63
    aput v0, v9, v1

    #@65
    .line 217
    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->-get4(Landroid/renderscript/Script$LaunchOptions;)I

    #@68
    move-result v0

    #@69
    const/4 v1, 0x5

    #@6a
    aput v0, v9, v1

    #@6c
    .line 220
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
    .line 181
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
    .line 230
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
    .line 227
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
    .line 240
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 241
    if-eqz p2, :cond_0

    #@7
    .line 242
    const/4 v1, 0x0

    #@8
    array-length v2, p2

    #@9
    :goto_0
    if-ge v1, v2, :cond_0

    #@b
    aget-object v0, p2, v1

    #@d
    .line 243
    .local v0, "ain":Landroid/renderscript/Allocation;
    iget-object v3, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@f
    invoke-virtual {v3, v0}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    #@12
    .line 242
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 246
    .end local v0    # "ain":Landroid/renderscript/Allocation;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@17
    invoke-virtual {v1, p3}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    #@1a
    .line 248
    if-nez p2, :cond_1

    #@1c
    if-nez p3, :cond_1

    #@1e
    .line 249
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@20
    .line 250
    const-string/jumbo v2, "At least one of ain or aout is required to be non-null."

    #@23
    .line 249
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 254
    :cond_1
    if-eqz p2, :cond_2

    #@29
    .line 255
    array-length v1, p2

    #@2a
    new-array v5, v1, [J

    #@2c
    .line 256
    .local v5, "in_ids":[J
    const/4 v10, 0x0

    #@2d
    .local v10, "index":I
    :goto_1
    array-length v1, p2

    #@2e
    if-ge v10, v1, :cond_3

    #@30
    .line 257
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
    .line 256
    add-int/lit8 v10, v10, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 260
    .end local v5    # "in_ids":[J
    .end local v10    # "index":I
    :cond_2
    const/4 v5, 0x0

    #@3e
    .line 263
    :cond_3
    const-wide/16 v6, 0x0

    #@40
    .line 264
    .local v6, "out_id":J
    if-eqz p3, :cond_4

    #@42
    .line 265
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@44
    invoke-virtual {p3, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@47
    move-result-wide v6

    #@48
    .line 268
    :cond_4
    const/4 v8, 0x0

    #@49
    .line 269
    .local v8, "params":[B
    if-eqz p4, :cond_5

    #@4b
    .line 270
    invoke-virtual {p4}, Landroid/renderscript/FieldPacker;->getData()[B

    #@4e
    move-result-object v8

    #@4f
    .line 273
    .end local v8    # "params":[B
    :cond_5
    const/4 v9, 0x0

    #@50
    .line 274
    .local v9, "limits":[I
    if-eqz p5, :cond_6

    #@52
    .line 275
    const/4 v1, 0x6

    #@53
    new-array v9, v1, [I

    #@55
    .line 277
    .local v9, "limits":[I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-get1(Landroid/renderscript/Script$LaunchOptions;)I

    #@58
    move-result v1

    #@59
    const/4 v2, 0x0

    #@5a
    aput v1, v9, v2

    #@5c
    .line 278
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-get0(Landroid/renderscript/Script$LaunchOptions;)I

    #@5f
    move-result v1

    #@60
    const/4 v2, 0x1

    #@61
    aput v1, v9, v2

    #@63
    .line 279
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-get3(Landroid/renderscript/Script$LaunchOptions;)I

    #@66
    move-result v1

    #@67
    const/4 v2, 0x2

    #@68
    aput v1, v9, v2

    #@6a
    .line 280
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-get2(Landroid/renderscript/Script$LaunchOptions;)I

    #@6d
    move-result v1

    #@6e
    const/4 v2, 0x3

    #@6f
    aput v1, v9, v2

    #@71
    .line 281
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-get5(Landroid/renderscript/Script$LaunchOptions;)I

    #@74
    move-result v1

    #@75
    const/4 v2, 0x4

    #@76
    aput v1, v9, v2

    #@78
    .line 282
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-get4(Landroid/renderscript/Script$LaunchOptions;)I

    #@7b
    move-result v1

    #@7c
    const/4 v2, 0x5

    #@7d
    aput v1, v9, v2

    #@7f
    .line 285
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
    .line 237
    return-void
.end method

.method public getVarB(I)Z
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 429
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
    .line 394
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
    .line 383
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
    .line 405
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
    .line 417
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
    .line 463
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
    .line 462
    return-void
.end method

.method protected invoke(I)V
    .locals 4
    .param p1, "slot"    # I

    #@0
    .prologue
    .line 152
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
    .line 151
    return-void
.end method

.method protected invoke(ILandroid/renderscript/FieldPacker;)V
    .locals 4
    .param p1, "slot"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;

    #@0
    .prologue
    .line 160
    if-eqz p2, :cond_0

    #@2
    .line 161
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
    .line 159
    :goto_0
    return-void

    #@12
    .line 163
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

.method protected reduce(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 10
    .param p1, "slot"    # I
    .param p2, "ains"    # [Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    #@0
    .prologue
    .line 293
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 294
    if-eqz p2, :cond_0

    #@7
    array-length v1, p2

    #@8
    const/4 v2, 0x1

    #@9
    if-ge v1, v2, :cond_1

    #@b
    .line 295
    :cond_0
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@d
    .line 296
    const-string/jumbo v2, "At least one input is required."

    #@10
    .line 295
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1

    #@14
    .line 298
    :cond_1
    if-nez p3, :cond_2

    #@16
    .line 299
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@18
    .line 300
    const-string/jumbo v2, "aout is required to be non-null."

    #@1b
    .line 299
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 302
    :cond_2
    const/4 v1, 0x0

    #@20
    array-length v2, p2

    #@21
    :goto_0
    if-ge v1, v2, :cond_3

    #@23
    aget-object v0, p2, v1

    #@25
    .line 303
    .local v0, "ain":Landroid/renderscript/Allocation;
    iget-object v3, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@27
    invoke-virtual {v3, v0}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    #@2a
    .line 302
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 306
    .end local v0    # "ain":Landroid/renderscript/Allocation;
    :cond_3
    array-length v1, p2

    #@2e
    new-array v5, v1, [J

    #@30
    .line 307
    .local v5, "in_ids":[J
    const/4 v9, 0x0

    #@31
    .local v9, "index":I
    :goto_1
    array-length v1, p2

    #@32
    if-ge v9, v1, :cond_4

    #@34
    .line 308
    aget-object v1, p2, v9

    #@36
    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@38
    invoke-virtual {v1, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3b
    move-result-wide v2

    #@3c
    aput-wide v2, v5, v9

    #@3e
    .line 307
    add-int/lit8 v9, v9, 0x1

    #@40
    goto :goto_1

    #@41
    .line 310
    :cond_4
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@43
    invoke-virtual {p3, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@46
    move-result-wide v6

    #@47
    .line 312
    .local v6, "out_id":J
    const/4 v8, 0x0

    #@48
    .line 313
    .local v8, "limits":[I
    if-eqz p4, :cond_5

    #@4a
    .line 314
    const/4 v1, 0x6

    #@4b
    new-array v8, v1, [I

    #@4d
    .line 316
    .local v8, "limits":[I
    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-get1(Landroid/renderscript/Script$LaunchOptions;)I

    #@50
    move-result v1

    #@51
    const/4 v2, 0x0

    #@52
    aput v1, v8, v2

    #@54
    .line 317
    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-get0(Landroid/renderscript/Script$LaunchOptions;)I

    #@57
    move-result v1

    #@58
    const/4 v2, 0x1

    #@59
    aput v1, v8, v2

    #@5b
    .line 318
    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-get3(Landroid/renderscript/Script$LaunchOptions;)I

    #@5e
    move-result v1

    #@5f
    const/4 v2, 0x2

    #@60
    aput v1, v8, v2

    #@62
    .line 319
    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-get2(Landroid/renderscript/Script$LaunchOptions;)I

    #@65
    move-result v1

    #@66
    const/4 v2, 0x3

    #@67
    aput v1, v8, v2

    #@69
    .line 320
    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-get5(Landroid/renderscript/Script$LaunchOptions;)I

    #@6c
    move-result v1

    #@6d
    const/4 v2, 0x4

    #@6e
    aput v1, v8, v2

    #@70
    .line 321
    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-get4(Landroid/renderscript/Script$LaunchOptions;)I

    #@73
    move-result v1

    #@74
    const/4 v2, 0x5

    #@75
    aput v1, v8, v2

    #@77
    .line 324
    .end local v8    # "limits":[I
    :cond_5
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@79
    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@7b
    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    #@7e
    move-result-wide v2

    #@7f
    move v4, p1

    #@80
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->nScriptReduce(JI[JJ[I)V

    #@83
    .line 292
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 5
    .param p1, "timeZone"    # Ljava/lang/String;

    #@0
    .prologue
    .line 467
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 469
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
    .line 466
    return-void

    #@18
    .line 470
    :catch_0
    move-exception v0

    #@19
    .line 471
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
    .line 391
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
    .line 390
    return-void
.end method

.method public setVar(IF)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # F

    #@0
    .prologue
    .line 380
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
    .line 379
    return-void
.end method

.method public setVar(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # I

    #@0
    .prologue
    .line 402
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
    .line 401
    return-void
.end method

.method public setVar(IJ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "v"    # J

    #@0
    .prologue
    .line 414
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
    .line 413
    return-void
.end method

.method public setVar(ILandroid/renderscript/BaseObj;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "o"    # Landroid/renderscript/BaseObj;

    #@0
    .prologue
    .line 437
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 438
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    #@7
    invoke-virtual {v0, p2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    #@a
    .line 439
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
    .line 436
    return-void

    #@1b
    .line 439
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
    .line 447
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
    .line 446
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
    .line 455
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
    .line 454
    return-void
.end method

.method public setVar(IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Z

    #@0
    .prologue
    .line 426
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
    .line 425
    return-void

    #@f
    .line 426
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method
