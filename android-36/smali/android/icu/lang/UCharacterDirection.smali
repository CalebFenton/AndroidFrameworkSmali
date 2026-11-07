.class public final Landroid/icu/lang/UCharacterDirection;
.super Ljava/lang/Object;
.source "UCharacterDirection.java"

# interfaces
.implements Landroid/icu/lang/UCharacterEnums$ECharacterDirection;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static whitelist test-api toString(I)Ljava/lang/String;
    .registers 2
    .param p0, "dir"    # I

    .line 42
    packed-switch p0, :pswitch_data_4c

    .line 91
    const-string v0, "Unassigned"

    return-object v0

    .line 89
    :pswitch_6
    const-string v0, "Pop Directional Isolate"

    return-object v0

    .line 87
    :pswitch_9
    const-string v0, "Right-to-Left Isolate"

    return-object v0

    .line 85
    :pswitch_c
    const-string v0, "Left-to-Right Isolate"

    return-object v0

    .line 83
    :pswitch_f
    const-string v0, "First Strong Isolate"

    return-object v0

    .line 81
    :pswitch_12
    const-string v0, "Boundary Neutral"

    return-object v0

    .line 79
    :pswitch_15
    const-string v0, "Non-Spacing Mark"

    return-object v0

    .line 77
    :pswitch_18
    const-string v0, "Pop Directional Format"

    return-object v0

    .line 75
    :pswitch_1b
    const-string v0, "Right-to-Left Override"

    return-object v0

    .line 73
    :pswitch_1e
    const-string v0, "Right-to-Left Embedding"

    return-object v0

    .line 71
    :pswitch_21
    const-string v0, "Right-to-Left Arabic"

    return-object v0

    .line 69
    :pswitch_24
    const-string v0, "Left-to-Right Override"

    return-object v0

    .line 67
    :pswitch_27
    const-string v0, "Left-to-Right Embedding"

    return-object v0

    .line 65
    :pswitch_2a
    const-string v0, "Other Neutrals"

    return-object v0

    .line 63
    :pswitch_2d
    const-string v0, "Whitespace"

    return-object v0

    .line 61
    :pswitch_30
    const-string v0, "Segment Separator"

    return-object v0

    .line 59
    :pswitch_33
    const-string v0, "Paragraph Separator"

    return-object v0

    .line 57
    :pswitch_36
    const-string v0, "Common Number Separator"

    return-object v0

    .line 55
    :pswitch_39
    const-string v0, "Arabic Number"

    return-object v0

    .line 53
    :pswitch_3c
    const-string v0, "European Number Terminator"

    return-object v0

    .line 51
    :pswitch_3f
    const-string v0, "European Number Separator"

    return-object v0

    .line 49
    :pswitch_42
    const-string v0, "European Number"

    return-object v0

    .line 47
    :pswitch_45
    const-string v0, "Right-to-Left"

    return-object v0

    .line 45
    :pswitch_48
    const-string v0, "Left-to-Right"

    return-object v0

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
