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
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 300
    instance-of v0, p2, Landroid/renderscript/Allocation;

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 301
    nop

    #@b
    nop

    #@c
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2, p1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    #@f
    move-result-wide v0

    #@10
    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    #@12
    .line 304
    const/4 v0, -0x1

    #@13
    iput v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    #@15
    .line 299
    :cond_0
    :goto_0
    return-void

    #@16
    .line 305
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, Ljava/lang/Boolean;

    #@18
    if-eqz v0, :cond_3

    #@1a
    .line 306
    nop

    #@1b
    nop

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
    .line 307
    iput v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    #@28
    goto :goto_0

    #@29
    .line 306
    :cond_2
    const/4 v0, 0x0

    #@2a
    goto :goto_1

    #@2b
    .line 308
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v0, p2, Ljava/lang/Integer;

    #@2d
    if-eqz v0, :cond_4

    #@2f
    .line 309
    nop

    #@30
    nop

    #@31
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->longValue()J

    #@34
    move-result-wide v0

    #@35
    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    #@37
    .line 310
    iput v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    #@39
    goto :goto_0

    #@3a
    .line 311
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v0, p2, Ljava/lang/Long;

    #@3c
    if-eqz v0, :cond_5

    #@3e
    .line 312
    nop

    #@3f
    nop

    #@40
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    #@43
    move-result-wide v0

    #@44
    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    #@46
    .line 313
    iput v3, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    #@48
    goto :goto_0

    #@49
    .line 314
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_5
    instance-of v0, p2, Ljava/lang/Float;

    #@4b
    if-eqz v0, :cond_6

    #@4d
    .line 315
    nop

    #@4e
    nop

    #@4f
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    #@52
    move-result v0

    #@53
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@56
    move-result v0

    #@57
    int-to-long v0, v0

    #@58
    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    #@5a
    .line 316
    iput v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    #@5c
    goto :goto_0

    #@5d
    .line 317
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_6
    instance-of v0, p2, Ljava/lang/Double;

    #@5f
    if-eqz v0, :cond_0

    #@61
    .line 318
    nop

    #@62
    nop

    #@63
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    #@66
    move-result-wide v0

    #@67
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@6a
    move-result-wide v0

    #@6b
    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    #@6d
    .line 319
    iput v3, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    #@6f
    goto :goto_0
.end method
