.class public Landroid/graphics/PorterDuff;
.super Ljava/lang/Object;
.source "PorterDuff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/PorterDuff$Mode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final intToMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "val"    # I

    #@0
    .prologue
    .line 82
    packed-switch p0, :pswitch_data_0

    #@3
    .line 84
    :pswitch_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@5
    return-object v0

    #@6
    .line 85
    :pswitch_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    #@8
    return-object v0

    #@9
    .line 86
    :pswitch_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    #@b
    return-object v0

    #@c
    .line 87
    :pswitch_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    #@e
    return-object v0

    #@f
    .line 88
    :pswitch_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    #@11
    return-object v0

    #@12
    .line 89
    :pswitch_5
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@14
    return-object v0

    #@15
    .line 90
    :pswitch_6
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    #@17
    return-object v0

    #@18
    .line 91
    :pswitch_7
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    #@1a
    return-object v0

    #@1b
    .line 92
    :pswitch_8
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    #@1d
    return-object v0

    #@1e
    .line 93
    :pswitch_9
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@20
    return-object v0

    #@21
    .line 94
    :pswitch_a
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@23
    return-object v0

    #@24
    .line 95
    :pswitch_b
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    #@26
    return-object v0

    #@27
    .line 96
    :pswitch_c
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    #@29
    return-object v0

    #@2a
    .line 97
    :pswitch_d
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    #@2c
    return-object v0

    #@2d
    .line 98
    :pswitch_e
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    #@2f
    return-object v0

    #@30
    .line 99
    :pswitch_f
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    #@32
    return-object v0

    #@33
    .line 100
    :pswitch_10
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    #@35
    return-object v0

    #@36
    .line 101
    :pswitch_11
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    #@38
    return-object v0

    #@39
    .line 82
    nop

    #@3a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_10
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static final modeToInt(Landroid/graphics/PorterDuff$Mode;)I
    .locals 1
    .param p0, "mode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 75
    iget v0, p0, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    #@2
    return v0
.end method
