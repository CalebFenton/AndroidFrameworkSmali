.class final Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup$Closure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValueAndSize"
.end annotation


# instance fields
.field public size:I

.field public value:J


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V
    .locals 4
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/16 v3, 0x8

    #@2
    const/4 v2, 0x4

    #@3
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 279
    instance-of v0, p2, Landroid/renderscript/Allocation;

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 280
    check-cast p2, Landroid/renderscript/Allocation;

    #@c
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2, p1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@f
    move-result-wide v0

    #@10
    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    #@12
    .line 281
    const/4 v0, -0x1

    #@13
    iput v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    #@15
    .line 278
    :cond_0
    :goto_0
    return-void

    #@16
    .line 282
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, Ljava/lang/Boolean;

    #@18
    if-eqz v0, :cond_3

    #@1a
    .line 283
    check-cast p2, Ljava/lang/Boolean;

    #@1c
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_2

    #@22
    const/4 v0, 0x1

    #@23
    :goto_1
    int-to-long v0, v0

    #@24
    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    #@26
    .line 284
    iput v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    #@28
    goto :goto_0

    #@29
    .line 283
    :cond_2
    const/4 v0, 0x0

    #@2a
    goto :goto_1

    #@2b
    .line 285
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v0, p2, Ljava/lang/Integer;

    #@2d
    if-eqz v0, :cond_4

    #@2f
    .line 286
    check-cast p2, Ljava/lang/Integer;

    #@31
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->longValue()J

    #@34
    move-result-wide v0

    #@35
    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    #@37
    .line 287
    iput v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    #@39
    goto :goto_0

    #@3a
    .line 288
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v0, p2, Ljava/lang/Long;

    #@3c
    if-eqz v0, :cond_5

    #@3e
    .line 289
    check-cast p2, Ljava/lang/Long;

    #@40
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    #@43
    move-result-wide v0

    #@44
    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    #@46
    .line 290
    iput v3, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    #@48
    goto :goto_0

    #@49
    .line 291
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_5
    instance-of v0, p2, Ljava/lang/Float;

    #@4b
    if-eqz v0, :cond_6

    #@4d
    .line 292
    check-cast p2, Ljava/lang/Float;

    #@4f
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->longValue()J

    #@52
    move-result-wide v0

    #@53
    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    #@55
    .line 293
    iput v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    #@57
    goto :goto_0

    #@58
    .line 294
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_6
    instance-of v0, p2, Ljava/lang/Double;

    #@5a
    if-eqz v0, :cond_0

    #@5c
    .line 295
    check-cast p2, Ljava/lang/Double;

    #@5e
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->longValue()J

    #@61
    move-result-wide v0

    #@62
    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    #@64
    .line 296
    iput v3, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    #@66
    goto :goto_0
.end method
