.class public final Landroid/renderscript/ScriptGroup$Input;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Input"
.end annotation


# instance fields
.field mArgIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/renderscript/ScriptGroup$Closure;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mFieldID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/renderscript/ScriptGroup$Closure;",
            "Landroid/renderscript/Script$FieldID;",
            ">;>;"
        }
    .end annotation
.end field

.field mValue:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 347
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Input;->mFieldID:Ljava/util/List;

    #@a
    .line 348
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Input;->mArgIndex:Ljava/util/List;

    #@11
    .line 346
    return-void
.end method


# virtual methods
.method addReference(Landroid/renderscript/ScriptGroup$Closure;I)V
    .locals 2
    .param p1, "closure"    # Landroid/renderscript/ScriptGroup$Closure;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Input;->mArgIndex:Ljava/util/List;

    #@2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 351
    return-void
.end method

.method addReference(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;)V
    .locals 2
    .param p1, "closure"    # Landroid/renderscript/ScriptGroup$Closure;
    .param p2, "fieldID"    # Landroid/renderscript/Script$FieldID;

    #@0
    .prologue
    .line 356
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Input;->mFieldID:Ljava/util/List;

    #@2
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9
    .line 355
    return-void
.end method

.method get()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 373
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Input;->mValue:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method set(Ljava/lang/Object;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 360
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$Input;->mValue:Ljava/lang/Object;

    #@2
    .line 361
    iget-object v6, p0, Landroid/renderscript/ScriptGroup$Input;->mArgIndex:Ljava/util/List;

    #@4
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v5

    #@8
    .local v5, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v4

    #@12
    check-cast v4, Landroid/util/Pair;

    #@14
    .line 362
    .local v4, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/renderscript/ScriptGroup$Closure;Ljava/lang/Integer;>;"
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@16
    check-cast v0, Landroid/renderscript/ScriptGroup$Closure;

    #@18
    .line 363
    .local v0, "closure":Landroid/renderscript/ScriptGroup$Closure;
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@1a
    check-cast v6, Ljava/lang/Integer;

    #@1c
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@1f
    move-result v2

    #@20
    .line 364
    .local v2, "index":I
    invoke-virtual {v0, v2, p1}, Landroid/renderscript/ScriptGroup$Closure;->setArg(ILjava/lang/Object;)V

    #@23
    goto :goto_0

    #@24
    .line 366
    .end local v0    # "closure":Landroid/renderscript/ScriptGroup$Closure;
    .end local v2    # "index":I
    .end local v4    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/renderscript/ScriptGroup$Closure;Ljava/lang/Integer;>;"
    :cond_0
    iget-object v6, p0, Landroid/renderscript/ScriptGroup$Input;->mFieldID:Ljava/util/List;

    #@26
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v5

    #@2a
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v6

    #@2e
    if-eqz v6, :cond_1

    #@30
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    check-cast v3, Landroid/util/Pair;

    #@36
    .line 367
    .local v3, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;>;"
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@38
    check-cast v0, Landroid/renderscript/ScriptGroup$Closure;

    #@3a
    .line 368
    .restart local v0    # "closure":Landroid/renderscript/ScriptGroup$Closure;
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@3c
    check-cast v1, Landroid/renderscript/Script$FieldID;

    #@3e
    .line 369
    .local v1, "fieldID":Landroid/renderscript/Script$FieldID;
    invoke-virtual {v0, v1, p1}, Landroid/renderscript/ScriptGroup$Closure;->setGlobal(Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V

    #@41
    goto :goto_1

    #@42
    .line 359
    .end local v0    # "closure":Landroid/renderscript/ScriptGroup$Closure;
    .end local v1    # "fieldID":Landroid/renderscript/Script$FieldID;
    .end local v3    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;>;"
    :cond_1
    return-void
.end method
