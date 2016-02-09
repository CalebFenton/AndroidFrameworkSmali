.class public Landroid/opengl/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# static fields
.field private static final sTemp:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 41
    const/16 v0, 0x20

    #@2
    new-array v0, v0, [F

    #@4
    sput-object v0, Landroid/opengl/Matrix;->sTemp:[F

    #@6
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static frustumM([FIFFFFFF)V
    .locals 11
    .param p0, "m"    # [F
    .param p1, "offset"    # I
    .param p2, "left"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "top"    # F
    .param p6, "near"    # F
    .param p7, "far"    # F

    #@0
    .prologue
    .line 326
    cmpl-float v9, p2, p3

    #@2
    if-nez v9, :cond_0

    #@4
    .line 327
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v10, "left == right"

    #@9
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v9

    #@d
    .line 329
    :cond_0
    cmpl-float v9, p5, p4

    #@f
    if-nez v9, :cond_1

    #@11
    .line 330
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v10, "top == bottom"

    #@16
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v9

    #@1a
    .line 332
    :cond_1
    cmpl-float v9, p6, p7

    #@1c
    if-nez v9, :cond_2

    #@1e
    .line 333
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v10, "near == far"

    #@23
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v9

    #@27
    .line 335
    :cond_2
    const/4 v9, 0x0

    #@28
    cmpg-float v9, p6, v9

    #@2a
    if-gtz v9, :cond_3

    #@2c
    .line 336
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@2e
    const-string/jumbo v10, "near <= 0.0f"

    #@31
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v9

    #@35
    .line 338
    :cond_3
    const/4 v9, 0x0

    #@36
    cmpg-float v9, p7, v9

    #@38
    if-gtz v9, :cond_4

    #@3a
    .line 339
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@3c
    const-string/jumbo v10, "far <= 0.0f"

    #@3f
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v9

    #@43
    .line 341
    :cond_4
    sub-float v9, p3, p2

    #@45
    const/high16 v10, 0x3f800000    # 1.0f

    #@47
    div-float v6, v10, v9

    #@49
    .line 342
    .local v6, "r_width":F
    sub-float v9, p5, p4

    #@4b
    const/high16 v10, 0x3f800000    # 1.0f

    #@4d
    div-float v5, v10, v9

    #@4f
    .line 343
    .local v5, "r_height":F
    sub-float v9, p6, p7

    #@51
    const/high16 v10, 0x3f800000    # 1.0f

    #@53
    div-float v4, v10, v9

    #@55
    .line 344
    .local v4, "r_depth":F
    mul-float v9, p6, v6

    #@57
    const/high16 v10, 0x40000000    # 2.0f

    #@59
    mul-float v7, v10, v9

    #@5b
    .line 345
    .local v7, "x":F
    mul-float v9, p6, v5

    #@5d
    const/high16 v10, 0x40000000    # 2.0f

    #@5f
    mul-float v8, v10, v9

    #@61
    .line 346
    .local v8, "y":F
    add-float v9, p3, p2

    #@63
    mul-float v0, v9, v6

    #@65
    .line 347
    .local v0, "A":F
    add-float v9, p5, p4

    #@67
    mul-float v1, v9, v5

    #@69
    .line 348
    .local v1, "B":F
    add-float v9, p7, p6

    #@6b
    mul-float v2, v9, v4

    #@6d
    .line 349
    .local v2, "C":F
    mul-float v9, p7, p6

    #@6f
    mul-float/2addr v9, v4

    #@70
    const/high16 v10, 0x40000000    # 2.0f

    #@72
    mul-float v3, v10, v9

    #@74
    .line 350
    .local v3, "D":F
    add-int/lit8 v9, p1, 0x0

    #@76
    aput v7, p0, v9

    #@78
    .line 351
    add-int/lit8 v9, p1, 0x5

    #@7a
    aput v8, p0, v9

    #@7c
    .line 352
    add-int/lit8 v9, p1, 0x8

    #@7e
    aput v0, p0, v9

    #@80
    .line 353
    add-int/lit8 v9, p1, 0x9

    #@82
    aput v1, p0, v9

    #@84
    .line 354
    add-int/lit8 v9, p1, 0xa

    #@86
    aput v2, p0, v9

    #@88
    .line 355
    add-int/lit8 v9, p1, 0xe

    #@8a
    aput v3, p0, v9

    #@8c
    .line 356
    add-int/lit8 v9, p1, 0xb

    #@8e
    const/high16 v10, -0x40800000    # -1.0f

    #@90
    aput v10, p0, v9

    #@92
    .line 357
    add-int/lit8 v9, p1, 0x1

    #@94
    const/4 v10, 0x0

    #@95
    aput v10, p0, v9

    #@97
    .line 358
    add-int/lit8 v9, p1, 0x2

    #@99
    const/4 v10, 0x0

    #@9a
    aput v10, p0, v9

    #@9c
    .line 359
    add-int/lit8 v9, p1, 0x3

    #@9e
    const/4 v10, 0x0

    #@9f
    aput v10, p0, v9

    #@a1
    .line 360
    add-int/lit8 v9, p1, 0x4

    #@a3
    const/4 v10, 0x0

    #@a4
    aput v10, p0, v9

    #@a6
    .line 361
    add-int/lit8 v9, p1, 0x6

    #@a8
    const/4 v10, 0x0

    #@a9
    aput v10, p0, v9

    #@ab
    .line 362
    add-int/lit8 v9, p1, 0x7

    #@ad
    const/4 v10, 0x0

    #@ae
    aput v10, p0, v9

    #@b0
    .line 363
    add-int/lit8 v9, p1, 0xc

    #@b2
    const/4 v10, 0x0

    #@b3
    aput v10, p0, v9

    #@b5
    .line 364
    add-int/lit8 v9, p1, 0xd

    #@b7
    const/4 v10, 0x0

    #@b8
    aput v10, p0, v9

    #@ba
    .line 365
    add-int/lit8 v9, p1, 0xf

    #@bc
    const/4 v10, 0x0

    #@bd
    aput v10, p0, v9

    #@bf
    .line 325
    return-void
.end method

.method public static invertM([FI[FI)Z
    .locals 61
    .param p0, "mInv"    # [F
    .param p1, "mInvOffset"    # I
    .param p2, "m"    # [F
    .param p3, "mOffset"    # I

    #@0
    .prologue
    .line 140
    add-int/lit8 v58, p3, 0x0

    #@2
    aget v42, p2, v58

    #@4
    .line 141
    .local v42, "src0":F
    add-int/lit8 v58, p3, 0x1

    #@6
    aget v52, p2, v58

    #@8
    .line 142
    .local v52, "src4":F
    add-int/lit8 v58, p3, 0x2

    #@a
    aget v56, p2, v58

    #@c
    .line 143
    .local v56, "src8":F
    add-int/lit8 v58, p3, 0x3

    #@e
    aget v46, p2, v58

    #@10
    .line 145
    .local v46, "src12":F
    add-int/lit8 v58, p3, 0x4

    #@12
    aget v43, p2, v58

    #@14
    .line 146
    .local v43, "src1":F
    add-int/lit8 v58, p3, 0x5

    #@16
    aget v53, p2, v58

    #@18
    .line 147
    .local v53, "src5":F
    add-int/lit8 v58, p3, 0x6

    #@1a
    aget v57, p2, v58

    #@1c
    .line 148
    .local v57, "src9":F
    add-int/lit8 v58, p3, 0x7

    #@1e
    aget v47, p2, v58

    #@20
    .line 150
    .local v47, "src13":F
    add-int/lit8 v58, p3, 0x8

    #@22
    aget v50, p2, v58

    #@24
    .line 151
    .local v50, "src2":F
    add-int/lit8 v58, p3, 0x9

    #@26
    aget v54, p2, v58

    #@28
    .line 152
    .local v54, "src6":F
    add-int/lit8 v58, p3, 0xa

    #@2a
    aget v44, p2, v58

    #@2c
    .line 153
    .local v44, "src10":F
    add-int/lit8 v58, p3, 0xb

    #@2e
    aget v48, p2, v58

    #@30
    .line 155
    .local v48, "src14":F
    add-int/lit8 v58, p3, 0xc

    #@32
    aget v51, p2, v58

    #@34
    .line 156
    .local v51, "src3":F
    add-int/lit8 v58, p3, 0xd

    #@36
    aget v55, p2, v58

    #@38
    .line 157
    .local v55, "src7":F
    add-int/lit8 v58, p3, 0xe

    #@3a
    aget v45, p2, v58

    #@3c
    .line 158
    .local v45, "src11":F
    add-int/lit8 v58, p3, 0xf

    #@3e
    aget v49, p2, v58

    #@40
    .line 161
    .local v49, "src15":F
    mul-float v0, v44, v49

    #@42
    .line 162
    .local v0, "atmp0":F
    mul-float v1, v45, v48

    #@44
    .line 163
    .local v1, "atmp1":F
    mul-float v4, v57, v49

    #@46
    .line 164
    .local v4, "atmp2":F
    mul-float v5, v45, v47

    #@48
    .line 165
    .local v5, "atmp3":F
    mul-float v6, v57, v48

    #@4a
    .line 166
    .local v6, "atmp4":F
    mul-float v7, v44, v47

    #@4c
    .line 167
    .local v7, "atmp5":F
    mul-float v8, v56, v49

    #@4e
    .line 168
    .local v8, "atmp6":F
    mul-float v9, v45, v46

    #@50
    .line 169
    .local v9, "atmp7":F
    mul-float v10, v56, v48

    #@52
    .line 170
    .local v10, "atmp8":F
    mul-float v11, v44, v46

    #@54
    .line 171
    .local v11, "atmp9":F
    mul-float v2, v56, v47

    #@56
    .line 172
    .local v2, "atmp10":F
    mul-float v3, v57, v46

    #@58
    .line 175
    .local v3, "atmp11":F
    mul-float v58, v0, v53

    #@5a
    mul-float v59, v5, v54

    #@5c
    add-float v58, v58, v59

    #@5e
    mul-float v59, v6, v55

    #@60
    add-float v58, v58, v59

    #@62
    .line 176
    mul-float v59, v1, v53

    #@64
    mul-float v60, v4, v54

    #@66
    add-float v59, v59, v60

    #@68
    mul-float v60, v7, v55

    #@6a
    add-float v59, v59, v60

    #@6c
    .line 175
    sub-float v25, v58, v59

    #@6e
    .line 177
    .local v25, "dst0":F
    mul-float v58, v1, v52

    #@70
    mul-float v59, v8, v54

    #@72
    add-float v58, v58, v59

    #@74
    mul-float v59, v11, v55

    #@76
    add-float v58, v58, v59

    #@78
    .line 178
    mul-float v59, v0, v52

    #@7a
    mul-float v60, v9, v54

    #@7c
    add-float v59, v59, v60

    #@7e
    mul-float v60, v10, v55

    #@80
    add-float v59, v59, v60

    #@82
    .line 177
    sub-float v26, v58, v59

    #@84
    .line 179
    .local v26, "dst1":F
    mul-float v58, v4, v52

    #@86
    mul-float v59, v9, v53

    #@88
    add-float v58, v58, v59

    #@8a
    mul-float v59, v2, v55

    #@8c
    add-float v58, v58, v59

    #@8e
    .line 180
    mul-float v59, v5, v52

    #@90
    mul-float v60, v8, v53

    #@92
    add-float v59, v59, v60

    #@94
    mul-float v60, v3, v55

    #@96
    add-float v59, v59, v60

    #@98
    .line 179
    sub-float v33, v58, v59

    #@9a
    .line 181
    .local v33, "dst2":F
    mul-float v58, v7, v52

    #@9c
    mul-float v59, v10, v53

    #@9e
    add-float v58, v58, v59

    #@a0
    mul-float v59, v3, v54

    #@a2
    add-float v58, v58, v59

    #@a4
    .line 182
    mul-float v59, v6, v52

    #@a6
    mul-float v60, v11, v53

    #@a8
    add-float v59, v59, v60

    #@aa
    mul-float v60, v2, v54

    #@ac
    add-float v59, v59, v60

    #@ae
    .line 181
    sub-float v34, v58, v59

    #@b0
    .line 183
    .local v34, "dst3":F
    mul-float v58, v1, v43

    #@b2
    mul-float v59, v4, v50

    #@b4
    add-float v58, v58, v59

    #@b6
    mul-float v59, v7, v51

    #@b8
    add-float v58, v58, v59

    #@ba
    .line 184
    mul-float v59, v0, v43

    #@bc
    mul-float v60, v5, v50

    #@be
    add-float v59, v59, v60

    #@c0
    mul-float v60, v6, v51

    #@c2
    add-float v59, v59, v60

    #@c4
    .line 183
    sub-float v35, v58, v59

    #@c6
    .line 185
    .local v35, "dst4":F
    mul-float v58, v0, v42

    #@c8
    mul-float v59, v9, v50

    #@ca
    add-float v58, v58, v59

    #@cc
    mul-float v59, v10, v51

    #@ce
    add-float v58, v58, v59

    #@d0
    .line 186
    mul-float v59, v1, v42

    #@d2
    mul-float v60, v8, v50

    #@d4
    add-float v59, v59, v60

    #@d6
    mul-float v60, v11, v51

    #@d8
    add-float v59, v59, v60

    #@da
    .line 185
    sub-float v36, v58, v59

    #@dc
    .line 187
    .local v36, "dst5":F
    mul-float v58, v5, v42

    #@de
    mul-float v59, v8, v43

    #@e0
    add-float v58, v58, v59

    #@e2
    mul-float v59, v3, v51

    #@e4
    add-float v58, v58, v59

    #@e6
    .line 188
    mul-float v59, v4, v42

    #@e8
    mul-float v60, v9, v43

    #@ea
    add-float v59, v59, v60

    #@ec
    mul-float v60, v2, v51

    #@ee
    add-float v59, v59, v60

    #@f0
    .line 187
    sub-float v37, v58, v59

    #@f2
    .line 189
    .local v37, "dst6":F
    mul-float v58, v6, v42

    #@f4
    mul-float v59, v11, v43

    #@f6
    add-float v58, v58, v59

    #@f8
    mul-float v59, v2, v50

    #@fa
    add-float v58, v58, v59

    #@fc
    .line 190
    mul-float v59, v7, v42

    #@fe
    mul-float v60, v10, v43

    #@100
    add-float v59, v59, v60

    #@102
    mul-float v60, v3, v50

    #@104
    add-float v59, v59, v60

    #@106
    .line 189
    sub-float v38, v58, v59

    #@108
    .line 193
    .local v38, "dst7":F
    mul-float v12, v50, v55

    #@10a
    .line 194
    .local v12, "btmp0":F
    mul-float v13, v51, v54

    #@10c
    .line 195
    .local v13, "btmp1":F
    mul-float v16, v43, v55

    #@10e
    .line 196
    .local v16, "btmp2":F
    mul-float v17, v51, v53

    #@110
    .line 197
    .local v17, "btmp3":F
    mul-float v18, v43, v54

    #@112
    .line 198
    .local v18, "btmp4":F
    mul-float v19, v50, v53

    #@114
    .line 199
    .local v19, "btmp5":F
    mul-float v20, v42, v55

    #@116
    .line 200
    .local v20, "btmp6":F
    mul-float v21, v51, v52

    #@118
    .line 201
    .local v21, "btmp7":F
    mul-float v22, v42, v54

    #@11a
    .line 202
    .local v22, "btmp8":F
    mul-float v23, v50, v52

    #@11c
    .line 203
    .local v23, "btmp9":F
    mul-float v14, v42, v53

    #@11e
    .line 204
    .local v14, "btmp10":F
    mul-float v15, v43, v52

    #@120
    .line 207
    .local v15, "btmp11":F
    mul-float v58, v12, v47

    #@122
    mul-float v59, v17, v48

    #@124
    add-float v58, v58, v59

    #@126
    mul-float v59, v18, v49

    #@128
    add-float v58, v58, v59

    #@12a
    .line 208
    mul-float v59, v13, v47

    #@12c
    mul-float v60, v16, v48

    #@12e
    add-float v59, v59, v60

    #@130
    mul-float v60, v19, v49

    #@132
    add-float v59, v59, v60

    #@134
    .line 207
    sub-float v39, v58, v59

    #@136
    .line 209
    .local v39, "dst8":F
    mul-float v58, v13, v46

    #@138
    mul-float v59, v20, v48

    #@13a
    add-float v58, v58, v59

    #@13c
    mul-float v59, v23, v49

    #@13e
    add-float v58, v58, v59

    #@140
    .line 210
    mul-float v59, v12, v46

    #@142
    mul-float v60, v21, v48

    #@144
    add-float v59, v59, v60

    #@146
    mul-float v60, v22, v49

    #@148
    add-float v59, v59, v60

    #@14a
    .line 209
    sub-float v40, v58, v59

    #@14c
    .line 211
    .local v40, "dst9":F
    mul-float v58, v16, v46

    #@14e
    mul-float v59, v21, v47

    #@150
    add-float v58, v58, v59

    #@152
    mul-float v59, v14, v49

    #@154
    add-float v58, v58, v59

    #@156
    .line 212
    mul-float v59, v17, v46

    #@158
    mul-float v60, v20, v47

    #@15a
    add-float v59, v59, v60

    #@15c
    mul-float v60, v15, v49

    #@15e
    add-float v59, v59, v60

    #@160
    .line 211
    sub-float v27, v58, v59

    #@162
    .line 213
    .local v27, "dst10":F
    mul-float v58, v19, v46

    #@164
    mul-float v59, v22, v47

    #@166
    add-float v58, v58, v59

    #@168
    mul-float v59, v15, v48

    #@16a
    add-float v58, v58, v59

    #@16c
    .line 214
    mul-float v59, v18, v46

    #@16e
    mul-float v60, v23, v47

    #@170
    add-float v59, v59, v60

    #@172
    mul-float v60, v14, v48

    #@174
    add-float v59, v59, v60

    #@176
    .line 213
    sub-float v28, v58, v59

    #@178
    .line 215
    .local v28, "dst11":F
    mul-float v58, v16, v44

    #@17a
    mul-float v59, v19, v45

    #@17c
    add-float v58, v58, v59

    #@17e
    mul-float v59, v13, v57

    #@180
    add-float v58, v58, v59

    #@182
    .line 216
    mul-float v59, v18, v45

    #@184
    mul-float v60, v12, v57

    #@186
    add-float v59, v59, v60

    #@188
    mul-float v60, v17, v44

    #@18a
    add-float v59, v59, v60

    #@18c
    .line 215
    sub-float v29, v58, v59

    #@18e
    .line 217
    .local v29, "dst12":F
    mul-float v58, v22, v45

    #@190
    mul-float v59, v12, v56

    #@192
    add-float v58, v58, v59

    #@194
    mul-float v59, v21, v44

    #@196
    add-float v58, v58, v59

    #@198
    .line 218
    mul-float v59, v20, v44

    #@19a
    mul-float v60, v23, v45

    #@19c
    add-float v59, v59, v60

    #@19e
    mul-float v60, v13, v56

    #@1a0
    add-float v59, v59, v60

    #@1a2
    .line 217
    sub-float v30, v58, v59

    #@1a4
    .line 219
    .local v30, "dst13":F
    mul-float v58, v20, v57

    #@1a6
    mul-float v59, v15, v45

    #@1a8
    add-float v58, v58, v59

    #@1aa
    mul-float v59, v17, v56

    #@1ac
    add-float v58, v58, v59

    #@1ae
    .line 220
    mul-float v59, v14, v45

    #@1b0
    mul-float v60, v16, v56

    #@1b2
    add-float v59, v59, v60

    #@1b4
    mul-float v60, v21, v57

    #@1b6
    add-float v59, v59, v60

    #@1b8
    .line 219
    sub-float v31, v58, v59

    #@1ba
    .line 221
    .local v31, "dst14":F
    mul-float v58, v14, v44

    #@1bc
    mul-float v59, v18, v56

    #@1be
    add-float v58, v58, v59

    #@1c0
    mul-float v59, v23, v57

    #@1c2
    add-float v58, v58, v59

    #@1c4
    .line 222
    mul-float v59, v22, v57

    #@1c6
    mul-float v60, v15, v44

    #@1c8
    add-float v59, v59, v60

    #@1ca
    mul-float v60, v19, v56

    #@1cc
    add-float v59, v59, v60

    #@1ce
    .line 221
    sub-float v32, v58, v59

    #@1d0
    .line 226
    .local v32, "dst15":F
    mul-float v58, v42, v25

    #@1d2
    mul-float v59, v43, v26

    #@1d4
    add-float v58, v58, v59

    #@1d6
    mul-float v59, v50, v33

    #@1d8
    add-float v58, v58, v59

    #@1da
    mul-float v59, v51, v34

    #@1dc
    add-float v24, v58, v59

    #@1de
    .line 228
    .local v24, "det":F
    const/16 v58, 0x0

    #@1e0
    cmpl-float v58, v24, v58

    #@1e2
    if-nez v58, :cond_0

    #@1e4
    .line 229
    const/16 v58, 0x0

    #@1e6
    return v58

    #@1e7
    .line 233
    :cond_0
    const/high16 v58, 0x3f800000    # 1.0f

    #@1e9
    div-float v41, v58, v24

    #@1eb
    .line 234
    .local v41, "invdet":F
    mul-float v58, v25, v41

    #@1ed
    aput v58, p0, p1

    #@1ef
    .line 235
    add-int/lit8 v58, p1, 0x1

    #@1f1
    mul-float v59, v26, v41

    #@1f3
    aput v59, p0, v58

    #@1f5
    .line 236
    add-int/lit8 v58, p1, 0x2

    #@1f7
    mul-float v59, v33, v41

    #@1f9
    aput v59, p0, v58

    #@1fb
    .line 237
    add-int/lit8 v58, p1, 0x3

    #@1fd
    mul-float v59, v34, v41

    #@1ff
    aput v59, p0, v58

    #@201
    .line 239
    add-int/lit8 v58, p1, 0x4

    #@203
    mul-float v59, v35, v41

    #@205
    aput v59, p0, v58

    #@207
    .line 240
    add-int/lit8 v58, p1, 0x5

    #@209
    mul-float v59, v36, v41

    #@20b
    aput v59, p0, v58

    #@20d
    .line 241
    add-int/lit8 v58, p1, 0x6

    #@20f
    mul-float v59, v37, v41

    #@211
    aput v59, p0, v58

    #@213
    .line 242
    add-int/lit8 v58, p1, 0x7

    #@215
    mul-float v59, v38, v41

    #@217
    aput v59, p0, v58

    #@219
    .line 244
    add-int/lit8 v58, p1, 0x8

    #@21b
    mul-float v59, v39, v41

    #@21d
    aput v59, p0, v58

    #@21f
    .line 245
    add-int/lit8 v58, p1, 0x9

    #@221
    mul-float v59, v40, v41

    #@223
    aput v59, p0, v58

    #@225
    .line 246
    add-int/lit8 v58, p1, 0xa

    #@227
    mul-float v59, v27, v41

    #@229
    aput v59, p0, v58

    #@22b
    .line 247
    add-int/lit8 v58, p1, 0xb

    #@22d
    mul-float v59, v28, v41

    #@22f
    aput v59, p0, v58

    #@231
    .line 249
    add-int/lit8 v58, p1, 0xc

    #@233
    mul-float v59, v29, v41

    #@235
    aput v59, p0, v58

    #@237
    .line 250
    add-int/lit8 v58, p1, 0xd

    #@239
    mul-float v59, v30, v41

    #@23b
    aput v59, p0, v58

    #@23d
    .line 251
    add-int/lit8 v58, p1, 0xe

    #@23f
    mul-float v59, v31, v41

    #@241
    aput v59, p0, v58

    #@243
    .line 252
    add-int/lit8 v58, p1, 0xf

    #@245
    mul-float v59, v32, v41

    #@247
    aput v59, p0, v58

    #@249
    .line 254
    const/16 v58, 0x1

    #@24b
    return v58
.end method

.method public static length(FFF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F

    #@0
    .prologue
    .line 415
    mul-float v0, p0, p0

    #@2
    mul-float v1, p1, p1

    #@4
    add-float/2addr v0, v1

    #@5
    mul-float v1, p2, p2

    #@7
    add-float/2addr v0, v1

    #@8
    float-to-double v0, v0

    #@9
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    #@c
    move-result-wide v0

    #@d
    double-to-float v0, v0

    #@e
    return v0
.end method

.method public static native multiplyMM([FI[FI[FI)V
.end method

.method public static native multiplyMV([FI[FI[FI)V
.end method

.method public static orthoM([FIFFFFFF)V
    .locals 11
    .param p0, "m"    # [F
    .param p1, "mOffset"    # I
    .param p2, "left"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "top"    # F
    .param p6, "near"    # F
    .param p7, "far"    # F

    #@0
    .prologue
    .line 272
    cmpl-float v9, p2, p3

    #@2
    if-nez v9, :cond_0

    #@4
    .line 273
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v10, "left == right"

    #@9
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v9

    #@d
    .line 275
    :cond_0
    cmpl-float v9, p4, p5

    #@f
    if-nez v9, :cond_1

    #@11
    .line 276
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v10, "bottom == top"

    #@16
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v9

    #@1a
    .line 278
    :cond_1
    cmpl-float v9, p6, p7

    #@1c
    if-nez v9, :cond_2

    #@1e
    .line 279
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v10, "near == far"

    #@23
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v9

    #@27
    .line 282
    :cond_2
    sub-float v9, p3, p2

    #@29
    const/high16 v10, 0x3f800000    # 1.0f

    #@2b
    div-float v2, v10, v9

    #@2d
    .line 283
    .local v2, "r_width":F
    sub-float v9, p5, p4

    #@2f
    const/high16 v10, 0x3f800000    # 1.0f

    #@31
    div-float v1, v10, v9

    #@33
    .line 284
    .local v1, "r_height":F
    sub-float v9, p7, p6

    #@35
    const/high16 v10, 0x3f800000    # 1.0f

    #@37
    div-float v0, v10, v9

    #@39
    .line 285
    .local v0, "r_depth":F
    const/high16 v9, 0x40000000    # 2.0f

    #@3b
    mul-float v6, v9, v2

    #@3d
    .line 286
    .local v6, "x":F
    const/high16 v9, 0x40000000    # 2.0f

    #@3f
    mul-float v7, v9, v1

    #@41
    .line 287
    .local v7, "y":F
    const/high16 v9, -0x40000000    # -2.0f

    #@43
    mul-float v8, v9, v0

    #@45
    .line 288
    .local v8, "z":F
    add-float v9, p3, p2

    #@47
    neg-float v9, v9

    #@48
    mul-float v3, v9, v2

    #@4a
    .line 289
    .local v3, "tx":F
    add-float v9, p5, p4

    #@4c
    neg-float v9, v9

    #@4d
    mul-float v4, v9, v1

    #@4f
    .line 290
    .local v4, "ty":F
    add-float v9, p7, p6

    #@51
    neg-float v9, v9

    #@52
    mul-float v5, v9, v0

    #@54
    .line 291
    .local v5, "tz":F
    add-int/lit8 v9, p1, 0x0

    #@56
    aput v6, p0, v9

    #@58
    .line 292
    add-int/lit8 v9, p1, 0x5

    #@5a
    aput v7, p0, v9

    #@5c
    .line 293
    add-int/lit8 v9, p1, 0xa

    #@5e
    aput v8, p0, v9

    #@60
    .line 294
    add-int/lit8 v9, p1, 0xc

    #@62
    aput v3, p0, v9

    #@64
    .line 295
    add-int/lit8 v9, p1, 0xd

    #@66
    aput v4, p0, v9

    #@68
    .line 296
    add-int/lit8 v9, p1, 0xe

    #@6a
    aput v5, p0, v9

    #@6c
    .line 297
    add-int/lit8 v9, p1, 0xf

    #@6e
    const/high16 v10, 0x3f800000    # 1.0f

    #@70
    aput v10, p0, v9

    #@72
    .line 298
    add-int/lit8 v9, p1, 0x1

    #@74
    const/4 v10, 0x0

    #@75
    aput v10, p0, v9

    #@77
    .line 299
    add-int/lit8 v9, p1, 0x2

    #@79
    const/4 v10, 0x0

    #@7a
    aput v10, p0, v9

    #@7c
    .line 300
    add-int/lit8 v9, p1, 0x3

    #@7e
    const/4 v10, 0x0

    #@7f
    aput v10, p0, v9

    #@81
    .line 301
    add-int/lit8 v9, p1, 0x4

    #@83
    const/4 v10, 0x0

    #@84
    aput v10, p0, v9

    #@86
    .line 302
    add-int/lit8 v9, p1, 0x6

    #@88
    const/4 v10, 0x0

    #@89
    aput v10, p0, v9

    #@8b
    .line 303
    add-int/lit8 v9, p1, 0x7

    #@8d
    const/4 v10, 0x0

    #@8e
    aput v10, p0, v9

    #@90
    .line 304
    add-int/lit8 v9, p1, 0x8

    #@92
    const/4 v10, 0x0

    #@93
    aput v10, p0, v9

    #@95
    .line 305
    add-int/lit8 v9, p1, 0x9

    #@97
    const/4 v10, 0x0

    #@98
    aput v10, p0, v9

    #@9a
    .line 306
    add-int/lit8 v9, p1, 0xb

    #@9c
    const/4 v10, 0x0

    #@9d
    aput v10, p0, v9

    #@9f
    .line 271
    return-void
.end method

.method public static perspectiveM([FIFFFF)V
    .locals 8
    .param p0, "m"    # [F
    .param p1, "offset"    # I
    .param p2, "fovy"    # F
    .param p3, "aspect"    # F
    .param p4, "zNear"    # F
    .param p5, "zFar"    # F

    #@0
    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    #@2
    const/4 v6, 0x0

    #@3
    .line 382
    float-to-double v2, p2

    #@4
    const-wide v4, 0x3f81df46a2529d39L    # 0.008726646259971648

    #@9
    mul-double/2addr v2, v4

    #@a
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    #@d
    move-result-wide v2

    #@e
    double-to-float v2, v2

    #@f
    div-float v0, v7, v2

    #@11
    .line 383
    .local v0, "f":F
    sub-float v2, p4, p5

    #@13
    div-float v1, v7, v2

    #@15
    .line 385
    .local v1, "rangeReciprocal":F
    add-int/lit8 v2, p1, 0x0

    #@17
    div-float v3, v0, p3

    #@19
    aput v3, p0, v2

    #@1b
    .line 386
    add-int/lit8 v2, p1, 0x1

    #@1d
    aput v6, p0, v2

    #@1f
    .line 387
    add-int/lit8 v2, p1, 0x2

    #@21
    aput v6, p0, v2

    #@23
    .line 388
    add-int/lit8 v2, p1, 0x3

    #@25
    aput v6, p0, v2

    #@27
    .line 390
    add-int/lit8 v2, p1, 0x4

    #@29
    aput v6, p0, v2

    #@2b
    .line 391
    add-int/lit8 v2, p1, 0x5

    #@2d
    aput v0, p0, v2

    #@2f
    .line 392
    add-int/lit8 v2, p1, 0x6

    #@31
    aput v6, p0, v2

    #@33
    .line 393
    add-int/lit8 v2, p1, 0x7

    #@35
    aput v6, p0, v2

    #@37
    .line 395
    add-int/lit8 v2, p1, 0x8

    #@39
    aput v6, p0, v2

    #@3b
    .line 396
    add-int/lit8 v2, p1, 0x9

    #@3d
    aput v6, p0, v2

    #@3f
    .line 397
    add-int/lit8 v2, p1, 0xa

    #@41
    add-float v3, p5, p4

    #@43
    mul-float/2addr v3, v1

    #@44
    aput v3, p0, v2

    #@46
    .line 398
    add-int/lit8 v2, p1, 0xb

    #@48
    const/high16 v3, -0x40800000    # -1.0f

    #@4a
    aput v3, p0, v2

    #@4c
    .line 400
    add-int/lit8 v2, p1, 0xc

    #@4e
    aput v6, p0, v2

    #@50
    .line 401
    add-int/lit8 v2, p1, 0xd

    #@52
    aput v6, p0, v2

    #@54
    .line 402
    add-int/lit8 v2, p1, 0xe

    #@56
    const/high16 v3, 0x40000000    # 2.0f

    #@58
    mul-float/2addr v3, p5

    #@59
    mul-float/2addr v3, p4

    #@5a
    mul-float/2addr v3, v1

    #@5b
    aput v3, p0, v2

    #@5d
    .line 403
    add-int/lit8 v2, p1, 0xf

    #@5f
    aput v6, p0, v2

    #@61
    .line 381
    return-void
.end method

.method public static rotateM([FIFFFF)V
    .locals 7
    .param p0, "m"    # [F
    .param p1, "mOffset"    # I
    .param p2, "a"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F

    #@0
    .prologue
    .line 559
    sget-object v6, Landroid/opengl/Matrix;->sTemp:[F

    #@2
    monitor-enter v6

    #@3
    .line 560
    :try_start_0
    sget-object v0, Landroid/opengl/Matrix;->sTemp:[F

    #@5
    const/4 v1, 0x0

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    #@d
    .line 561
    sget-object v0, Landroid/opengl/Matrix;->sTemp:[F

    #@f
    sget-object v4, Landroid/opengl/Matrix;->sTemp:[F

    #@11
    const/16 v1, 0x10

    #@13
    const/4 v5, 0x0

    #@14
    move-object v2, p0

    #@15
    move v3, p1

    #@16
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    #@19
    .line 562
    sget-object v0, Landroid/opengl/Matrix;->sTemp:[F

    #@1b
    const/16 v1, 0x10

    #@1d
    const/16 v2, 0x10

    #@1f
    invoke-static {v0, v1, p0, p1, v2}, Ljava/lang/System;->arraycopy([FI[FII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit v6

    #@23
    .line 558
    return-void

    #@24
    .line 559
    :catchall_0
    move-exception v0

    #@25
    monitor-exit v6

    #@26
    throw v0
.end method

.method public static rotateM([FI[FIFFFF)V
    .locals 7
    .param p0, "rm"    # [F
    .param p1, "rmOffset"    # I
    .param p2, "m"    # [F
    .param p3, "mOffset"    # I
    .param p4, "a"    # F
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "z"    # F

    #@0
    .prologue
    .line 540
    sget-object v6, Landroid/opengl/Matrix;->sTemp:[F

    #@2
    monitor-enter v6

    #@3
    .line 541
    :try_start_0
    sget-object v0, Landroid/opengl/Matrix;->sTemp:[F

    #@5
    const/4 v1, 0x0

    #@6
    move v2, p4

    #@7
    move v3, p5

    #@8
    move v4, p6

    #@9
    move v5, p7

    #@a
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    #@d
    .line 542
    sget-object v4, Landroid/opengl/Matrix;->sTemp:[F

    #@f
    const/4 v5, 0x0

    #@10
    move-object v0, p0

    #@11
    move v1, p1

    #@12
    move-object v2, p2

    #@13
    move v3, p3

    #@14
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v6

    #@18
    .line 539
    return-void

    #@19
    .line 540
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v6

    #@1b
    throw v0
.end method

.method public static scaleM([FIFFF)V
    .locals 5
    .param p0, "m"    # [F
    .param p1, "mOffset"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    .line 470
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@4
    .line 471
    add-int v1, p1, v0

    #@6
    .line 472
    .local v1, "mi":I
    aget v2, p0, v1

    #@8
    mul-float/2addr v2, p2

    #@9
    aput v2, p0, v1

    #@b
    .line 473
    add-int/lit8 v2, v1, 0x4

    #@d
    aget v3, p0, v2

    #@f
    mul-float/2addr v3, p3

    #@10
    aput v3, p0, v2

    #@12
    .line 474
    add-int/lit8 v2, v1, 0x8

    #@14
    aget v3, p0, v2

    #@16
    mul-float/2addr v3, p4

    #@17
    aput v3, p0, v2

    #@19
    .line 470
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 469
    .end local v1    # "mi":I
    :cond_0
    return-void
.end method

.method public static scaleM([FI[FIFFF)V
    .locals 6
    .param p0, "sm"    # [F
    .param p1, "smOffset"    # I
    .param p2, "m"    # [F
    .param p3, "mOffset"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "z"    # F

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    .line 449
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    #@4
    .line 450
    add-int v2, p1, v0

    #@6
    .line 451
    .local v2, "smi":I
    add-int v1, p3, v0

    #@8
    .line 452
    .local v1, "mi":I
    aget v3, p2, v1

    #@a
    mul-float/2addr v3, p4

    #@b
    aput v3, p0, v2

    #@d
    .line 453
    add-int/lit8 v3, v2, 0x4

    #@f
    add-int/lit8 v4, v1, 0x4

    #@11
    aget v4, p2, v4

    #@13
    mul-float/2addr v4, p5

    #@14
    aput v4, p0, v3

    #@16
    .line 454
    add-int/lit8 v3, v2, 0x8

    #@18
    add-int/lit8 v4, v1, 0x8

    #@1a
    aget v4, p2, v4

    #@1c
    mul-float/2addr v4, p6

    #@1d
    aput v4, p0, v3

    #@1f
    .line 455
    add-int/lit8 v3, v2, 0xc

    #@21
    add-int/lit8 v4, v1, 0xc

    #@23
    aget v4, p2, v4

    #@25
    aput v4, p0, v3

    #@27
    .line 449
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 448
    .end local v1    # "mi":I
    .end local v2    # "smi":I
    :cond_0
    return-void
.end method

.method public static setIdentityM([FI)V
    .locals 4
    .param p0, "sm"    # [F
    .param p1, "smOffset"    # I

    #@0
    .prologue
    const/16 v3, 0x10

    #@2
    .line 425
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@5
    .line 426
    add-int v1, p1, v0

    #@7
    const/4 v2, 0x0

    #@8
    aput v2, p0, v1

    #@a
    .line 425
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 428
    :cond_0
    const/4 v0, 0x0

    #@e
    :goto_1
    if-ge v0, v3, :cond_1

    #@10
    .line 429
    add-int v1, p1, v0

    #@12
    const/high16 v2, 0x3f800000    # 1.0f

    #@14
    aput v2, p0, v1

    #@16
    .line 428
    add-int/lit8 v0, v0, 0x5

    #@18
    goto :goto_1

    #@19
    .line 424
    :cond_1
    return-void
.end method

.method public static setLookAtM([FIFFFFFFFFF)V
    .locals 15
    .param p0, "rm"    # [F
    .param p1, "rmOffset"    # I
    .param p2, "eyeX"    # F
    .param p3, "eyeY"    # F
    .param p4, "eyeZ"    # F
    .param p5, "centerX"    # F
    .param p6, "centerY"    # F
    .param p7, "centerZ"    # F
    .param p8, "upX"    # F
    .param p9, "upY"    # F
    .param p10, "upZ"    # F

    #@0
    .prologue
    .line 705
    sub-float v1, p5, p2

    #@2
    .line 706
    .local v1, "fx":F
    sub-float v2, p6, p3

    #@4
    .line 707
    .local v2, "fy":F
    sub-float v3, p7, p4

    #@6
    .line 710
    .local v3, "fz":F
    invoke-static {v1, v2, v3}, Landroid/opengl/Matrix;->length(FFF)F

    #@9
    move-result v12

    #@a
    const/high16 v13, 0x3f800000    # 1.0f

    #@c
    div-float v4, v13, v12

    #@e
    .line 711
    .local v4, "rlf":F
    mul-float/2addr v1, v4

    #@f
    .line 712
    mul-float/2addr v2, v4

    #@10
    .line 713
    mul-float/2addr v3, v4

    #@11
    .line 716
    mul-float v12, v2, p10

    #@13
    mul-float v13, v3, p9

    #@15
    sub-float v6, v12, v13

    #@17
    .line 717
    .local v6, "sx":F
    mul-float v12, v3, p8

    #@19
    mul-float v13, v1, p10

    #@1b
    sub-float v7, v12, v13

    #@1d
    .line 718
    .local v7, "sy":F
    mul-float v12, v1, p9

    #@1f
    mul-float v13, v2, p8

    #@21
    sub-float v8, v12, v13

    #@23
    .line 721
    .local v8, "sz":F
    invoke-static {v6, v7, v8}, Landroid/opengl/Matrix;->length(FFF)F

    #@26
    move-result v12

    #@27
    const/high16 v13, 0x3f800000    # 1.0f

    #@29
    div-float v5, v13, v12

    #@2b
    .line 722
    .local v5, "rls":F
    mul-float/2addr v6, v5

    #@2c
    .line 723
    mul-float/2addr v7, v5

    #@2d
    .line 724
    mul-float/2addr v8, v5

    #@2e
    .line 727
    mul-float v12, v7, v3

    #@30
    mul-float v13, v8, v2

    #@32
    sub-float v9, v12, v13

    #@34
    .line 728
    .local v9, "ux":F
    mul-float v12, v8, v1

    #@36
    mul-float v13, v6, v3

    #@38
    sub-float v10, v12, v13

    #@3a
    .line 729
    .local v10, "uy":F
    mul-float v12, v6, v2

    #@3c
    mul-float v13, v7, v1

    #@3e
    sub-float v11, v12, v13

    #@40
    .line 731
    .local v11, "uz":F
    add-int/lit8 v12, p1, 0x0

    #@42
    aput v6, p0, v12

    #@44
    .line 732
    add-int/lit8 v12, p1, 0x1

    #@46
    aput v9, p0, v12

    #@48
    .line 733
    add-int/lit8 v12, p1, 0x2

    #@4a
    neg-float v13, v1

    #@4b
    aput v13, p0, v12

    #@4d
    .line 734
    add-int/lit8 v12, p1, 0x3

    #@4f
    const/4 v13, 0x0

    #@50
    aput v13, p0, v12

    #@52
    .line 736
    add-int/lit8 v12, p1, 0x4

    #@54
    aput v7, p0, v12

    #@56
    .line 737
    add-int/lit8 v12, p1, 0x5

    #@58
    aput v10, p0, v12

    #@5a
    .line 738
    add-int/lit8 v12, p1, 0x6

    #@5c
    neg-float v13, v2

    #@5d
    aput v13, p0, v12

    #@5f
    .line 739
    add-int/lit8 v12, p1, 0x7

    #@61
    const/4 v13, 0x0

    #@62
    aput v13, p0, v12

    #@64
    .line 741
    add-int/lit8 v12, p1, 0x8

    #@66
    aput v8, p0, v12

    #@68
    .line 742
    add-int/lit8 v12, p1, 0x9

    #@6a
    aput v11, p0, v12

    #@6c
    .line 743
    add-int/lit8 v12, p1, 0xa

    #@6e
    neg-float v13, v3

    #@6f
    aput v13, p0, v12

    #@71
    .line 744
    add-int/lit8 v12, p1, 0xb

    #@73
    const/4 v13, 0x0

    #@74
    aput v13, p0, v12

    #@76
    .line 746
    add-int/lit8 v12, p1, 0xc

    #@78
    const/4 v13, 0x0

    #@79
    aput v13, p0, v12

    #@7b
    .line 747
    add-int/lit8 v12, p1, 0xd

    #@7d
    const/4 v13, 0x0

    #@7e
    aput v13, p0, v12

    #@80
    .line 748
    add-int/lit8 v12, p1, 0xe

    #@82
    const/4 v13, 0x0

    #@83
    aput v13, p0, v12

    #@85
    .line 749
    add-int/lit8 v12, p1, 0xf

    #@87
    const/high16 v13, 0x3f800000    # 1.0f

    #@89
    aput v13, p0, v12

    #@8b
    .line 751
    move/from16 v0, p2

    #@8d
    neg-float v12, v0

    #@8e
    move/from16 v0, p3

    #@90
    neg-float v13, v0

    #@91
    move/from16 v0, p4

    #@93
    neg-float v14, v0

    #@94
    move/from16 v0, p1

    #@96
    invoke-static {p0, v0, v12, v13, v14}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    #@99
    .line 700
    return-void
.end method

.method public static setRotateEulerM([FIFFF)V
    .locals 11
    .param p0, "rm"    # [F
    .param p1, "rmOffset"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    #@0
    .prologue
    .line 648
    const v8, 0x3c8efa35

    #@3
    mul-float/2addr p2, v8

    #@4
    .line 649
    const v8, 0x3c8efa35

    #@7
    mul-float/2addr p3, v8

    #@8
    .line 650
    const v8, 0x3c8efa35

    #@b
    mul-float/2addr p4, v8

    #@c
    .line 651
    float-to-double v8, p2

    #@d
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    #@10
    move-result-wide v8

    #@11
    double-to-float v0, v8

    #@12
    .line 652
    .local v0, "cx":F
    float-to-double v8, p2

    #@13
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    #@16
    move-result-wide v8

    #@17
    double-to-float v4, v8

    #@18
    .line 653
    .local v4, "sx":F
    float-to-double v8, p3

    #@19
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    #@1c
    move-result-wide v8

    #@1d
    double-to-float v2, v8

    #@1e
    .line 654
    .local v2, "cy":F
    float-to-double v8, p3

    #@1f
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    #@22
    move-result-wide v8

    #@23
    double-to-float v6, v8

    #@24
    .line 655
    .local v6, "sy":F
    float-to-double v8, p4

    #@25
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    #@28
    move-result-wide v8

    #@29
    double-to-float v3, v8

    #@2a
    .line 656
    .local v3, "cz":F
    float-to-double v8, p4

    #@2b
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    #@2e
    move-result-wide v8

    #@2f
    double-to-float v7, v8

    #@30
    .line 657
    .local v7, "sz":F
    mul-float v1, v0, v6

    #@32
    .line 658
    .local v1, "cxsy":F
    mul-float v5, v4, v6

    #@34
    .line 660
    .local v5, "sxsy":F
    add-int/lit8 v8, p1, 0x0

    #@36
    mul-float v9, v2, v3

    #@38
    aput v9, p0, v8

    #@3a
    .line 661
    add-int/lit8 v8, p1, 0x1

    #@3c
    neg-float v9, v2

    #@3d
    mul-float/2addr v9, v7

    #@3e
    aput v9, p0, v8

    #@40
    .line 662
    add-int/lit8 v8, p1, 0x2

    #@42
    aput v6, p0, v8

    #@44
    .line 663
    add-int/lit8 v8, p1, 0x3

    #@46
    const/4 v9, 0x0

    #@47
    aput v9, p0, v8

    #@49
    .line 665
    add-int/lit8 v8, p1, 0x4

    #@4b
    mul-float v9, v1, v3

    #@4d
    mul-float v10, v0, v7

    #@4f
    add-float/2addr v9, v10

    #@50
    aput v9, p0, v8

    #@52
    .line 666
    add-int/lit8 v8, p1, 0x5

    #@54
    neg-float v9, v1

    #@55
    mul-float/2addr v9, v7

    #@56
    mul-float v10, v0, v3

    #@58
    add-float/2addr v9, v10

    #@59
    aput v9, p0, v8

    #@5b
    .line 667
    add-int/lit8 v8, p1, 0x6

    #@5d
    neg-float v9, v4

    #@5e
    mul-float/2addr v9, v2

    #@5f
    aput v9, p0, v8

    #@61
    .line 668
    add-int/lit8 v8, p1, 0x7

    #@63
    const/4 v9, 0x0

    #@64
    aput v9, p0, v8

    #@66
    .line 670
    add-int/lit8 v8, p1, 0x8

    #@68
    neg-float v9, v5

    #@69
    mul-float/2addr v9, v3

    #@6a
    mul-float v10, v4, v7

    #@6c
    add-float/2addr v9, v10

    #@6d
    aput v9, p0, v8

    #@6f
    .line 671
    add-int/lit8 v8, p1, 0x9

    #@71
    mul-float v9, v5, v7

    #@73
    mul-float v10, v4, v3

    #@75
    add-float/2addr v9, v10

    #@76
    aput v9, p0, v8

    #@78
    .line 672
    add-int/lit8 v8, p1, 0xa

    #@7a
    mul-float v9, v0, v2

    #@7c
    aput v9, p0, v8

    #@7e
    .line 673
    add-int/lit8 v8, p1, 0xb

    #@80
    const/4 v9, 0x0

    #@81
    aput v9, p0, v8

    #@83
    .line 675
    add-int/lit8 v8, p1, 0xc

    #@85
    const/4 v9, 0x0

    #@86
    aput v9, p0, v8

    #@88
    .line 676
    add-int/lit8 v8, p1, 0xd

    #@8a
    const/4 v9, 0x0

    #@8b
    aput v9, p0, v8

    #@8d
    .line 677
    add-int/lit8 v8, p1, 0xe

    #@8f
    const/4 v9, 0x0

    #@90
    aput v9, p0, v8

    #@92
    .line 678
    add-int/lit8 v8, p1, 0xf

    #@94
    const/high16 v9, 0x3f800000    # 1.0f

    #@96
    aput v9, p0, v8

    #@98
    .line 647
    return-void
.end method

.method public static setRotateM([FIFFFF)V
    .locals 16
    .param p0, "rm"    # [F
    .param p1, "rmOffset"    # I
    .param p2, "a"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F

    #@0
    .prologue
    .line 582
    add-int/lit8 v13, p1, 0x3

    #@2
    const/4 v14, 0x0

    #@3
    aput v14, p0, v13

    #@5
    .line 583
    add-int/lit8 v13, p1, 0x7

    #@7
    const/4 v14, 0x0

    #@8
    aput v14, p0, v13

    #@a
    .line 584
    add-int/lit8 v13, p1, 0xb

    #@c
    const/4 v14, 0x0

    #@d
    aput v14, p0, v13

    #@f
    .line 585
    add-int/lit8 v13, p1, 0xc

    #@11
    const/4 v14, 0x0

    #@12
    aput v14, p0, v13

    #@14
    .line 586
    add-int/lit8 v13, p1, 0xd

    #@16
    const/4 v14, 0x0

    #@17
    aput v14, p0, v13

    #@19
    .line 587
    add-int/lit8 v13, p1, 0xe

    #@1b
    const/4 v14, 0x0

    #@1c
    aput v14, p0, v13

    #@1e
    .line 588
    add-int/lit8 v13, p1, 0xf

    #@20
    const/high16 v14, 0x3f800000    # 1.0f

    #@22
    aput v14, p0, v13

    #@24
    .line 589
    const v13, 0x3c8efa35

    #@27
    mul-float p2, p2, v13

    #@29
    .line 590
    move/from16 v0, p2

    #@2b
    float-to-double v14, v0

    #@2c
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    #@2f
    move-result-wide v14

    #@30
    double-to-float v6, v14

    #@31
    .line 591
    .local v6, "s":F
    move/from16 v0, p2

    #@33
    float-to-double v14, v0

    #@34
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    #@37
    move-result-wide v14

    #@38
    double-to-float v2, v14

    #@39
    .line 592
    .local v2, "c":F
    const/high16 v13, 0x3f800000    # 1.0f

    #@3b
    cmpl-float v13, v13, p3

    #@3d
    if-nez v13, :cond_0

    #@3f
    const/4 v13, 0x0

    #@40
    cmpl-float v13, v13, p4

    #@42
    if-nez v13, :cond_0

    #@44
    const/4 v13, 0x0

    #@45
    cmpl-float v13, v13, p5

    #@47
    if-nez v13, :cond_0

    #@49
    .line 593
    add-int/lit8 v13, p1, 0x5

    #@4b
    aput v2, p0, v13

    #@4d
    add-int/lit8 v13, p1, 0xa

    #@4f
    aput v2, p0, v13

    #@51
    .line 594
    add-int/lit8 v13, p1, 0x6

    #@53
    aput v6, p0, v13

    #@55
    add-int/lit8 v13, p1, 0x9

    #@57
    neg-float v14, v6

    #@58
    aput v14, p0, v13

    #@5a
    .line 595
    add-int/lit8 v13, p1, 0x1

    #@5c
    const/4 v14, 0x0

    #@5d
    aput v14, p0, v13

    #@5f
    add-int/lit8 v13, p1, 0x2

    #@61
    const/4 v14, 0x0

    #@62
    aput v14, p0, v13

    #@64
    .line 596
    add-int/lit8 v13, p1, 0x4

    #@66
    const/4 v14, 0x0

    #@67
    aput v14, p0, v13

    #@69
    add-int/lit8 v13, p1, 0x8

    #@6b
    const/4 v14, 0x0

    #@6c
    aput v14, p0, v13

    #@6e
    .line 597
    add-int/lit8 v13, p1, 0x0

    #@70
    const/high16 v14, 0x3f800000    # 1.0f

    #@72
    aput v14, p0, v13

    #@74
    .line 581
    :goto_0
    return-void

    #@75
    .line 598
    :cond_0
    const/4 v13, 0x0

    #@76
    cmpl-float v13, v13, p3

    #@78
    if-nez v13, :cond_1

    #@7a
    const/high16 v13, 0x3f800000    # 1.0f

    #@7c
    cmpl-float v13, v13, p4

    #@7e
    if-nez v13, :cond_1

    #@80
    const/4 v13, 0x0

    #@81
    cmpl-float v13, v13, p5

    #@83
    if-nez v13, :cond_1

    #@85
    .line 599
    add-int/lit8 v13, p1, 0x0

    #@87
    aput v2, p0, v13

    #@89
    add-int/lit8 v13, p1, 0xa

    #@8b
    aput v2, p0, v13

    #@8d
    .line 600
    add-int/lit8 v13, p1, 0x8

    #@8f
    aput v6, p0, v13

    #@91
    add-int/lit8 v13, p1, 0x2

    #@93
    neg-float v14, v6

    #@94
    aput v14, p0, v13

    #@96
    .line 601
    add-int/lit8 v13, p1, 0x1

    #@98
    const/4 v14, 0x0

    #@99
    aput v14, p0, v13

    #@9b
    add-int/lit8 v13, p1, 0x4

    #@9d
    const/4 v14, 0x0

    #@9e
    aput v14, p0, v13

    #@a0
    .line 602
    add-int/lit8 v13, p1, 0x6

    #@a2
    const/4 v14, 0x0

    #@a3
    aput v14, p0, v13

    #@a5
    add-int/lit8 v13, p1, 0x9

    #@a7
    const/4 v14, 0x0

    #@a8
    aput v14, p0, v13

    #@aa
    .line 603
    add-int/lit8 v13, p1, 0x5

    #@ac
    const/high16 v14, 0x3f800000    # 1.0f

    #@ae
    aput v14, p0, v13

    #@b0
    goto :goto_0

    #@b1
    .line 604
    :cond_1
    const/4 v13, 0x0

    #@b2
    cmpl-float v13, v13, p3

    #@b4
    if-nez v13, :cond_2

    #@b6
    const/4 v13, 0x0

    #@b7
    cmpl-float v13, v13, p4

    #@b9
    if-nez v13, :cond_2

    #@bb
    const/high16 v13, 0x3f800000    # 1.0f

    #@bd
    cmpl-float v13, v13, p5

    #@bf
    if-nez v13, :cond_2

    #@c1
    .line 605
    add-int/lit8 v13, p1, 0x0

    #@c3
    aput v2, p0, v13

    #@c5
    add-int/lit8 v13, p1, 0x5

    #@c7
    aput v2, p0, v13

    #@c9
    .line 606
    add-int/lit8 v13, p1, 0x1

    #@cb
    aput v6, p0, v13

    #@cd
    add-int/lit8 v13, p1, 0x4

    #@cf
    neg-float v14, v6

    #@d0
    aput v14, p0, v13

    #@d2
    .line 607
    add-int/lit8 v13, p1, 0x2

    #@d4
    const/4 v14, 0x0

    #@d5
    aput v14, p0, v13

    #@d7
    add-int/lit8 v13, p1, 0x6

    #@d9
    const/4 v14, 0x0

    #@da
    aput v14, p0, v13

    #@dc
    .line 608
    add-int/lit8 v13, p1, 0x8

    #@de
    const/4 v14, 0x0

    #@df
    aput v14, p0, v13

    #@e1
    add-int/lit8 v13, p1, 0x9

    #@e3
    const/4 v14, 0x0

    #@e4
    aput v14, p0, v13

    #@e6
    .line 609
    add-int/lit8 v13, p1, 0xa

    #@e8
    const/high16 v14, 0x3f800000    # 1.0f

    #@ea
    aput v14, p0, v13

    #@ec
    goto :goto_0

    #@ed
    .line 611
    :cond_2
    invoke-static/range {p3 .. p5}, Landroid/opengl/Matrix;->length(FFF)F

    #@f0
    move-result v3

    #@f1
    .line 612
    .local v3, "len":F
    const/high16 v13, 0x3f800000    # 1.0f

    #@f3
    cmpl-float v13, v13, v3

    #@f5
    if-eqz v13, :cond_3

    #@f7
    .line 613
    const/high16 v13, 0x3f800000    # 1.0f

    #@f9
    div-float v5, v13, v3

    #@fb
    .line 614
    .local v5, "recipLen":F
    mul-float p3, p3, v5

    #@fd
    .line 615
    mul-float p4, p4, v5

    #@ff
    .line 616
    mul-float p5, p5, v5

    #@101
    .line 618
    .end local v5    # "recipLen":F
    :cond_3
    const/high16 v13, 0x3f800000    # 1.0f

    #@103
    sub-float v4, v13, v2

    #@105
    .line 619
    .local v4, "nc":F
    mul-float v8, p3, p4

    #@107
    .line 620
    .local v8, "xy":F
    mul-float v10, p4, p5

    #@109
    .line 621
    .local v10, "yz":F
    mul-float v12, p5, p3

    #@10b
    .line 622
    .local v12, "zx":F
    mul-float v7, p3, v6

    #@10d
    .line 623
    .local v7, "xs":F
    mul-float v9, p4, v6

    #@10f
    .line 624
    .local v9, "ys":F
    mul-float v11, p5, v6

    #@111
    .line 625
    .local v11, "zs":F
    add-int/lit8 v13, p1, 0x0

    #@113
    mul-float v14, p3, p3

    #@115
    mul-float/2addr v14, v4

    #@116
    add-float/2addr v14, v2

    #@117
    aput v14, p0, v13

    #@119
    .line 626
    add-int/lit8 v13, p1, 0x4

    #@11b
    mul-float v14, v8, v4

    #@11d
    sub-float/2addr v14, v11

    #@11e
    aput v14, p0, v13

    #@120
    .line 627
    add-int/lit8 v13, p1, 0x8

    #@122
    mul-float v14, v12, v4

    #@124
    add-float/2addr v14, v9

    #@125
    aput v14, p0, v13

    #@127
    .line 628
    add-int/lit8 v13, p1, 0x1

    #@129
    mul-float v14, v8, v4

    #@12b
    add-float/2addr v14, v11

    #@12c
    aput v14, p0, v13

    #@12e
    .line 629
    add-int/lit8 v13, p1, 0x5

    #@130
    mul-float v14, p4, p4

    #@132
    mul-float/2addr v14, v4

    #@133
    add-float/2addr v14, v2

    #@134
    aput v14, p0, v13

    #@136
    .line 630
    add-int/lit8 v13, p1, 0x9

    #@138
    mul-float v14, v10, v4

    #@13a
    sub-float/2addr v14, v7

    #@13b
    aput v14, p0, v13

    #@13d
    .line 631
    add-int/lit8 v13, p1, 0x2

    #@13f
    mul-float v14, v12, v4

    #@141
    sub-float/2addr v14, v9

    #@142
    aput v14, p0, v13

    #@144
    .line 632
    add-int/lit8 v13, p1, 0x6

    #@146
    mul-float v14, v10, v4

    #@148
    add-float/2addr v14, v7

    #@149
    aput v14, p0, v13

    #@14b
    .line 633
    add-int/lit8 v13, p1, 0xa

    #@14d
    mul-float v14, p5, p5

    #@14f
    mul-float/2addr v14, v4

    #@150
    add-float/2addr v14, v2

    #@151
    aput v14, p0, v13

    #@153
    goto/16 :goto_0
.end method

.method public static translateM([FIFFF)V
    .locals 7
    .param p0, "m"    # [F
    .param p1, "mOffset"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    .line 517
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    #@4
    .line 518
    add-int v1, p1, v0

    #@6
    .line 519
    .local v1, "mi":I
    add-int/lit8 v2, v1, 0xc

    #@8
    aget v3, p0, v2

    #@a
    aget v4, p0, v1

    #@c
    mul-float/2addr v4, p2

    #@d
    add-int/lit8 v5, v1, 0x4

    #@f
    aget v5, p0, v5

    #@11
    mul-float/2addr v5, p3

    #@12
    add-float/2addr v4, v5

    #@13
    add-int/lit8 v5, v1, 0x8

    #@15
    aget v5, p0, v5

    #@17
    mul-float/2addr v5, p4

    #@18
    add-float/2addr v4, v5

    #@19
    add-float/2addr v3, v4

    #@1a
    aput v3, p0, v2

    #@1c
    .line 517
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 516
    .end local v1    # "mi":I
    :cond_0
    return-void
.end method

.method public static translateM([FI[FIFFF)V
    .locals 7
    .param p0, "tm"    # [F
    .param p1, "tmOffset"    # I
    .param p2, "m"    # [F
    .param p3, "mOffset"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "z"    # F

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/16 v5, 0xc

    #@3
    .line 494
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    #@6
    .line 495
    add-int v3, p1, v0

    #@8
    add-int v4, p3, v0

    #@a
    aget v4, p2, v4

    #@c
    aput v4, p0, v3

    #@e
    .line 494
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 497
    :cond_0
    const/4 v0, 0x0

    #@12
    :goto_1
    if-ge v0, v6, :cond_1

    #@14
    .line 498
    add-int v2, p1, v0

    #@16
    .line 499
    .local v2, "tmi":I
    add-int v1, p3, v0

    #@18
    .line 500
    .local v1, "mi":I
    add-int/lit8 v3, v2, 0xc

    #@1a
    aget v4, p2, v1

    #@1c
    mul-float/2addr v4, p4

    #@1d
    add-int/lit8 v5, v1, 0x4

    #@1f
    aget v5, p2, v5

    #@21
    mul-float/2addr v5, p5

    #@22
    add-float/2addr v4, v5

    #@23
    add-int/lit8 v5, v1, 0x8

    #@25
    aget v5, p2, v5

    #@27
    mul-float/2addr v5, p6

    #@28
    add-float/2addr v4, v5

    #@29
    .line 501
    add-int/lit8 v5, v1, 0xc

    #@2b
    aget v5, p2, v5

    #@2d
    .line 500
    add-float/2addr v4, v5

    #@2e
    aput v4, p0, v3

    #@30
    .line 497
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_1

    #@33
    .line 493
    .end local v1    # "mi":I
    .end local v2    # "tmi":I
    :cond_1
    return-void
.end method

.method public static transposeM([FI[FI)V
    .locals 4
    .param p0, "mTrans"    # [F
    .param p1, "mTransOffset"    # I
    .param p2, "m"    # [F
    .param p3, "mOffset"    # I

    #@0
    .prologue
    .line 114
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    #@2
    if-ge v0, v2, :cond_0

    #@4
    .line 115
    mul-int/lit8 v2, v0, 0x4

    #@6
    add-int v1, v2, p3

    #@8
    .line 116
    .local v1, "mBase":I
    add-int v2, v0, p1

    #@a
    aget v3, p2, v1

    #@c
    aput v3, p0, v2

    #@e
    .line 117
    add-int/lit8 v2, v0, 0x4

    #@10
    add-int/2addr v2, p1

    #@11
    add-int/lit8 v3, v1, 0x1

    #@13
    aget v3, p2, v3

    #@15
    aput v3, p0, v2

    #@17
    .line 118
    add-int/lit8 v2, v0, 0x8

    #@19
    add-int/2addr v2, p1

    #@1a
    add-int/lit8 v3, v1, 0x2

    #@1c
    aget v3, p2, v3

    #@1e
    aput v3, p0, v2

    #@20
    .line 119
    add-int/lit8 v2, v0, 0xc

    #@22
    add-int/2addr v2, p1

    #@23
    add-int/lit8 v3, v1, 0x3

    #@25
    aget v3, p2, v3

    #@27
    aput v3, p0, v2

    #@29
    .line 114
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 113
    .end local v1    # "mBase":I
    :cond_0
    return-void
.end method
