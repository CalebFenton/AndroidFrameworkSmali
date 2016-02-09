.class public Landroid/view/animation/Animation$Description;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Description"
.end annotation


# instance fields
.field public type:I

.field public value:F


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;
    .locals 6
    .param p0, "value"    # Landroid/util/TypedValue;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 1101
    new-instance v0, Landroid/view/animation/Animation$Description;

    #@5
    invoke-direct {v0}, Landroid/view/animation/Animation$Description;-><init>()V

    #@8
    .line 1102
    .local v0, "d":Landroid/view/animation/Animation$Description;
    if-nez p0, :cond_1

    #@a
    .line 1103
    iput v4, v0, Landroid/view/animation/Animation$Description;->type:I

    #@c
    .line 1104
    iput v5, v0, Landroid/view/animation/Animation$Description;->value:F

    #@e
    .line 1124
    :cond_0
    iput v4, v0, Landroid/view/animation/Animation$Description;->type:I

    #@10
    .line 1125
    iput v5, v0, Landroid/view/animation/Animation$Description;->value:F

    #@12
    .line 1127
    return-object v0

    #@13
    .line 1106
    :cond_1
    iget v2, p0, Landroid/util/TypedValue;->type:I

    #@15
    const/4 v3, 0x6

    #@16
    if-ne v2, v3, :cond_3

    #@18
    .line 1107
    iget v2, p0, Landroid/util/TypedValue;->data:I

    #@1a
    and-int/lit8 v2, v2, 0xf

    #@1c
    if-ne v2, v1, :cond_2

    #@1e
    .line 1109
    const/4 v1, 0x2

    #@1f
    .line 1107
    :cond_2
    iput v1, v0, Landroid/view/animation/Animation$Description;->type:I

    #@21
    .line 1110
    iget v1, p0, Landroid/util/TypedValue;->data:I

    #@23
    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    #@26
    move-result v1

    #@27
    iput v1, v0, Landroid/view/animation/Animation$Description;->value:F

    #@29
    .line 1111
    return-object v0

    #@2a
    .line 1112
    :cond_3
    iget v1, p0, Landroid/util/TypedValue;->type:I

    #@2c
    const/4 v2, 0x4

    #@2d
    if-ne v1, v2, :cond_4

    #@2f
    .line 1113
    iput v4, v0, Landroid/view/animation/Animation$Description;->type:I

    #@31
    .line 1114
    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    #@34
    move-result v1

    #@35
    iput v1, v0, Landroid/view/animation/Animation$Description;->value:F

    #@37
    .line 1115
    return-object v0

    #@38
    .line 1116
    :cond_4
    iget v1, p0, Landroid/util/TypedValue;->type:I

    #@3a
    const/16 v2, 0x10

    #@3c
    if-lt v1, v2, :cond_0

    #@3e
    .line 1117
    iget v1, p0, Landroid/util/TypedValue;->type:I

    #@40
    const/16 v2, 0x1f

    #@42
    if-gt v1, v2, :cond_0

    #@44
    .line 1118
    iput v4, v0, Landroid/view/animation/Animation$Description;->type:I

    #@46
    .line 1119
    iget v1, p0, Landroid/util/TypedValue;->data:I

    #@48
    int-to-float v1, v1

    #@49
    iput v1, v0, Landroid/view/animation/Animation$Description;->value:F

    #@4b
    .line 1120
    return-object v0
.end method
