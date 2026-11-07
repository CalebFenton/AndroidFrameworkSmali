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
.field public greylist-max-o size:I

.field public greylist-max-o value:J


# direct methods
.method public constructor greylist-max-o <init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V
    .registers 7
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    instance-of v0, p2, Landroid/renderscript/Allocation;

    if-eqz v0, :cond_14

    .line 306
    move-object v0, p2

    check-cast v0, Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 309
    const/4 v0, -0x1

    iput v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_76

    .line 310
    :cond_14
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x4

    if-eqz v0, :cond_2c

    .line 311
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_25

    const-wide/16 v2, 0x1

    goto :goto_27

    :cond_25
    const-wide/16 v2, 0x0

    :goto_27
    iput-wide v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 312
    iput v1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_76

    .line 313
    :cond_2c
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_3c

    .line 314
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 315
    iput v1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_76

    .line 316
    :cond_3c
    instance-of v0, p2, Ljava/lang/Long;

    const/16 v2, 0x8

    if-eqz v0, :cond_4e

    .line 317
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 318
    iput v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_76

    .line 319
    :cond_4e
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_63

    .line 320
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 321
    iput v1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_76

    .line 322
    :cond_63
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_76

    .line 323
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 324
    iput v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    .line 326
    :cond_76
    :goto_76
    return-void
.end method
