.class public final Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;
.super Ljava/lang/Object;
.source "TextUtil.java"


# static fields
.field static final FALSE:Ljava/lang/Boolean;

.field static final TRUE:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 24
    new-instance v0, Ljava/lang/Boolean;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    #@6
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->TRUE:Ljava/lang/Boolean;

    #@8
    .line 25
    new-instance v0, Ljava/lang/Boolean;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    #@e
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->FALSE:Ljava/lang/Boolean;

    #@10
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    return-void
.end method

.method public static e6ToString(I)Ljava/lang/String;
    .locals 6
    .param p0, "numE6"    # I

    #@0
    .prologue
    const v5, 0xf4240

    #@3
    const v0, 0xf4240

    #@6
    .line 1029
    .local v0, "E6":I
    div-int v2, p0, v5

    #@8
    .line 1030
    .local v2, "mantissa":I
    mul-int v4, v2, v5

    #@a
    sub-int v4, p0, v4

    #@c
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@f
    move-result v1

    #@10
    .line 1031
    .local v1, "frac":I
    new-instance v3, Ljava/lang/StringBuffer;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@15
    .line 1032
    .local v3, "sb":Ljava/lang/StringBuffer;
    if-ltz p0, :cond_1

    #@17
    .line 1037
    :cond_0
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@1a
    .line 1038
    if-gtz v1, :cond_2

    #@1c
    .line 1042
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    return-object v4

    #@21
    .line 1032
    :cond_1
    if-nez v2, :cond_0

    #@23
    const-string/jumbo v4, "-"

    #@26
    .line 1035
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    goto :goto_0

    #@2a
    :cond_2
    const-string/jumbo v4, "."

    #@2d
    .line 1039
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    .line 1040
    add-int v4, v1, v5

    #@32
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    const/4 v5, 0x1

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3e
    goto :goto_1
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 241
    if-nez p0, :cond_1

    #@3
    :cond_0
    const/4 v0, 0x1

    #@4
    :goto_0
    return v0

    #@5
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    goto :goto_0
.end method

.method public static join(Ljava/util/Vector;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "target"    # Ljava/util/Vector;
    .param p1, "separator"    # Ljava/lang/String;

    #@0
    .prologue
    .line 463
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    #@3
    move-result v2

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 469
    new-instance v1, Ljava/lang/StringBuffer;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@c
    .local v1, "out":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    #@d
    .line 470
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    #@10
    move-result v2

    #@11
    if-lt v0, v2, :cond_0

    #@13
    .line 476
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    .end local v0    # "i":I
    .end local v1    # "out":Ljava/lang/StringBuffer;
    :pswitch_0
    const-string/jumbo v2, ""

    #@1b
    .line 465
    return-object v2

    #@1c
    .line 467
    :pswitch_1
    invoke-virtual {p0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    return-object v2

    #@25
    .line 471
    .restart local v0    # "i":I
    .restart local v1    # "out":Ljava/lang/StringBuffer;
    :cond_0
    if-nez v0, :cond_1

    #@27
    .line 474
    :goto_1
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@2e
    .line 470
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 472
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@34
    goto :goto_1

    #@35
    .line 463
    nop

    #@36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 7
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "replacement"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 368
    .local v2, "replacementCount":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v4

    #@5
    .line 369
    .local v4, "targetLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v3

    #@9
    .local v3, "replacementLength":I
    const/4 v0, 0x0

    #@a
    .line 370
    .local v0, "i":I
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    #@d
    move-result v5

    #@e
    sub-int/2addr v5, v4

    #@f
    if-le v0, v5, :cond_1

    #@11
    .line 388
    return v2

    #@12
    :cond_1
    const/4 v1, 0x0

    #@13
    .line 371
    .local v1, "j":I
    :goto_1
    if-lt v1, v4, :cond_2

    #@15
    .line 377
    add-int v5, v0, v4

    #@17
    invoke-virtual {p2, v0, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    #@1a
    .line 378
    invoke-virtual {p2, v0, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@1d
    .line 379
    add-int/lit8 v2, v2, 0x1

    #@1f
    .line 380
    add-int/2addr v0, v3

    #@20
    .line 382
    if-nez v4, :cond_0

    #@22
    .line 384
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 372
    :cond_2
    add-int v5, v0, v1

    #@27
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    #@2a
    move-result v5

    #@2b
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@2e
    move-result v6

    #@2f
    if-ne v5, v6, :cond_3

    #@31
    .line 371
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_1

    #@34
    .line 373
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "separator"    # C

    #@0
    .prologue
    .line 73
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 47
    .local v5, "separatorInstances":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v6

    #@6
    .line 48
    .local v6, "targetLength":I
    invoke-virtual {p0, p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@9
    move-result v3

    #@a
    .local v3, "index":I
    :goto_0
    const/4 v7, -0x1

    #@b
    .line 49
    if-ne v3, v7, :cond_1

    #@d
    .line 57
    :cond_0
    add-int/lit8 v7, v5, 0x1

    #@f
    new-array v4, v7, [Ljava/lang/String;

    #@11
    .local v4, "results":[Ljava/lang/String;
    const/4 v0, 0x0

    #@12
    .local v0, "beginIndex":I
    const/4 v2, 0x0

    #@13
    .line 59
    .local v2, "i":I
    :goto_1
    if-lt v2, v5, :cond_3

    #@15
    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@18
    move-result-object v7

    #@19
    aput-object v7, v4, v5

    #@1b
    .line 66
    return-object v4

    #@1c
    .line 49
    .end local v0    # "beginIndex":I
    .end local v2    # "i":I
    .end local v4    # "results":[Ljava/lang/String;
    :cond_1
    if-ge v3, v6, :cond_0

    #@1e
    .line 51
    add-int/lit8 v5, v5, 0x1

    #@20
    .line 53
    if-gez v3, :cond_2

    #@22
    .line 50
    :goto_2
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@25
    move-result v3

    #@26
    goto :goto_0

    #@27
    .line 54
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2a
    move-result v7

    #@2b
    add-int/2addr v3, v7

    #@2c
    goto :goto_2

    #@2d
    .line 60
    .restart local v0    # "beginIndex":I
    .restart local v2    # "i":I
    .restart local v4    # "results":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@30
    move-result v1

    #@31
    .line 61
    .local v1, "endIndex":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@34
    move-result-object v7

    #@35
    aput-object v7, v4, v2

    #@37
    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3a
    move-result v7

    #@3b
    add-int v0, v1, v7

    #@3d
    .line 59
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_1
.end method
