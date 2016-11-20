.class public final Landroid/icu/lang/UCharacterDirection;
.super Ljava/lang/Object;
.source "UCharacterDirection.java"

# interfaces
.implements Landroid/icu/lang/UCharacterEnums$ECharacterDirection;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "dir"    # I

    #@0
    .prologue
    .line 40
    packed-switch p0, :pswitch_data_0

    #@3
    .line 89
    const-string/jumbo v0, "Unassigned"

    #@6
    return-object v0

    #@7
    .line 43
    :pswitch_0
    const-string/jumbo v0, "Left-to-Right"

    #@a
    return-object v0

    #@b
    .line 45
    :pswitch_1
    const-string/jumbo v0, "Right-to-Left"

    #@e
    return-object v0

    #@f
    .line 47
    :pswitch_2
    const-string/jumbo v0, "European Number"

    #@12
    return-object v0

    #@13
    .line 49
    :pswitch_3
    const-string/jumbo v0, "European Number Separator"

    #@16
    return-object v0

    #@17
    .line 51
    :pswitch_4
    const-string/jumbo v0, "European Number Terminator"

    #@1a
    return-object v0

    #@1b
    .line 53
    :pswitch_5
    const-string/jumbo v0, "Arabic Number"

    #@1e
    return-object v0

    #@1f
    .line 55
    :pswitch_6
    const-string/jumbo v0, "Common Number Separator"

    #@22
    return-object v0

    #@23
    .line 57
    :pswitch_7
    const-string/jumbo v0, "Paragraph Separator"

    #@26
    return-object v0

    #@27
    .line 59
    :pswitch_8
    const-string/jumbo v0, "Segment Separator"

    #@2a
    return-object v0

    #@2b
    .line 61
    :pswitch_9
    const-string/jumbo v0, "Whitespace"

    #@2e
    return-object v0

    #@2f
    .line 63
    :pswitch_a
    const-string/jumbo v0, "Other Neutrals"

    #@32
    return-object v0

    #@33
    .line 65
    :pswitch_b
    const-string/jumbo v0, "Left-to-Right Embedding"

    #@36
    return-object v0

    #@37
    .line 67
    :pswitch_c
    const-string/jumbo v0, "Left-to-Right Override"

    #@3a
    return-object v0

    #@3b
    .line 69
    :pswitch_d
    const-string/jumbo v0, "Right-to-Left Arabic"

    #@3e
    return-object v0

    #@3f
    .line 71
    :pswitch_e
    const-string/jumbo v0, "Right-to-Left Embedding"

    #@42
    return-object v0

    #@43
    .line 73
    :pswitch_f
    const-string/jumbo v0, "Right-to-Left Override"

    #@46
    return-object v0

    #@47
    .line 75
    :pswitch_10
    const-string/jumbo v0, "Pop Directional Format"

    #@4a
    return-object v0

    #@4b
    .line 77
    :pswitch_11
    const-string/jumbo v0, "Non-Spacing Mark"

    #@4e
    return-object v0

    #@4f
    .line 79
    :pswitch_12
    const-string/jumbo v0, "Boundary Neutral"

    #@52
    return-object v0

    #@53
    .line 81
    :pswitch_13
    const-string/jumbo v0, "First Strong Isolate"

    #@56
    return-object v0

    #@57
    .line 83
    :pswitch_14
    const-string/jumbo v0, "Left-to-Right Isolate"

    #@5a
    return-object v0

    #@5b
    .line 85
    :pswitch_15
    const-string/jumbo v0, "Right-to-Left Isolate"

    #@5e
    return-object v0

    #@5f
    .line 87
    :pswitch_16
    const-string/jumbo v0, "Pop Directional Isolate"

    #@62
    return-object v0

    #@63
    .line 40
    nop

    #@64
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
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
