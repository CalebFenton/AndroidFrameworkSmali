.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist floatToString(FIICC)Ljava/lang/String;
    .registers 22
    .param p0, "value"    # F
    .param p1, "beforeDecimalPoint"    # I
    .param p2, "afterDecimalPoint"    # I
    .param p3, "pre"    # C
    .param p4, "post"    # C

    .line 38
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    cmpg-float v5, v0, v5

    if-gez v5, :cond_11

    const/4 v5, 0x1

    goto :goto_12

    :cond_11
    const/4 v5, 0x0

    .line 39
    .local v5, "isNeg":Z
    :goto_12
    if-eqz v5, :cond_15

    .line 40
    neg-float v0, v0

    .line 42
    .end local p0    # "value":F
    .local v0, "value":F
    :cond_15
    float-to-int v8, v0

    .line 43
    .local v8, "integerPart":I
    const/high16 v9, 0x3f800000    # 1.0f

    rem-float v9, v0, v9

    .line 46
    .local v9, "fractionalPart":F
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 47
    .local v10, "integerPartString":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    .line 48
    .local v11, "iLen":I
    if-ge v11, v1, :cond_44

    .line 49
    sub-int v12, v1, v11

    .line 50
    .local v12, "spacesToPad":I
    if-eqz v3, :cond_4d

    .line 51
    new-array v13, v12, [C

    .line 52
    .local v13, "pad":[C
    invoke-static {v13, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 53
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v13}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4d

    .line 56
    .end local v12    # "spacesToPad":I
    .end local v13    # "pad":[C
    :cond_44
    if-le v11, v1, :cond_4d

    .line 57
    sub-int v12, v11, v1

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_4e

    .line 56
    :cond_4d
    :goto_4d
    nop

    .line 59
    :goto_4e
    const-string v12, "-"

    const-string v13, ""

    if-nez v2, :cond_6a

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_5c

    goto :goto_5d

    :cond_5c
    move-object v12, v13

    :goto_5d
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 64
    :cond_6a
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6b
    if-ge v14, v2, :cond_73

    .line 65
    const/high16 v15, 0x41200000    # 10.0f

    mul-float/2addr v9, v15

    .line 64
    add-int/lit8 v14, v14, 0x1

    goto :goto_6b

    .line 67
    .end local v14    # "i":I
    :cond_73
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-float v9, v14

    .line 69
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_79
    if-ge v14, v2, :cond_82

    .line 70
    const v15, 0x3dcccccd    # 0.1f

    mul-float/2addr v9, v15

    .line 69
    add-int/lit8 v14, v14, 0x1

    goto :goto_79

    .line 73
    .end local v14    # "i":I
    :cond_82
    invoke-static {v9}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v14

    .line 74
    .local v14, "fact":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v7, v2, 0x2

    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v15, 0x2

    invoke-virtual {v14, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 75
    .end local v14    # "fact":Ljava/lang/String;
    .local v7, "fact":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    .line 76
    .local v14, "trim":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    .local v15, "i":I
    :goto_a1
    if-ltz v15, :cond_b5

    .line 77
    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 p0, v0

    .end local v0    # "value":F
    .restart local p0    # "value":F
    const/16 v0, 0x30

    if-eq v6, v0, :cond_ae

    .line 78
    goto :goto_b7

    .line 80
    :cond_ae
    add-int/lit8 v14, v14, -0x1

    .line 76
    add-int/lit8 v15, v15, -0x1

    move/from16 v0, p0

    goto :goto_a1

    .end local p0    # "value":F
    .restart local v0    # "value":F
    :cond_b5
    move/from16 p0, v0

    .line 82
    .end local v0    # "value":F
    .end local v15    # "i":I
    .restart local p0    # "value":F
    :goto_b7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v14, v0, :cond_c2

    .line 83
    const/4 v0, 0x0

    invoke-virtual {v7, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 85
    :cond_c2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    .line 86
    .local v0, "len":I
    if-eqz v4, :cond_ea

    if-ge v0, v2, :cond_ea

    .line 87
    sub-int v6, v2, v0

    new-array v6, v6, [C

    .line 88
    .local v6, "c":[C
    invoke-static {v6, v4}, Ljava/util/Arrays;->fill([CC)V

    .line 89
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v0

    .end local v0    # "len":I
    .local v16, "len":I
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_ec

    .line 86
    .end local v6    # "c":[C
    .end local v16    # "len":I
    .restart local v0    # "len":I
    :cond_ea
    move/from16 v16, v0

    .line 92
    .end local v0    # "len":I
    .restart local v16    # "len":I
    :goto_ec
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_f4

    goto :goto_f5

    :cond_f4
    move-object v12, v13

    :goto_f5
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
