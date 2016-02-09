.class Landroid/webkit/LegacyErrorStrings;
.super Ljava/lang/Object;
.source "LegacyErrorStrings.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Http"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getResource(I)I
    .locals 4
    .param p0, "errorCode"    # I

    #@0
    .prologue
    const v3, 0x10400d4

    #@3
    .line 45
    packed-switch p0, :pswitch_data_0

    #@6
    .line 95
    const-string/jumbo v0, "Http"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Using generic message for unknown error code: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 96
    return v3

    #@21
    .line 47
    :pswitch_0
    const v0, 0x10400d3

    #@24
    return v0

    #@25
    .line 50
    :pswitch_1
    return v3

    #@26
    .line 53
    :pswitch_2
    const v0, 0x10400d5

    #@29
    return v0

    #@2a
    .line 56
    :pswitch_3
    const v0, 0x10400d6

    #@2d
    return v0

    #@2e
    .line 59
    :pswitch_4
    const v0, 0x10400d7

    #@31
    return v0

    #@32
    .line 62
    :pswitch_5
    const v0, 0x10400d8

    #@35
    return v0

    #@36
    .line 65
    :pswitch_6
    const v0, 0x10400d9

    #@39
    return v0

    #@3a
    .line 68
    :pswitch_7
    const v0, 0x10400da

    #@3d
    return v0

    #@3e
    .line 71
    :pswitch_8
    const v0, 0x10400db

    #@41
    return v0

    #@42
    .line 74
    :pswitch_9
    const v0, 0x10400dc

    #@45
    return v0

    #@46
    .line 77
    :pswitch_a
    const v0, 0x1040008

    #@49
    return v0

    #@4a
    .line 80
    :pswitch_b
    const v0, 0x10400dd

    #@4d
    return v0

    #@4e
    .line 83
    :pswitch_c
    const v0, 0x1040007

    #@51
    return v0

    #@52
    .line 86
    :pswitch_d
    const v0, 0x10400de

    #@55
    return v0

    #@56
    .line 89
    :pswitch_e
    const v0, 0x10400df

    #@59
    return v0

    #@5a
    .line 92
    :pswitch_f
    const v0, 0x10400e0

    #@5d
    return v0

    #@5e
    .line 45
    :pswitch_data_0
    .packed-switch -0xf
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 37
    invoke-static {p0}, Landroid/webkit/LegacyErrorStrings;->getResource(I)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
