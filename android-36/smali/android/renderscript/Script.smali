.class public Landroid/renderscript/Script;
.super Landroid/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Script$KernelID;,
        Landroid/renderscript/Script$InvokeID;,
        Landroid/renderscript/Script$FieldID;,
        Landroid/renderscript/Script$LaunchOptions;,
        Landroid/renderscript/Script$FieldBase;,
        Landroid/renderscript/Script$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o mFIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/renderscript/Script$FieldID;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mIIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/renderscript/Script$InvokeID;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mInIdsBuffer:[J

.field private final greylist-max-o mKIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/renderscript/Script$KernelID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 6
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 334
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    .line 130
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    .line 336
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/renderscript/Script;->mInIdsBuffer:[J

    .line 349
    iget-object v0, p0, Landroid/renderscript/Script;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 350
    return-void
.end method


# virtual methods
.method public whitelist bindAllocation(Landroid/renderscript/Allocation;I)V
    .registers 20
    .param p1, "va"    # Landroid/renderscript/Allocation;
    .param p2, "slot"    # I

    .line 357
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 358
    iget-object v2, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v1}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 359
    if-eqz v1, :cond_57

    .line 361
    iget-object v2, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 363
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_43

    .line 364
    iget-object v3, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 365
    .local v3, "t":Landroid/renderscript/Type;
    invoke-virtual {v3}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v4

    if-nez v4, :cond_3b

    invoke-virtual {v3}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v4

    if-nez v4, :cond_3b

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-nez v4, :cond_3b

    .line 366
    invoke-virtual {v3}, Landroid/renderscript/Type;->getZ()I

    move-result v4

    if-nez v4, :cond_3b

    goto :goto_43

    .line 368
    :cond_3b
    new-instance v4, Landroid/renderscript/RSIllegalArgumentException;

    const-string v5, "API 20+ only allows simple 1D allocations to be used with bind."

    invoke-direct {v4, v5}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 373
    .end local v3    # "t":Landroid/renderscript/Type;
    :cond_43
    :goto_43
    iget-object v6, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v7

    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v9

    move/from16 v11, p2

    invoke-virtual/range {v6 .. v11}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(JJI)V

    .line 374
    .end local v2    # "context":Landroid/content/Context;
    goto :goto_66

    .line 375
    :cond_57
    iget-object v11, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    move/from16 v16, p2

    invoke-virtual/range {v11 .. v16}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(JJI)V

    .line 377
    :goto_66
    return-void
.end method

.method protected whitelist createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;
    .registers 13
    .param p1, "slot"    # I
    .param p2, "e"    # Landroid/renderscript/Element;

    .line 135
    iget-object v0, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Script$FieldID;

    .line 136
    .local v0, "f":Landroid/renderscript/Script$FieldID;
    if-eqz v0, :cond_b

    .line 137
    return-object v0

    .line 140
    :cond_b
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptFieldIDCreate(JI)J

    move-result-wide v5

    .line 141
    .local v5, "id":J
    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-eqz v1, :cond_2c

    .line 145
    new-instance v4, Landroid/renderscript/Script$FieldID;

    iget-object v7, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object v8, p0

    move v9, p1

    .end local p1    # "slot":I
    .local v9, "slot":I
    invoke-direct/range {v4 .. v9}, Landroid/renderscript/Script$FieldID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V

    .line 146
    .end local v0    # "f":Landroid/renderscript/Script$FieldID;
    .local v4, "f":Landroid/renderscript/Script$FieldID;
    iget-object p1, v8, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {p1, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    return-object v4

    .line 142
    .end local v4    # "f":Landroid/renderscript/Script$FieldID;
    .end local v9    # "slot":I
    .restart local v0    # "f":Landroid/renderscript/Script$FieldID;
    .restart local p1    # "slot":I
    :cond_2c
    move v9, p1

    .end local p1    # "slot":I
    .restart local v9    # "slot":I
    new-instance p1, Landroid/renderscript/RSDriverException;

    const-string v1, "Failed to create FieldID"

    invoke-direct {p1, v1}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist createInvokeID(I)Landroid/renderscript/Script$InvokeID;
    .registers 12
    .param p1, "slot"    # I

    .line 97
    iget-object v0, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Script$InvokeID;

    .line 98
    .local v0, "i":Landroid/renderscript/Script$InvokeID;
    if-eqz v0, :cond_b

    .line 99
    return-object v0

    .line 102
    :cond_b
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptInvokeIDCreate(JI)J

    move-result-wide v5

    .line 103
    .local v5, "id":J
    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-eqz v1, :cond_2c

    .line 107
    new-instance v4, Landroid/renderscript/Script$InvokeID;

    iget-object v7, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object v8, p0

    move v9, p1

    .end local p1    # "slot":I
    .local v9, "slot":I
    invoke-direct/range {v4 .. v9}, Landroid/renderscript/Script$InvokeID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V

    .line 108
    .end local v0    # "i":Landroid/renderscript/Script$InvokeID;
    .local v4, "i":Landroid/renderscript/Script$InvokeID;
    iget-object p1, v8, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    invoke-virtual {p1, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    return-object v4

    .line 104
    .end local v4    # "i":Landroid/renderscript/Script$InvokeID;
    .end local v9    # "slot":I
    .restart local v0    # "i":Landroid/renderscript/Script$InvokeID;
    .restart local p1    # "slot":I
    :cond_2c
    move v9, p1

    .end local p1    # "slot":I
    .restart local v9    # "slot":I
    new-instance p1, Landroid/renderscript/RSDriverException;

    const-string v1, "Failed to create KernelID"

    invoke-direct {p1, v1}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;
    .registers 16
    .param p1, "slot"    # I
    .param p2, "sig"    # I
    .param p3, "ein"    # Landroid/renderscript/Element;
    .param p4, "eout"    # Landroid/renderscript/Element;

    .line 59
    iget-object v0, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Script$KernelID;

    .line 60
    .local v0, "k":Landroid/renderscript/Script$KernelID;
    if-eqz v0, :cond_b

    .line 61
    return-object v0

    .line 64
    :cond_b
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/renderscript/RenderScript;->nScriptKernelIDCreate(JII)J

    move-result-wide v5

    .line 65
    .local v5, "id":J
    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-eqz v1, :cond_2d

    .line 69
    new-instance v4, Landroid/renderscript/Script$KernelID;

    iget-object v7, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object v8, p0

    move v9, p1

    move v10, p2

    .end local p1    # "slot":I
    .end local p2    # "sig":I
    .local v9, "slot":I
    .local v10, "sig":I
    invoke-direct/range {v4 .. v10}, Landroid/renderscript/Script$KernelID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;II)V

    .line 70
    .end local v0    # "k":Landroid/renderscript/Script$KernelID;
    .local v4, "k":Landroid/renderscript/Script$KernelID;
    iget-object p1, v8, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {p1, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    return-object v4

    .line 66
    .end local v4    # "k":Landroid/renderscript/Script$KernelID;
    .end local v9    # "slot":I
    .end local v10    # "sig":I
    .restart local v0    # "k":Landroid/renderscript/Script$KernelID;
    .restart local p1    # "slot":I
    .restart local p2    # "sig":I
    :cond_2d
    move v9, p1

    move v10, p2

    .end local p1    # "slot":I
    .end local p2    # "sig":I
    .restart local v9    # "slot":I
    .restart local v10    # "sig":I
    new-instance p1, Landroid/renderscript/RSDriverException;

    const-string p2, "Failed to create KernelID"

    invoke-direct {p1, p2}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    .registers 11
    .param p1, "slot"    # I
    .param p2, "ain"    # Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;

    .line 177
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "slot":I
    .end local p2    # "ain":Landroid/renderscript/Allocation;
    .end local p3    # "aout":Landroid/renderscript/Allocation;
    .end local p4    # "v":Landroid/renderscript/FieldPacker;
    .local v1, "slot":I
    .local v2, "ain":Landroid/renderscript/Allocation;
    .local v3, "aout":Landroid/renderscript/Allocation;
    .local v4, "v":Landroid/renderscript/FieldPacker;
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Script;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 178
    return-void
.end method

.method protected whitelist forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 22
    .param p1, "slot"    # I
    .param p2, "ain"    # Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;
    .param p5, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    .line 187
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    .line 188
    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v1}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 189
    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 191
    if-nez v1, :cond_24

    if-nez v2, :cond_24

    if-eqz p5, :cond_1c

    goto :goto_24

    .line 192
    :cond_1c
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "At least one of input allocation, output allocation, or LaunchOptions is required to be non-null."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 196
    :cond_24
    :goto_24
    const/4 v3, 0x0

    .line 197
    .local v3, "in_ids":[J
    const/4 v4, 0x0

    if-eqz v1, :cond_34

    .line 198
    iget-object v3, v0, Landroid/renderscript/Script;->mInIdsBuffer:[J

    .line 199
    iget-object v5, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    aput-wide v5, v3, v4

    move-object v11, v3

    goto :goto_35

    .line 197
    :cond_34
    move-object v11, v3

    .line 202
    .end local v3    # "in_ids":[J
    .local v11, "in_ids":[J
    :goto_35
    const-wide/16 v5, 0x0

    .line 203
    .local v5, "out_id":J
    if-eqz v2, :cond_41

    .line 204
    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    move-wide v12, v5

    goto :goto_42

    .line 203
    :cond_41
    move-wide v12, v5

    .line 207
    .end local v5    # "out_id":J
    .local v12, "out_id":J
    :goto_42
    const/4 v3, 0x0

    .line 208
    .local v3, "params":[B
    if-eqz p4, :cond_4b

    .line 209
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    move-object v14, v3

    goto :goto_4c

    .line 208
    :cond_4b
    move-object v14, v3

    .line 212
    .end local v3    # "params":[B
    .local v14, "params":[B
    :goto_4c
    const/4 v3, 0x0

    .line 213
    .local v3, "limits":[I
    if-eqz p5, :cond_7d

    .line 214
    const/4 v5, 0x6

    new-array v3, v5, [I

    .line 216
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetxstart(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v5

    aput v5, v3, v4

    .line 217
    const/4 v4, 0x1

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetxend(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v5

    aput v5, v3, v4

    .line 218
    const/4 v4, 0x2

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetystart(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v5

    aput v5, v3, v4

    .line 219
    const/4 v4, 0x3

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetyend(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v5

    aput v5, v3, v4

    .line 220
    const/4 v4, 0x4

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetzstart(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v5

    aput v5, v3, v4

    .line 221
    const/4 v4, 0x5

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetzend(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v5

    aput v5, v3, v4

    move-object v15, v3

    goto :goto_7e

    .line 213
    :cond_7d
    move-object v15, v3

    .line 224
    .end local v3    # "limits":[I
    .local v15, "limits":[I
    :goto_7e
    iget-object v7, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    move/from16 v10, p1

    invoke-virtual/range {v7 .. v15}, Landroid/renderscript/RenderScript;->nScriptForEach(JI[JJ[B[I)V

    .line 225
    return-void
.end method

.method protected whitelist forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    .registers 11
    .param p1, "slot"    # I
    .param p2, "ains"    # [Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;

    .line 234
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "slot":I
    .end local p2    # "ains":[Landroid/renderscript/Allocation;
    .end local p3    # "aout":Landroid/renderscript/Allocation;
    .end local p4    # "v":Landroid/renderscript/FieldPacker;
    .local v1, "slot":I
    .local v2, "ains":[Landroid/renderscript/Allocation;
    .local v3, "aout":Landroid/renderscript/Allocation;
    .local v4, "v":Landroid/renderscript/FieldPacker;
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Script;->forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 235
    return-void
.end method

.method protected whitelist forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 17
    .param p1, "slot"    # I
    .param p2, "ains"    # [Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;
    .param p5, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    .line 244
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 245
    const/4 v0, 0x0

    if-eqz p2, :cond_16

    .line 246
    array-length v1, p2

    move v2, v0

    :goto_a
    if-ge v2, v1, :cond_16

    aget-object v3, p2, v2

    .line 247
    .local v3, "ain":Landroid/renderscript/Allocation;
    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v4, v3}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 246
    .end local v3    # "ain":Landroid/renderscript/Allocation;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 250
    :cond_16
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, p3}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 252
    if-nez p2, :cond_28

    if-eqz p3, :cond_20

    goto :goto_28

    .line 253
    :cond_20
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "At least one of ain or aout is required to be non-null."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_28
    :goto_28
    if-eqz p2, :cond_40

    .line 259
    array-length v1, p2

    new-array v1, v1, [J

    .line 260
    .local v1, "in_ids":[J
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_2e
    array-length v3, p2

    if-ge v2, v3, :cond_3e

    .line 261
    aget-object v3, p2, v2

    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_3e
    move-object v6, v1

    .end local v2    # "index":I
    goto :goto_42

    .line 264
    .end local v1    # "in_ids":[J
    :cond_40
    const/4 v1, 0x0

    move-object v6, v1

    .line 267
    .local v6, "in_ids":[J
    :goto_42
    const-wide/16 v1, 0x0

    .line 268
    .local v1, "out_id":J
    if-eqz p3, :cond_4e

    .line 269
    iget-object v3, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p3, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move-wide v7, v1

    goto :goto_4f

    .line 268
    :cond_4e
    move-wide v7, v1

    .line 272
    .end local v1    # "out_id":J
    .local v7, "out_id":J
    :goto_4f
    const/4 v1, 0x0

    .line 273
    .local v1, "params":[B
    if-eqz p4, :cond_58

    .line 274
    invoke-virtual {p4}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    move-object v9, v1

    goto :goto_59

    .line 273
    :cond_58
    move-object v9, v1

    .line 277
    .end local v1    # "params":[B
    .local v9, "params":[B
    :goto_59
    const/4 v1, 0x0

    .line 278
    .local v1, "limits":[I
    if-eqz p5, :cond_8a

    .line 279
    const/4 v2, 0x6

    new-array v1, v2, [I

    .line 281
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetxstart(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v1, v0

    .line 282
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetxend(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v0

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 283
    const/4 v0, 0x2

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetystart(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v1, v0

    .line 284
    const/4 v0, 0x3

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetyend(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v1, v0

    .line 285
    const/4 v0, 0x4

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetzstart(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v1, v0

    .line 286
    const/4 v0, 0x5

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetzend(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v1, v0

    move-object v10, v1

    goto :goto_8b

    .line 278
    :cond_8a
    move-object v10, v1

    .line 289
    .end local v1    # "limits":[I
    .local v10, "limits":[I
    :goto_8b
    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    move v5, p1

    invoke-virtual/range {v2 .. v10}, Landroid/renderscript/RenderScript;->nScriptForEach(JI[JJ[B[I)V

    .line 290
    return-void
.end method

.method public whitelist getVarB(I)Z
    .registers 5
    .param p1, "index"    # I

    .line 433
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarI(JI)I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist getVarD(I)D
    .registers 5
    .param p1, "index"    # I

    .line 398
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarD(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getVarF(I)F
    .registers 5
    .param p1, "index"    # I

    .line 387
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarF(JI)F

    move-result v0

    return v0
.end method

.method public whitelist getVarI(I)I
    .registers 5
    .param p1, "index"    # I

    .line 409
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarI(JI)I

    move-result v0

    return v0
.end method

.method public whitelist getVarJ(I)J
    .registers 5
    .param p1, "index"    # I

    .line 421
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarJ(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getVarV(ILandroid/renderscript/FieldPacker;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;

    .line 467
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/renderscript/RenderScript;->nScriptGetVarV(JI[B)V

    .line 468
    return-void
.end method

.method protected whitelist invoke(I)V
    .registers 5
    .param p1, "slot"    # I

    .line 156
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(JI)V

    .line 157
    return-void
.end method

.method protected whitelist invoke(ILandroid/renderscript/FieldPacker;)V
    .registers 7
    .param p1, "slot"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;

    .line 164
    if-eqz p2, :cond_12

    .line 165
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/renderscript/RenderScript;->nScriptInvokeV(JI[B)V

    goto :goto_1d

    .line 167
    :cond_12
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(JI)V

    .line 169
    :goto_1d
    return-void
.end method

.method protected whitelist reduce(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 16
    .param p1, "slot"    # I
    .param p2, "ains"    # [Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    .line 297
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 298
    if-eqz p2, :cond_7d

    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_7d

    .line 302
    if-eqz p3, :cond_74

    .line 306
    array-length v0, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v0, :cond_1c

    aget-object v4, p2, v3

    .line 307
    .local v4, "ain":Landroid/renderscript/Allocation;
    iget-object v5, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v5, v4}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 306
    .end local v4    # "ain":Landroid/renderscript/Allocation;
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 310
    :cond_1c
    array-length v0, p2

    new-array v7, v0, [J

    .line 311
    .local v7, "in_ids":[J
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_20
    array-length v3, p2

    if-ge v0, v3, :cond_30

    .line 312
    aget-object v3, p2, v0

    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    aput-wide v3, v7, v0

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 314
    .end local v0    # "index":I
    :cond_30
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p3, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    .line 316
    .local v8, "out_id":J
    const/4 v0, 0x0

    .line 317
    .local v0, "limits":[I
    if-eqz p4, :cond_66

    .line 318
    const/4 v3, 0x6

    new-array v0, v3, [I

    .line 320
    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetxstart(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v3

    aput v3, v0, v2

    .line 321
    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetxend(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v0, v1

    .line 322
    const/4 v1, 0x2

    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetystart(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v0, v1

    .line 323
    const/4 v1, 0x3

    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetyend(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v0, v1

    .line 324
    const/4 v1, 0x4

    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetzstart(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v0, v1

    .line 325
    const/4 v1, 0x5

    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetzend(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v0, v1

    move-object v10, v0

    goto :goto_67

    .line 317
    :cond_66
    move-object v10, v0

    .line 328
    .end local v0    # "limits":[I
    .local v10, "limits":[I
    :goto_67
    iget-object v3, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    move v6, p1

    .end local p1    # "slot":I
    .local v6, "slot":I
    invoke-virtual/range {v3 .. v10}, Landroid/renderscript/RenderScript;->nScriptReduce(JI[JJ[I)V

    .line 329
    return-void

    .line 303
    .end local v6    # "slot":I
    .end local v7    # "in_ids":[J
    .end local v8    # "out_id":J
    .end local v10    # "limits":[I
    .restart local p1    # "slot":I
    :cond_74
    move v6, p1

    .end local p1    # "slot":I
    .restart local v6    # "slot":I
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "aout is required to be non-null."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 298
    .end local v6    # "slot":I
    .restart local p1    # "slot":I
    :cond_7d
    move v6, p1

    .line 299
    .end local p1    # "slot":I
    .restart local v6    # "slot":I
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "At least one input is required."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setTimeZone(Ljava/lang/String;)V
    .registers 6
    .param p1, "timeZone"    # Ljava/lang/String;

    .line 471
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 473
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/renderscript/RenderScript;->nScriptSetTimeZone(J[B)V
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_16} :catch_18

    .line 476
    nop

    .line 477
    return-void

    .line 474
    :catch_18
    move-exception v0

    .line 475
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setVar(ID)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "v"    # D

    .line 395
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p1

    move-wide v4, p2

    .end local p1    # "index":I
    .end local p2    # "v":D
    .local v3, "index":I
    .local v4, "v":D
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarD(JID)V

    .line 396
    return-void
.end method

.method public whitelist setVar(IF)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "v"    # F

    .line 384
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarF(JIF)V

    .line 385
    return-void
.end method

.method public whitelist setVar(II)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "v"    # I

    .line 406
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarI(JII)V

    .line 407
    return-void
.end method

.method public whitelist setVar(IJ)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "v"    # J

    .line 418
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p1

    move-wide v4, p2

    .end local p1    # "index":I
    .end local p2    # "v":J
    .local v3, "index":I
    .local v4, "v":J
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarJ(JIJ)V

    .line 419
    return-void
.end method

.method public whitelist setVar(ILandroid/renderscript/BaseObj;)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "o"    # Landroid/renderscript/BaseObj;

    .line 441
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 442
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, p2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 443
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    if-nez p2, :cond_17

    const-wide/16 v4, 0x0

    goto :goto_1d

    :cond_17
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p2, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    :goto_1d
    move-wide v5, v4

    move v4, p1

    .end local p1    # "index":I
    .local v4, "index":I
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nScriptSetVarObj(JIJ)V

    .line 444
    return-void
.end method

.method public whitelist setVar(ILandroid/renderscript/FieldPacker;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;

    .line 451
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/renderscript/RenderScript;->nScriptSetVarV(JI[B)V

    .line 452
    return-void
.end method

.method public whitelist setVar(ILandroid/renderscript/FieldPacker;Landroid/renderscript/Element;[I)V
    .registers 13
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;
    .param p3, "e"    # Landroid/renderscript/Element;
    .param p4, "dims"    # [I

    .line 459
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v4

    iget-object v3, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p3, v3}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    move v3, p1

    move-object v7, p4

    .end local p1    # "index":I
    .end local p4    # "dims":[I
    .local v3, "index":I
    .local v7, "dims":[I
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->nScriptSetVarVE(JI[BJ[I)V

    .line 460
    return-void
.end method

.method public whitelist setVar(IZ)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "v"    # Z

    .line 430
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarI(JII)V

    .line 431
    return-void
.end method
