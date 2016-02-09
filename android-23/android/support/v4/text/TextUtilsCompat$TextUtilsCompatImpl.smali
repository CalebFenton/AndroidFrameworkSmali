.class Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;
.super Ljava/lang/Object;
.source "TextUtilsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/TextUtilsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextUtilsCompatImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;-><init>()V

    #@3
    return-void
.end method

.method private static getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 88
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@8
    move-result v0

    #@9
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    #@c
    move-result v0

    #@d
    packed-switch v0, :pswitch_data_0

    #@10
    .line 95
    return v1

    #@11
    .line 91
    :pswitch_0
    const/4 v0, 0x1

    #@12
    return v0

    #@13
    .line 88
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    .prologue
    .line 63
    if-eqz p1, :cond_0

    #@2
    sget-object v1, Landroid/support/v4/text/TextUtilsCompat;->ROOT:Ljava/util/Locale;

    #@4
    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 72
    :cond_0
    const/4 v1, 0x0

    #@b
    return v1

    #@c
    .line 64
    :cond_1
    invoke-static {p1}, Landroid/support/v4/text/ICUCompat;->maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 65
    .local v0, "scriptSubtag":Ljava/lang/String;
    if-nez v0, :cond_2

    #@12
    invoke-static {p1}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;->getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 67
    :cond_2
    invoke-static {}, Landroid/support/v4/text/TextUtilsCompat;->-get0()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_3

    #@21
    .line 68
    invoke-static {}, Landroid/support/v4/text/TextUtilsCompat;->-get1()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@28
    move-result v1

    #@29
    .line 67
    if-eqz v1, :cond_0

    #@2b
    .line 69
    :cond_3
    const/4 v1, 0x1

    #@2c
    return v1
.end method

.method public htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    #@0
    .prologue
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 32
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v3

    #@a
    if-ge v1, v3, :cond_0

    #@c
    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v0

    #@10
    .line 34
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    #@13
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 32
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 36
    :sswitch_0
    const-string/jumbo v3, "&lt;"

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    goto :goto_1

    #@20
    .line 39
    :sswitch_1
    const-string/jumbo v3, "&gt;"

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    goto :goto_1

    #@27
    .line 42
    :sswitch_2
    const-string/jumbo v3, "&amp;"

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    goto :goto_1

    #@2e
    .line 50
    :sswitch_3
    const-string/jumbo v3, "&#39;"

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    goto :goto_1

    #@35
    .line 53
    :sswitch_4
    const-string/jumbo v3, "&quot;"

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    goto :goto_1

    #@3c
    .line 59
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    return-object v3

    #@41
    .line 34
    nop

    #@42
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x26 -> :sswitch_2
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method
