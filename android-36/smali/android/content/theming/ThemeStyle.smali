.class public final Landroid/content/theming/ThemeStyle;
.super Ljava/lang/Object;
.source "ThemeStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/theming/ThemeStyle$Type;
    }
.end annotation


# static fields
.field public static final blacklist CLOCK:I = 0x8

.field public static final blacklist CLOCK_VIBRANT:I = 0x9

.field public static final blacklist CONTENT:I = 0x6

.field public static final blacklist EXPRESSIVE:I = 0x3

.field public static final blacklist FRUIT_SALAD:I = 0x5

.field public static final blacklist MONOCHROMATIC:I = 0x7

.field public static final blacklist RAINBOW:I = 0x4

.field public static final blacklist SPRITZ:I = 0x0

.field public static final blacklist TONAL_SPOT:I = 0x1

.field public static final blacklist VIBRANT:I = 0x2


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static blacklist name(I)Ljava/lang/String;
    .registers 2
    .param p0, "style"    # I

    .line 158
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/content/theming/ThemeStyle;->toString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toString(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 4
    .param p0, "style"    # Ljava/lang/Integer;

    .line 108
    if-eqz p0, :cond_40

    .line 112
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_48

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid style value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :pswitch_22
    const-string v0, "CLOCK_VIBRANT"

    goto :goto_3f

    .line 121
    :pswitch_25
    const-string v0, "CLOCK"

    goto :goto_3f

    .line 120
    :pswitch_28
    const-string v0, "MONOCHROMATIC"

    goto :goto_3f

    .line 119
    :pswitch_2b
    const-string v0, "CONTENT"

    goto :goto_3f

    .line 118
    :pswitch_2e
    const-string v0, "FRUIT_SALAD"

    goto :goto_3f

    .line 117
    :pswitch_31
    const-string v0, "RAINBOW"

    goto :goto_3f

    .line 116
    :pswitch_34
    const-string v0, "EXPRESSIVE"

    goto :goto_3f

    .line 115
    :pswitch_37
    const-string v0, "VIBRANT"

    goto :goto_3f

    .line 114
    :pswitch_3a
    const-string v0, "TONAL_SPOT"

    goto :goto_3f

    .line 113
    :pswitch_3d
    const-string v0, "SPRITZ"

    .line 112
    :goto_3f
    return-object v0

    .line 109
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid style value: null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

.method public static blacklist valueOf(Ljava/lang/String;)I
    .registers 12
    .param p0, "styleName"    # Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x9

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    sparse-switch v0, :sswitch_data_aa

    :cond_13
    goto/16 :goto_7a

    :sswitch_15
    const-string v0, "RAINBOW"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v6

    goto/16 :goto_7b

    :sswitch_20
    const-string v0, "CONTENT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v4

    goto :goto_7b

    :sswitch_2a
    const-string v0, "MONOCHROMATIC"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v3

    goto :goto_7b

    :sswitch_34
    const-string v0, "VIBRANT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v8

    goto :goto_7b

    :sswitch_3e
    const-string v0, "CLOCK"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v2

    goto :goto_7b

    :sswitch_48
    const-string v0, "CLOCK_VIBRANT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_7b

    :sswitch_52
    const-string v0, "FRUIT_SALAD"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v5

    goto :goto_7b

    :sswitch_5c
    const-string v0, "EXPRESSIVE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v7

    goto :goto_7b

    :sswitch_66
    const-string v0, "SPRITZ"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v10

    goto :goto_7b

    :sswitch_70
    const-string v0, "TONAL_SPOT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v9

    goto :goto_7b

    :goto_7a
    const/4 v0, -0x1

    :goto_7b
    packed-switch v0, :pswitch_data_d4

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid style name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :pswitch_97
    goto :goto_a9

    .line 144
    :pswitch_98
    move v1, v2

    goto :goto_a9

    .line 143
    :pswitch_9a
    move v1, v3

    goto :goto_a9

    .line 142
    :pswitch_9c
    move v1, v4

    goto :goto_a9

    .line 141
    :pswitch_9e
    move v1, v5

    goto :goto_a9

    .line 140
    :pswitch_a0
    move v1, v6

    goto :goto_a9

    .line 139
    :pswitch_a2
    move v1, v7

    goto :goto_a9

    .line 138
    :pswitch_a4
    move v1, v8

    goto :goto_a9

    .line 137
    :pswitch_a6
    move v1, v9

    goto :goto_a9

    .line 136
    :pswitch_a8
    move v1, v10

    .line 135
    :goto_a9
    return v1

    :sswitch_data_aa
    .sparse-switch
        -0x7aa5effd -> :sswitch_70
        -0x6dd00926 -> :sswitch_66
        -0x4e1a8098 -> :sswitch_5c
        -0x2daa17aa -> :sswitch_52
        -0x26de42ad -> :sswitch_48
        0x3d3e3ee -> :sswitch_3e
        0x45b200a4 -> :sswitch_34
        0x5fbabeb5 -> :sswitch_2a
        0x6382c059 -> :sswitch_20
        0x64d32596 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_a6
        :pswitch_a4
        :pswitch_a2
        :pswitch_a0
        :pswitch_9e
        :pswitch_9c
        :pswitch_9a
        :pswitch_98
        :pswitch_97
    .end packed-switch
.end method

.method public static blacklist values()[I
    .registers 1

    .line 167
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method
