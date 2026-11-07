.class public final Landroid/view/WindowInsets$Type;
.super Ljava/lang/Object;
.source "WindowInsets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowInsets$Type$InsetsType;
    }
.end annotation


# static fields
.field static final blacklist CAPTION_BAR:I = 0x4

.field static final blacklist DEFAULT_VISIBLE:I = -0x9

.field static final blacklist DISPLAY_CUTOUT:I = 0x80

.field static final blacklist FIRST:I = 0x1

.field static final blacklist IME:I = 0x8

.field static final blacklist LAST:I = 0x200

.field static final blacklist MANDATORY_SYSTEM_GESTURES:I = 0x20

.field static final blacklist NAVIGATION_BARS:I = 0x2

.field static final blacklist SIZE:I = 0xa

.field static final blacklist STATUS_BARS:I = 0x1

.field static final blacklist SYSTEM_GESTURES:I = 0x10

.field static final blacklist SYSTEM_OVERLAYS:I = 0x200

.field static final blacklist TAPPABLE_ELEMENT:I = 0x40

.field static final blacklist WINDOW_DECOR:I = 0x100


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1901
    return-void
.end method

.method public static blacklist all()I
    .registers 1

    .line 2033
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist captionBar()I
    .registers 1

    .line 1929
    const/4 v0, 0x4

    return v0
.end method

.method public static blacklist defaultVisible()I
    .registers 1

    .line 2024
    const/16 v0, -0x9

    return v0
.end method

.method public static whitelist displayCutout()I
    .registers 1

    .line 1991
    const/16 v0, 0x80

    return v0
.end method

.method public static blacklist hasCompatSystemBars(I)Z
    .registers 2
    .param p0, "types"    # I

    .line 2042
    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist ime()I
    .registers 1

    .line 1936
    const/16 v0, 0x8

    return v0
.end method

.method static blacklist indexOf(I)I
    .registers 4
    .param p0, "type"    # I

    .line 1831
    sparse-switch p0, :sswitch_data_34

    .line 1853
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type needs to be >= FIRST and <= LAST, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1851
    :sswitch_1d
    const/16 v0, 0x9

    return v0

    .line 1849
    :sswitch_20
    const/16 v0, 0x8

    return v0

    .line 1847
    :sswitch_23
    const/4 v0, 0x7

    return v0

    .line 1845
    :sswitch_25
    const/4 v0, 0x6

    return v0

    .line 1843
    :sswitch_27
    const/4 v0, 0x5

    return v0

    .line 1841
    :sswitch_29
    const/4 v0, 0x4

    return v0

    .line 1839
    :sswitch_2b
    const/4 v0, 0x3

    return v0

    .line 1837
    :sswitch_2d
    const/4 v0, 0x2

    return v0

    .line 1835
    :sswitch_2f
    const/4 v0, 0x1

    return v0

    .line 1833
    :sswitch_31
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_34
    .sparse-switch
        0x1 -> :sswitch_31
        0x2 -> :sswitch_2f
        0x4 -> :sswitch_2d
        0x8 -> :sswitch_2b
        0x10 -> :sswitch_29
        0x20 -> :sswitch_27
        0x40 -> :sswitch_25
        0x80 -> :sswitch_23
        0x100 -> :sswitch_20
        0x200 -> :sswitch_1d
    .end sparse-switch
.end method

.method public static whitelist mandatorySystemGestures()I
    .registers 1

    .line 1964
    const/16 v0, 0x20

    return v0
.end method

.method public static whitelist navigationBars()I
    .registers 1

    .line 1922
    const/4 v0, 0x2

    return v0
.end method

.method public static whitelist statusBars()I
    .registers 1

    .line 1915
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist systemBars()I
    .registers 1

    .line 2015
    const/16 v0, 0x207

    return v0
.end method

.method public static whitelist systemGestures()I
    .registers 1

    .line 1957
    const/16 v0, 0x10

    return v0
.end method

.method public static whitelist systemOverlays()I
    .registers 1

    .line 2007
    const/16 v0, 0x200

    return v0
.end method

.method public static whitelist tappableElement()I
    .registers 1

    .line 1971
    const/16 v0, 0x40

    return v0
.end method

.method public static blacklist toString(I)Ljava/lang/String;
    .registers 4
    .param p0, "types"    # I

    .line 1863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1864
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_f

    .line 1865
    const-string/jumbo v1, "statusBars "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1867
    :cond_f
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_18

    .line 1868
    const-string v1, "navigationBars "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1870
    :cond_18
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_21

    .line 1871
    const-string v1, "captionBar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    :cond_21
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_2a

    .line 1874
    const-string v1, "ime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1876
    :cond_2a
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_34

    .line 1877
    const-string/jumbo v1, "systemGestures "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1879
    :cond_34
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_3d

    .line 1880
    const-string v1, "mandatorySystemGestures "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1882
    :cond_3d
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_47

    .line 1883
    const-string/jumbo v1, "tappableElement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    :cond_47
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_50

    .line 1886
    const-string v1, "displayCutout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    :cond_50
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_5a

    .line 1889
    const-string/jumbo v1, "windowDecor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1891
    :cond_5a
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_64

    .line 1892
    const-string/jumbo v1, "systemOverlays "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    :cond_64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_77

    .line 1895
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1897
    :cond_77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
