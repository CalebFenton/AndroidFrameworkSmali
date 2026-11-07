.class public final Landroid/renderscript/ScriptGroup;
.super Landroid/renderscript/BaseObj;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ScriptGroup$Future;,
        Landroid/renderscript/ScriptGroup$Closure;,
        Landroid/renderscript/ScriptGroup$Input;,
        Landroid/renderscript/ScriptGroup$IO;,
        Landroid/renderscript/ScriptGroup$Builder2;,
        Landroid/renderscript/ScriptGroup$Binding;,
        Landroid/renderscript/ScriptGroup$Builder;,
        Landroid/renderscript/ScriptGroup$Node;,
        Landroid/renderscript/ScriptGroup$ConnectLine;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ScriptGroup"


# instance fields
.field private greylist-max-o mClosures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/renderscript/ScriptGroup$Closure;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mInputs:[Landroid/renderscript/ScriptGroup$IO;

.field private greylist-max-o mInputs2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/renderscript/ScriptGroup$Input;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mName:Ljava/lang/String;

.field greylist-max-o mOutputs:[Landroid/renderscript/ScriptGroup$IO;

.field private greylist-max-o mOutputs2:[Landroid/renderscript/ScriptGroup$Future;


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 6
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 410
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 411
    iget-object v0, p0, Landroid/renderscript/ScriptGroup;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/renderscript/RenderScript;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[Landroid/renderscript/ScriptGroup$Future;)V
    .registers 11
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "name"    # Ljava/lang/String;
    .param p5, "outputs"    # [Landroid/renderscript/ScriptGroup$Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/RenderScript;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/renderscript/ScriptGroup$Closure;",
            ">;",
            "Ljava/util/List<",
            "Landroid/renderscript/ScriptGroup$Input;",
            ">;[",
            "Landroid/renderscript/ScriptGroup$Future;",
            ")V"
        }
    .end annotation

    .line 416
    .local p3, "closures":Ljava/util/List;, "Ljava/util/List<Landroid/renderscript/ScriptGroup$Closure;>;"
    .local p4, "inputs":Ljava/util/List;, "Ljava/util/List<Landroid/renderscript/ScriptGroup$Input;>;"
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 417
    iput-object p2, p0, Landroid/renderscript/ScriptGroup;->mName:Ljava/lang/String;

    .line 418
    iput-object p3, p0, Landroid/renderscript/ScriptGroup;->mClosures:Ljava/util/List;

    .line 419
    iput-object p4, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    .line 420
    iput-object p5, p0, Landroid/renderscript/ScriptGroup;->mOutputs2:[Landroid/renderscript/ScriptGroup$Future;

    .line 422
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 423
    .local v0, "closureIDs":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    array-length v2, v0

    if-ge v1, v2, :cond_26

    .line 424
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/ScriptGroup$Closure;

    invoke-virtual {v2, p1}, Landroid/renderscript/ScriptGroup$Closure;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 426
    .end local v1    # "i":I
    :cond_26
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v0}, Landroid/renderscript/RenderScript;->nScriptGroup2Create(Ljava/lang/String;Ljava/lang/String;[J)J

    move-result-wide v1

    .line 427
    .local v1, "id":J
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/ScriptGroup;->setID(J)V

    .line 428
    iget-object v3, p0, Landroid/renderscript/ScriptGroup;->guard:Ldalvik/system/CloseGuard;

    const-string v4, "destroy"

    invoke-virtual {v3, v4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 429
    return-void
.end method


# virtual methods
.method public whitelist destroy()V
    .registers 3

    .line 1073
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    .line 1076
    iget-object v0, p0, Landroid/renderscript/ScriptGroup;->mClosures:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 1077
    iget-object v0, p0, Landroid/renderscript/ScriptGroup;->mClosures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Closure;

    .line 1078
    .local v1, "c":Landroid/renderscript/ScriptGroup$Closure;
    invoke-virtual {v1}, Landroid/renderscript/ScriptGroup$Closure;->destroy()V

    .line 1079
    .end local v1    # "c":Landroid/renderscript/ScriptGroup$Closure;
    goto :goto_d

    .line 1081
    :cond_1d
    return-void
.end method

.method public whitelist execute()V
    .registers 4

    .line 530
    iget-object v0, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/ScriptGroup;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptGroupExecute(J)V

    .line 531
    return-void
.end method

.method public varargs whitelist execute([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 10
    .param p1, "inputs"    # [Ljava/lang/Object;

    .line 441
    array-length v0, p1

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, " receives "

    const-string v4, "ScriptGroup"

    if-ge v0, v1, :cond_3c

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inputs, less than expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    .line 443
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-object v2

    .line 447
    :cond_3c
    array-length v0, p1

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_72

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inputs, more than expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    .line 449
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_73
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_b9

    .line 453
    aget-object v1, p1, v0

    .line 454
    .local v1, "obj":Ljava/lang/Object;
    instance-of v3, v1, Landroid/renderscript/ScriptGroup$Future;

    if-nez v3, :cond_94

    instance-of v3, v1, Landroid/renderscript/ScriptGroup$Input;

    if-eqz v3, :cond_86

    goto :goto_94

    .line 459
    :cond_86
    iget-object v3, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/renderscript/ScriptGroup$Input;

    .line 460
    .local v3, "unbound":Landroid/renderscript/ScriptGroup$Input;
    invoke-virtual {v3, v1}, Landroid/renderscript/ScriptGroup$Input;->set(Ljava/lang/Object;)V

    .line 452
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v3    # "unbound":Landroid/renderscript/ScriptGroup$Input;
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 455
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_94
    :goto_94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": input "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is a future or unbound value"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-object v2

    .line 463
    .end local v0    # "i":I
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_b9
    iget-object v0, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/ScriptGroup;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptGroup2Execute(J)V

    .line 465
    iget-object v0, p0, Landroid/renderscript/ScriptGroup;->mOutputs2:[Landroid/renderscript/ScriptGroup$Future;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 466
    .local v0, "outputObjs":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 467
    .local v1, "i":I
    iget-object v2, p0, Landroid/renderscript/ScriptGroup;->mOutputs2:[Landroid/renderscript/ScriptGroup$Future;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_ce
    if-ge v4, v3, :cond_e9

    aget-object v5, v2, v4

    .line 468
    .local v5, "f":Landroid/renderscript/ScriptGroup$Future;
    invoke-virtual {v5}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 469
    .local v6, "output":Ljava/lang/Object;
    instance-of v7, v6, Landroid/renderscript/ScriptGroup$Input;

    if-eqz v7, :cond_e1

    .line 470
    move-object v7, v6

    check-cast v7, Landroid/renderscript/ScriptGroup$Input;

    invoke-virtual {v7}, Landroid/renderscript/ScriptGroup$Input;->get()Ljava/lang/Object;

    move-result-object v6

    .line 472
    :cond_e1
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "i":I
    .local v7, "i":I
    aput-object v6, v0, v1

    .line 467
    .end local v5    # "f":Landroid/renderscript/ScriptGroup$Future;
    .end local v6    # "output":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    move v1, v7

    goto :goto_ce

    .line 474
    .end local v7    # "i":I
    .restart local v1    # "i":I
    :cond_e9
    return-object v0
.end method

.method public whitelist setInput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
    .registers 12
    .param p1, "s"    # Landroid/renderscript/Script$KernelID;
    .param p2, "a"    # Landroid/renderscript/Allocation;

    .line 489
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_1
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    array-length v1, v1

    if-ge v0, v1, :cond_2f

    .line 490
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/renderscript/ScriptGroup$IO;->mKID:Landroid/renderscript/Script$KernelID;

    if-ne v1, p1, :cond_2c

    .line 491
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iput-object p2, v1, Landroid/renderscript/ScriptGroup$IO;->mAllocation:Landroid/renderscript/Allocation;

    .line 492
    iget-object v2, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/ScriptGroup;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v1}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, p2}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v7

    invoke-virtual/range {v2 .. v8}, Landroid/renderscript/RenderScript;->nScriptGroupSetInput(JJJ)V

    .line 493
    return-void

    .line 489
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 496
    .end local v0    # "ct":I
    :cond_2f
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Script not found"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOutput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
    .registers 12
    .param p1, "s"    # Landroid/renderscript/Script$KernelID;
    .param p2, "a"    # Landroid/renderscript/Allocation;

    .line 511
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_1
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    array-length v1, v1

    if-ge v0, v1, :cond_2f

    .line 512
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/renderscript/ScriptGroup$IO;->mKID:Landroid/renderscript/Script$KernelID;

    if-ne v1, p1, :cond_2c

    .line 513
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iput-object p2, v1, Landroid/renderscript/ScriptGroup$IO;->mAllocation:Landroid/renderscript/Allocation;

    .line 514
    iget-object v2, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/ScriptGroup;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v1}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, p2}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v7

    invoke-virtual/range {v2 .. v8}, Landroid/renderscript/RenderScript;->nScriptGroupSetOutput(JJJ)V

    .line 515
    return-void

    .line 511
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 518
    .end local v0    # "ct":I
    :cond_2f
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Script not found"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
