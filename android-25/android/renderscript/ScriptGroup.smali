.class public final Landroid/renderscript/ScriptGroup;
.super Landroid/renderscript/BaseObj;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ScriptGroup$Binding;,
        Landroid/renderscript/ScriptGroup$Builder2;,
        Landroid/renderscript/ScriptGroup$Builder;,
        Landroid/renderscript/ScriptGroup$Closure;,
        Landroid/renderscript/ScriptGroup$ConnectLine;,
        Landroid/renderscript/ScriptGroup$Future;,
        Landroid/renderscript/ScriptGroup$IO;,
        Landroid/renderscript/ScriptGroup$Input;,
        Landroid/renderscript/ScriptGroup$Node;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptGroup"


# instance fields
.field private mClosures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/renderscript/ScriptGroup$Closure;",
            ">;"
        }
    .end annotation
.end field

.field mInputs:[Landroid/renderscript/ScriptGroup$IO;

.field private mInputs2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/renderscript/ScriptGroup$Input;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field mOutputs:[Landroid/renderscript/ScriptGroup$IO;

.field private mOutputs2:[Landroid/renderscript/ScriptGroup$Future;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 405
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 406
    iget-object v0, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    #@5
    const-string/jumbo v1, "destroy"

    #@8
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@b
    .line 404
    return-void
.end method

.method constructor <init>(Landroid/renderscript/RenderScript;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[Landroid/renderscript/ScriptGroup$Future;)V
    .locals 6
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "name"    # Ljava/lang/String;
    .param p5, "outputs"    # [Landroid/renderscript/ScriptGroup$Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/RenderScript;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/renderscript/ScriptGroup$Closure;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/renderscript/ScriptGroup$Input;",
            ">;[",
            "Landroid/renderscript/ScriptGroup$Future;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 411
    .local p3, "closures":Ljava/util/List;, "Ljava/util/List<Landroid/renderscript/ScriptGroup$Closure;>;"
    .local p4, "inputs":Ljava/util/List;, "Ljava/util/List<Landroid/renderscript/ScriptGroup$Input;>;"
    const-wide/16 v4, 0x0

    #@2
    invoke-direct {p0, v4, v5, p1}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    #@5
    .line 412
    iput-object p2, p0, Landroid/renderscript/ScriptGroup;->mName:Ljava/lang/String;

    #@7
    .line 413
    iput-object p3, p0, Landroid/renderscript/ScriptGroup;->mClosures:Ljava/util/List;

    #@9
    .line 414
    iput-object p4, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    #@b
    .line 415
    iput-object p5, p0, Landroid/renderscript/ScriptGroup;->mOutputs2:[Landroid/renderscript/ScriptGroup$Future;

    #@d
    .line 417
    invoke-interface {p3}, Ljava/util/List;->size()I

    #@10
    move-result v4

    #@11
    new-array v0, v4, [J

    #@13
    .line 418
    .local v0, "closureIDs":[J
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    array-length v4, v0

    #@15
    if-ge v1, v4, :cond_0

    #@17
    .line 419
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, Landroid/renderscript/ScriptGroup$Closure;

    #@1d
    invoke-virtual {v4, p1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    #@20
    move-result-wide v4

    #@21
    aput-wide v4, v0, v1

    #@23
    .line 418
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 421
    :cond_0
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {p1, p2, v4, v0}, Landroid/renderscript/RenderScript;->nScriptGroup2Create(Ljava/lang/String;Ljava/lang/String;[J)J

    #@2d
    move-result-wide v2

    #@2e
    .line 422
    .local v2, "id":J
    invoke-virtual {p0, v2, v3}, Landroid/renderscript/BaseObj;->setID(J)V

    #@31
    .line 423
    iget-object v4, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    #@33
    const-string/jumbo v5, "destroy"

    #@36
    invoke-virtual {v4, v5}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@39
    .line 410
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    #@0
    .prologue
    .line 1068
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    #@3
    .line 1071
    iget-object v2, p0, Landroid/renderscript/ScriptGroup;->mClosures:Ljava/util/List;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 1072
    iget-object v2, p0, Landroid/renderscript/ScriptGroup;->mClosures:Ljava/util/List;

    #@9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/renderscript/ScriptGroup$Closure;

    #@19
    .line 1073
    .local v0, "c":Landroid/renderscript/ScriptGroup$Closure;
    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Closure;->destroy()V

    #@1c
    goto :goto_0

    #@1d
    .line 1067
    .end local v0    # "c":Landroid/renderscript/ScriptGroup$Closure;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public execute()V
    .locals 4

    #@0
    .prologue
    .line 525
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@2
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-virtual {p0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nScriptGroupExecute(J)V

    #@b
    .line 524
    return-void
.end method

.method public varargs execute([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 11
    .param p1, "inputs"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 436
    array-length v7, p1

    #@2
    iget-object v8, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    #@4
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@7
    move-result v8

    #@8
    if-ge v7, v8, :cond_0

    #@a
    .line 437
    const-string/jumbo v7, "ScriptGroup"

    #@d
    new-instance v8, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@15
    move-result-object v9

    #@16
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v8

    #@1a
    const-string/jumbo v9, " receives "

    #@1d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v8

    #@21
    array-length v9, p1

    #@22
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v8

    #@26
    const-string/jumbo v9, " inputs, "

    #@29
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v8

    #@2d
    .line 438
    const-string/jumbo v9, "less than expected "

    #@30
    .line 437
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v8

    #@34
    .line 438
    iget-object v9, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    #@36
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@39
    move-result v9

    #@3a
    .line 437
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v8

    #@3e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v8

    #@42
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 439
    return-object v10

    #@46
    .line 442
    :cond_0
    array-length v7, p1

    #@47
    iget-object v8, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    #@49
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@4c
    move-result v8

    #@4d
    if-le v7, v8, :cond_1

    #@4f
    .line 443
    const-string/jumbo v7, "ScriptGroup"

    #@52
    new-instance v8, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5a
    move-result-object v9

    #@5b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v8

    #@5f
    const-string/jumbo v9, " receives "

    #@62
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v8

    #@66
    array-length v9, p1

    #@67
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v8

    #@6b
    const-string/jumbo v9, " inputs, "

    #@6e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v8

    #@72
    .line 444
    const-string/jumbo v9, "more than expected "

    #@75
    .line 443
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v8

    #@79
    .line 444
    iget-object v9, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    #@7b
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@7e
    move-result v9

    #@7f
    .line 443
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@82
    move-result-object v8

    #@83
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v8

    #@87
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    .line 447
    :cond_1
    const/4 v1, 0x0

    #@8b
    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    #@8d
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@90
    move-result v7

    #@91
    if-ge v1, v7, :cond_4

    #@93
    .line 448
    aget-object v3, p1, v1

    #@95
    .line 449
    .local v3, "obj":Ljava/lang/Object;
    instance-of v7, v3, Landroid/renderscript/ScriptGroup$Future;

    #@97
    if-nez v7, :cond_2

    #@99
    instance-of v7, v3, Landroid/renderscript/ScriptGroup$Input;

    #@9b
    if-eqz v7, :cond_3

    #@9d
    .line 450
    :cond_2
    const-string/jumbo v7, "ScriptGroup"

    #@a0
    new-instance v8, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@a8
    move-result-object v9

    #@a9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v8

    #@ad
    const-string/jumbo v9, ": input "

    #@b0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v8

    #@b4
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v8

    #@b8
    .line 451
    const-string/jumbo v9, " is a future or unbound value"

    #@bb
    .line 450
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v8

    #@bf
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v8

    #@c3
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c6
    .line 452
    return-object v10

    #@c7
    .line 454
    :cond_3
    iget-object v7, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    #@c9
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@cc
    move-result-object v6

    #@cd
    check-cast v6, Landroid/renderscript/ScriptGroup$Input;

    #@cf
    .line 455
    .local v6, "unbound":Landroid/renderscript/ScriptGroup$Input;
    invoke-virtual {v6, v3}, Landroid/renderscript/ScriptGroup$Input;->set(Ljava/lang/Object;)V

    #@d2
    .line 447
    add-int/lit8 v1, v1, 0x1

    #@d4
    goto :goto_0

    #@d5
    .line 458
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v6    # "unbound":Landroid/renderscript/ScriptGroup$Input;
    :cond_4
    iget-object v7, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@d7
    iget-object v8, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@d9
    invoke-virtual {p0, v8}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    #@dc
    move-result-wide v8

    #@dd
    invoke-virtual {v7, v8, v9}, Landroid/renderscript/RenderScript;->nScriptGroup2Execute(J)V

    #@e0
    .line 460
    iget-object v7, p0, Landroid/renderscript/ScriptGroup;->mOutputs2:[Landroid/renderscript/ScriptGroup$Future;

    #@e2
    array-length v7, v7

    #@e3
    new-array v5, v7, [Ljava/lang/Object;

    #@e5
    .line 461
    .local v5, "outputObjs":[Ljava/lang/Object;
    const/4 v1, 0x0

    #@e6
    .line 462
    iget-object v8, p0, Landroid/renderscript/ScriptGroup;->mOutputs2:[Landroid/renderscript/ScriptGroup$Future;

    #@e8
    const/4 v7, 0x0

    #@e9
    array-length v9, v8

    #@ea
    move v2, v1

    #@eb
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-ge v7, v9, :cond_6

    #@ed
    aget-object v0, v8, v7

    #@ef
    .line 463
    .local v0, "f":Landroid/renderscript/ScriptGroup$Future;
    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    #@f2
    move-result-object v4

    #@f3
    .line 464
    .local v4, "output":Ljava/lang/Object;
    instance-of v10, v4, Landroid/renderscript/ScriptGroup$Input;

    #@f5
    if-eqz v10, :cond_5

    #@f7
    .line 465
    nop

    #@f8
    nop

    #@f9
    .end local v4    # "output":Ljava/lang/Object;
    invoke-virtual {v4}, Landroid/renderscript/ScriptGroup$Input;->get()Ljava/lang/Object;

    #@fc
    move-result-object v4

    #@fd
    .line 467
    .restart local v4    # "output":Ljava/lang/Object;
    :cond_5
    add-int/lit8 v1, v2, 0x1

    #@ff
    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput-object v4, v5, v2

    #@101
    .line 462
    add-int/lit8 v7, v7, 0x1

    #@103
    move v2, v1

    #@104
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    #@105
    .line 469
    .end local v0    # "f":Landroid/renderscript/ScriptGroup$Future;
    .end local v4    # "output":Ljava/lang/Object;
    :cond_6
    return-object v5
.end method

.method public setInput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
    .locals 8
    .param p1, "s"    # Landroid/renderscript/Script$KernelID;
    .param p2, "a"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 484
    const/4 v0, 0x0

    #@1
    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 485
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    #@8
    aget-object v1, v1, v0

    #@a
    iget-object v1, v1, Landroid/renderscript/ScriptGroup$IO;->mKID:Landroid/renderscript/Script$KernelID;

    #@c
    if-ne v1, p1, :cond_0

    #@e
    .line 486
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    #@10
    aget-object v1, v1, v0

    #@12
    iput-object p2, v1, Landroid/renderscript/ScriptGroup$IO;->mAllocation:Landroid/renderscript/Allocation;

    #@14
    .line 487
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@16
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@18
    invoke-virtual {p0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    #@1b
    move-result-wide v2

    #@1c
    iget-object v4, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@1e
    invoke-virtual {p1, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    #@21
    move-result-wide v4

    #@22
    iget-object v6, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@24
    invoke-virtual {v6, p2}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)J

    #@27
    move-result-wide v6

    #@28
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nScriptGroupSetInput(JJJ)V

    #@2b
    .line 488
    return-void

    #@2c
    .line 484
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 491
    :cond_1
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@31
    const-string/jumbo v2, "Script not found"

    #@34
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1
.end method

.method public setOutput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
    .locals 8
    .param p1, "s"    # Landroid/renderscript/Script$KernelID;
    .param p2, "a"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 506
    const/4 v0, 0x0

    #@1
    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 507
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    #@8
    aget-object v1, v1, v0

    #@a
    iget-object v1, v1, Landroid/renderscript/ScriptGroup$IO;->mKID:Landroid/renderscript/Script$KernelID;

    #@c
    if-ne v1, p1, :cond_0

    #@e
    .line 508
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    #@10
    aget-object v1, v1, v0

    #@12
    iput-object p2, v1, Landroid/renderscript/ScriptGroup$IO;->mAllocation:Landroid/renderscript/Allocation;

    #@14
    .line 509
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@16
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@18
    invoke-virtual {p0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    #@1b
    move-result-wide v2

    #@1c
    iget-object v4, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@1e
    invoke-virtual {p1, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    #@21
    move-result-wide v4

    #@22
    iget-object v6, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@24
    invoke-virtual {v6, p2}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)J

    #@27
    move-result-wide v6

    #@28
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nScriptGroupSetOutput(JJJ)V

    #@2b
    .line 510
    return-void

    #@2c
    .line 506
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 513
    :cond_1
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@31
    const-string/jumbo v2, "Script not found"

    #@34
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1
.end method
