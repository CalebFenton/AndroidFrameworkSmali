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
.field greylist-max-o mArgIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/renderscript/ScriptGroup$Closure;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field greylist-max-o mFieldID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/renderscript/ScriptGroup$Closure;",
            "Landroid/renderscript/Script$FieldID;",
            ">;>;"
        }
    .end annotation
.end field

.field greylist-max-o mValue:Ljava/lang/Object;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Input;->mFieldID:Ljava/util/List;

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Input;->mArgIndex:Ljava/util/List;

    .line 377
    return-void
.end method


# virtual methods
.method greylist-max-o addReference(Landroid/renderscript/ScriptGroup$Closure;I)V
    .registers 5
    .param p1, "closure"    # Landroid/renderscript/ScriptGroup$Closure;
    .param p2, "index"    # I

    .line 380
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Input;->mArgIndex:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    return-void
.end method

.method greylist-max-o addReference(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;)V
    .registers 5
    .param p1, "closure"    # Landroid/renderscript/ScriptGroup$Closure;
    .param p2, "fieldID"    # Landroid/renderscript/Script$FieldID;

    .line 384
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Input;->mFieldID:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    return-void
.end method

.method greylist-max-o get()Ljava/lang/Object;
    .registers 2

    .line 401
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Input;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method greylist-max-o set(Ljava/lang/Object;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 388
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$Input;->mValue:Ljava/lang/Object;

    .line 389
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Input;->mArgIndex:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 390
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/renderscript/ScriptGroup$Closure;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/renderscript/ScriptGroup$Closure;

    .line 391
    .local v2, "closure":Landroid/renderscript/ScriptGroup$Closure;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 392
    .local v3, "index":I
    invoke-virtual {v2, v3, p1}, Landroid/renderscript/ScriptGroup$Closure;->setArg(ILjava/lang/Object;)V

    .line 393
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/renderscript/ScriptGroup$Closure;Ljava/lang/Integer;>;"
    .end local v2    # "closure":Landroid/renderscript/ScriptGroup$Closure;
    .end local v3    # "index":I
    goto :goto_8

    .line 394
    :cond_24
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Input;->mFieldID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 395
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/renderscript/ScriptGroup$Closure;

    .line 396
    .restart local v2    # "closure":Landroid/renderscript/ScriptGroup$Closure;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/renderscript/Script$FieldID;

    .line 397
    .local v3, "fieldID":Landroid/renderscript/Script$FieldID;
    invoke-virtual {v2, v3, p1}, Landroid/renderscript/ScriptGroup$Closure;->setGlobal(Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V

    .line 398
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;>;"
    .end local v2    # "closure":Landroid/renderscript/ScriptGroup$Closure;
    .end local v3    # "fieldID":Landroid/renderscript/Script$FieldID;
    goto :goto_2a

    .line 399
    :cond_42
    return-void
.end method
