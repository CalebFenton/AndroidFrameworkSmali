.class public Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;
.super Landroid/filterfw/core/Filter;
.source "FaceMetaSmoothFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    }
.end annotation


# instance fields
.field private mLastPositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;",
            ">;"
        }
    .end annotation
.end field

.field final mMaximumGap:J

.field final mMaximumPredictionGap:J

.field final mSmoothingRate:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v2, 0x12c

    #@2
    .line 140
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@5
    .line 40
    const/high16 v0, 0x3f000000    # 0.5f

    #@7
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->mSmoothingRate:F

    #@9
    .line 41
    iput-wide v2, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->mMaximumGap:J

    #@b
    .line 42
    iput-wide v2, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->mMaximumPredictionGap:J

    #@d
    .line 64
    new-instance v0, Ljava/util/HashMap;

    #@f
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@12
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->mLastPositions:Ljava/util/HashMap;

    #@14
    .line 139
    return-void
.end method

.method private getCurrentPositions(Lcom/google/android/filterpacks/facedetect/FaceMeta;)Ljava/util/Vector;
    .locals 22
    .param p1, "face"    # Lcom/google/android/filterpacks/facedetect/FaceMeta;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/filterpacks/facedetect/FaceMeta;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 66
    new-instance v13, Ljava/util/Vector;

    #@2
    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    #@5
    .line 67
    .local v13, "retFaces":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    #@8
    move-result v10

    #@9
    .line 68
    .local v10, "num_face":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@c
    move-result-wide v14

    #@d
    .line 69
    .local v14, "t":J
    const/4 v7, 0x0

    #@e
    .local v7, "i":I
    :goto_0
    if-ge v7, v10, :cond_1

    #@10
    .line 70
    new-instance v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;

    #@12
    move-object/from16 v0, p0

    #@14
    invoke-direct {v11, v0}, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;-><init>(Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;)V

    #@17
    .line 71
    .local v11, "p":Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    move-object/from16 v0, p1

    #@19
    invoke-virtual {v0, v7}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeX(I)F

    #@1c
    move-result v17

    #@1d
    move/from16 v0, v17

    #@1f
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_x:F

    #@21
    .line 72
    move-object/from16 v0, p1

    #@23
    invoke-virtual {v0, v7}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeY(I)F

    #@26
    move-result v17

    #@27
    move/from16 v0, v17

    #@29
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_y:F

    #@2b
    .line 73
    move-object/from16 v0, p1

    #@2d
    invoke-virtual {v0, v7}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeX(I)F

    #@30
    move-result v17

    #@31
    move/from16 v0, v17

    #@33
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_x:F

    #@35
    .line 74
    move-object/from16 v0, p1

    #@37
    invoke-virtual {v0, v7}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeY(I)F

    #@3a
    move-result v17

    #@3b
    move/from16 v0, v17

    #@3d
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_y:F

    #@3f
    .line 75
    move-object/from16 v0, p1

    #@41
    invoke-virtual {v0, v7}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthX(I)F

    #@44
    move-result v17

    #@45
    move/from16 v0, v17

    #@47
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->mouth_x:F

    #@49
    .line 76
    move-object/from16 v0, p1

    #@4b
    invoke-virtual {v0, v7}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthY(I)F

    #@4e
    move-result v17

    #@4f
    move/from16 v0, v17

    #@51
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->mouth_y:F

    #@53
    .line 77
    move-object/from16 v0, p1

    #@55
    invoke-virtual {v0, v7}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX0(I)F

    #@58
    move-result v17

    #@59
    move/from16 v0, v17

    #@5b
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_x0:F

    #@5d
    .line 78
    move-object/from16 v0, p1

    #@5f
    invoke-virtual {v0, v7}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY0(I)F

    #@62
    move-result v17

    #@63
    move/from16 v0, v17

    #@65
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_y0:F

    #@67
    .line 79
    move-object/from16 v0, p1

    #@69
    invoke-virtual {v0, v7}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX1(I)F

    #@6c
    move-result v17

    #@6d
    move/from16 v0, v17

    #@6f
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_x1:F

    #@71
    .line 80
    move-object/from16 v0, p1

    #@73
    invoke-virtual {v0, v7}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY1(I)F

    #@76
    move-result v17

    #@77
    move/from16 v0, v17

    #@79
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_y1:F

    #@7b
    .line 81
    move-object/from16 v0, p1

    #@7d
    invoke-virtual {v0, v7}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getUpperLipX(I)F

    #@80
    move-result v17

    #@81
    move/from16 v0, v17

    #@83
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->upper_lip_x:F

    #@85
    .line 82
    move-object/from16 v0, p1

    #@87
    invoke-virtual {v0, v7}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getUpperLipY(I)F

    #@8a
    move-result v17

    #@8b
    move/from16 v0, v17

    #@8d
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->upper_lip_y:F

    #@8f
    .line 83
    move-object/from16 v0, p1

    #@91
    invoke-virtual {v0, v7}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLowerLipX(I)F

    #@94
    move-result v17

    #@95
    move/from16 v0, v17

    #@97
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->lower_lip_x:F

    #@99
    .line 84
    move-object/from16 v0, p1

    #@9b
    invoke-virtual {v0, v7}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLowerLipY(I)F

    #@9e
    move-result v17

    #@9f
    move/from16 v0, v17

    #@a1
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->lower_lip_y:F

    #@a3
    .line 85
    move-object/from16 v0, p1

    #@a5
    invoke-virtual {v0, v7}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getId(I)I

    #@a8
    move-result v17

    #@a9
    move/from16 v0, v17

    #@ab
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->id:I

    #@ad
    .line 86
    iput-wide v14, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->last_seen:J

    #@af
    .line 87
    const/16 v17, 0x0

    #@b1
    move/from16 v0, v17

    #@b3
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->speed_x:F

    #@b5
    .line 88
    const/16 v17, 0x0

    #@b7
    move/from16 v0, v17

    #@b9
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->speed_y:F

    #@bb
    .line 89
    move-object/from16 v0, p0

    #@bd
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->mLastPositions:Ljava/util/HashMap;

    #@bf
    move-object/from16 v17, v0

    #@c1
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->id:I

    #@c3
    move/from16 v18, v0

    #@c5
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c8
    move-result-object v18

    #@c9
    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@cc
    move-result v17

    #@cd
    if-eqz v17, :cond_0

    #@cf
    .line 90
    move-object/from16 v0, p0

    #@d1
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->mLastPositions:Ljava/util/HashMap;

    #@d3
    move-object/from16 v17, v0

    #@d5
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->id:I

    #@d7
    move/from16 v18, v0

    #@d9
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@dc
    move-result-object v18

    #@dd
    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e0
    move-result-object v16

    #@e1
    check-cast v16, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;

    #@e3
    .line 91
    .local v16, "v":Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_x:F

    #@e5
    move/from16 v17, v0

    #@e7
    move-object/from16 v0, v16

    #@e9
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_x:F

    #@eb
    move/from16 v18, v0

    #@ed
    sub-float v17, v17, v18

    #@ef
    .line 92
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_x:F

    #@f1
    move/from16 v18, v0

    #@f3
    move-object/from16 v0, v16

    #@f5
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_x:F

    #@f7
    move/from16 v19, v0

    #@f9
    sub-float v18, v18, v19

    #@fb
    .line 91
    add-float v17, v17, v18

    #@fd
    .line 92
    const/high16 v18, 0x40000000    # 2.0f

    #@ff
    .line 91
    div-float v3, v17, v18

    #@101
    .line 93
    .local v3, "dx":F
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_y:F

    #@103
    move/from16 v17, v0

    #@105
    move-object/from16 v0, v16

    #@107
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_y:F

    #@109
    move/from16 v18, v0

    #@10b
    sub-float v17, v17, v18

    #@10d
    .line 94
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_y:F

    #@10f
    move/from16 v18, v0

    #@111
    move-object/from16 v0, v16

    #@113
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_y:F

    #@115
    move/from16 v19, v0

    #@117
    sub-float v18, v18, v19

    #@119
    .line 93
    add-float v17, v17, v18

    #@11b
    .line 94
    const/high16 v18, 0x40000000    # 2.0f

    #@11d
    .line 93
    div-float v4, v17, v18

    #@11f
    .line 95
    .local v4, "dy":F
    move-object/from16 v0, v16

    #@121
    iget-wide v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->last_seen:J

    #@123
    move-wide/from16 v18, v0

    #@125
    sub-long v18, v14, v18

    #@127
    move-wide/from16 v0, v18

    #@129
    long-to-float v0, v0

    #@12a
    move/from16 v17, v0

    #@12c
    const/high16 v18, 0x447a0000    # 1000.0f

    #@12e
    div-float v2, v17, v18

    #@130
    .line 96
    .local v2, "dt":F
    move-object/from16 v0, v16

    #@132
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->speed_x:F

    #@134
    move/from16 v17, v0

    #@136
    div-float v18, v3, v2

    #@138
    move-object/from16 v0, v16

    #@13a
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->speed_x:F

    #@13c
    move/from16 v19, v0

    #@13e
    sub-float v18, v18, v19

    #@140
    const/high16 v19, 0x3f000000    # 0.5f

    #@142
    mul-float v18, v18, v19

    #@144
    add-float v17, v17, v18

    #@146
    move/from16 v0, v17

    #@148
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->speed_x:F

    #@14a
    .line 97
    move-object/from16 v0, v16

    #@14c
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->speed_y:F

    #@14e
    move/from16 v17, v0

    #@150
    div-float v18, v4, v2

    #@152
    move-object/from16 v0, v16

    #@154
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->speed_y:F

    #@156
    move/from16 v19, v0

    #@158
    sub-float v18, v18, v19

    #@15a
    const/high16 v19, 0x3f000000    # 0.5f

    #@15c
    mul-float v18, v18, v19

    #@15e
    add-float v17, v17, v18

    #@160
    move/from16 v0, v17

    #@162
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->speed_y:F

    #@164
    .line 98
    move-object/from16 v0, p0

    #@166
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->mLastPositions:Ljava/util/HashMap;

    #@168
    move-object/from16 v17, v0

    #@16a
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->id:I

    #@16c
    move/from16 v18, v0

    #@16e
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@171
    move-result-object v18

    #@172
    move-object/from16 v0, v17

    #@174
    move-object/from16 v1, v18

    #@176
    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@179
    .line 103
    .end local v2    # "dt":F
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    .end local v16    # "v":Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    :goto_1
    invoke-virtual {v13, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@17c
    .line 69
    add-int/lit8 v7, v7, 0x1

    #@17e
    goto/16 :goto_0

    #@180
    .line 101
    :cond_0
    move-object/from16 v0, p0

    #@182
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->mLastPositions:Ljava/util/HashMap;

    #@184
    move-object/from16 v17, v0

    #@186
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->id:I

    #@188
    move/from16 v18, v0

    #@18a
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18d
    move-result-object v18

    #@18e
    move-object/from16 v0, v17

    #@190
    move-object/from16 v1, v18

    #@192
    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@195
    goto :goto_1

    #@196
    .line 105
    .end local v11    # "p":Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    :cond_1
    new-instance v12, Ljava/util/Vector;

    #@198
    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    #@19b
    .line 106
    .local v12, "removeList":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    #@19d
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->mLastPositions:Ljava/util/HashMap;

    #@19f
    move-object/from16 v17, v0

    #@1a1
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@1a4
    move-result-object v17

    #@1a5
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a8
    move-result-object v6

    #@1a9
    .local v6, "f$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@1ac
    move-result v17

    #@1ad
    if-eqz v17, :cond_4

    #@1af
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b2
    move-result-object v5

    #@1b3
    check-cast v5, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;

    #@1b5
    .line 108
    .local v5, "f":Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    iget-wide v0, v5, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->last_seen:J

    #@1b7
    move-wide/from16 v18, v0

    #@1b9
    const-wide/16 v20, 0x12c

    #@1bb
    sub-long v20, v14, v20

    #@1bd
    cmp-long v17, v18, v20

    #@1bf
    if-gez v17, :cond_3

    #@1c1
    iget v0, v5, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->id:I

    #@1c3
    move/from16 v17, v0

    #@1c5
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c8
    move-result-object v17

    #@1c9
    move-object/from16 v0, v17

    #@1cb
    invoke-virtual {v12, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@1ce
    goto :goto_2

    #@1cf
    .line 111
    :cond_3
    iget-wide v0, v5, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->last_seen:J

    #@1d1
    move-wide/from16 v18, v0

    #@1d3
    cmp-long v17, v18, v14

    #@1d5
    if-eqz v17, :cond_2

    #@1d7
    iget-wide v0, v5, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->last_seen:J

    #@1d9
    move-wide/from16 v18, v0

    #@1db
    const-wide/16 v20, 0x12c

    #@1dd
    sub-long v20, v14, v20

    #@1df
    cmp-long v17, v18, v20

    #@1e1
    if-lez v17, :cond_2

    #@1e3
    .line 112
    invoke-virtual {v5}, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->clone()Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;

    #@1e6
    move-result-object v11

    #@1e7
    .line 113
    .restart local v11    # "p":Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    iget v0, v5, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->speed_x:F

    #@1e9
    move/from16 v17, v0

    #@1eb
    const/high16 v18, 0x447a0000    # 1000.0f

    #@1ed
    div-float v17, v17, v18

    #@1ef
    iget-wide v0, v5, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->last_seen:J

    #@1f1
    move-wide/from16 v18, v0

    #@1f3
    sub-long v18, v14, v18

    #@1f5
    move-wide/from16 v0, v18

    #@1f7
    long-to-float v0, v0

    #@1f8
    move/from16 v18, v0

    #@1fa
    mul-float v3, v17, v18

    #@1fc
    .line 114
    .restart local v3    # "dx":F
    iget v0, v5, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->speed_x:F

    #@1fe
    move/from16 v17, v0

    #@200
    const/high16 v18, 0x447a0000    # 1000.0f

    #@202
    div-float v17, v17, v18

    #@204
    iget-wide v0, v5, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->last_seen:J

    #@206
    move-wide/from16 v18, v0

    #@208
    sub-long v18, v14, v18

    #@20a
    move-wide/from16 v0, v18

    #@20c
    long-to-float v0, v0

    #@20d
    move/from16 v18, v0

    #@20f
    mul-float v4, v17, v18

    #@211
    .line 115
    .restart local v4    # "dy":F
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_x:F

    #@213
    move/from16 v17, v0

    #@215
    add-float v17, v17, v3

    #@217
    move/from16 v0, v17

    #@219
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_x:F

    #@21b
    .line 116
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_y:F

    #@21d
    move/from16 v17, v0

    #@21f
    add-float v17, v17, v4

    #@221
    move/from16 v0, v17

    #@223
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_y:F

    #@225
    .line 117
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_x:F

    #@227
    move/from16 v17, v0

    #@229
    add-float v17, v17, v3

    #@22b
    move/from16 v0, v17

    #@22d
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_x:F

    #@22f
    .line 118
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_y:F

    #@231
    move/from16 v17, v0

    #@233
    add-float v17, v17, v4

    #@235
    move/from16 v0, v17

    #@237
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_y:F

    #@239
    .line 119
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->mouth_x:F

    #@23b
    move/from16 v17, v0

    #@23d
    add-float v17, v17, v3

    #@23f
    move/from16 v0, v17

    #@241
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->mouth_x:F

    #@243
    .line 120
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->mouth_y:F

    #@245
    move/from16 v17, v0

    #@247
    add-float v17, v17, v4

    #@249
    move/from16 v0, v17

    #@24b
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->mouth_y:F

    #@24d
    .line 121
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_x0:F

    #@24f
    move/from16 v17, v0

    #@251
    add-float v17, v17, v3

    #@253
    move/from16 v0, v17

    #@255
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_x0:F

    #@257
    .line 122
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_y0:F

    #@259
    move/from16 v17, v0

    #@25b
    add-float v17, v17, v4

    #@25d
    move/from16 v0, v17

    #@25f
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_y0:F

    #@261
    .line 123
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_x1:F

    #@263
    move/from16 v17, v0

    #@265
    add-float v17, v17, v3

    #@267
    move/from16 v0, v17

    #@269
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_x1:F

    #@26b
    .line 124
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_y1:F

    #@26d
    move/from16 v17, v0

    #@26f
    add-float v17, v17, v4

    #@271
    move/from16 v0, v17

    #@273
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_y1:F

    #@275
    .line 125
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->upper_lip_x:F

    #@277
    move/from16 v17, v0

    #@279
    add-float v17, v17, v3

    #@27b
    move/from16 v0, v17

    #@27d
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->upper_lip_x:F

    #@27f
    .line 126
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->upper_lip_y:F

    #@281
    move/from16 v17, v0

    #@283
    add-float v17, v17, v4

    #@285
    move/from16 v0, v17

    #@287
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->upper_lip_y:F

    #@289
    .line 127
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->lower_lip_x:F

    #@28b
    move/from16 v17, v0

    #@28d
    add-float v17, v17, v3

    #@28f
    move/from16 v0, v17

    #@291
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->lower_lip_x:F

    #@293
    .line 128
    iget v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->lower_lip_y:F

    #@295
    move/from16 v17, v0

    #@297
    add-float v17, v17, v4

    #@299
    move/from16 v0, v17

    #@29b
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->lower_lip_y:F

    #@29d
    .line 129
    iget v0, v5, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->id:I

    #@29f
    move/from16 v17, v0

    #@2a1
    move/from16 v0, v17

    #@2a3
    iput v0, v11, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->id:I

    #@2a5
    .line 130
    invoke-virtual {v13, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@2a8
    goto/16 :goto_2

    #@2aa
    .line 134
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    .end local v5    # "f":Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    .end local v11    # "p":Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    :cond_4
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2ad
    move-result-object v9

    #@2ae
    .local v9, "i$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@2b1
    move-result v17

    #@2b2
    if-eqz v17, :cond_5

    #@2b4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b7
    move-result-object v8

    #@2b8
    check-cast v8, Ljava/lang/Integer;

    #@2ba
    .line 135
    .local v8, "i":Ljava/lang/Integer;
    move-object/from16 v0, p0

    #@2bc
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->mLastPositions:Ljava/util/HashMap;

    #@2be
    move-object/from16 v17, v0

    #@2c0
    move-object/from16 v0, v17

    #@2c2
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c5
    goto :goto_3

    #@2c6
    .line 137
    .end local v8    # "i":Ljava/lang/Integer;
    :cond_5
    return-object v13
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 12
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@3
    move-result-object v2

    #@4
    .line 158
    .local v2, "frameManager":Landroid/filterfw/core/FrameManager;
    const-string/jumbo v9, "faces"

    #@7
    invoke-virtual {p0, v9}, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@a
    move-result-object v1

    #@b
    .line 161
    .local v1, "facesFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@11
    .line 162
    .local v0, "face":Lcom/google/android/filterpacks/facedetect/FaceMeta;
    invoke-direct {p0, v0}, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->getCurrentPositions(Lcom/google/android/filterpacks/facedetect/FaceMeta;)Ljava/util/Vector;

    #@14
    move-result-object v8

    #@15
    .line 163
    .local v8, "vnewfaces":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;>;"
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    #@18
    move-result v9

    #@19
    new-array v4, v9, [Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;

    #@1b
    .line 164
    .local v4, "newfaces":[Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    invoke-virtual {v8, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1e
    .line 165
    const-class v9, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@20
    .line 166
    array-length v10, v4

    #@21
    .line 167
    const/4 v11, 0x2

    #@22
    .line 165
    invoke-static {v9, v10, v11}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    #@25
    move-result-object v7

    #@26
    .line 168
    .local v7, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v2, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@29
    move-result-object v6

    #@2a
    .line 169
    .local v6, "output":Landroid/filterfw/core/Frame;
    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@2d
    move-result-object v5

    #@2e
    check-cast v5, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@30
    .line 170
    .local v5, "outfaces":Lcom/google/android/filterpacks/facedetect/FaceMeta;
    const/4 v3, 0x0

    #@31
    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    #@34
    move-result v9

    #@35
    if-ge v3, v9, :cond_0

    #@37
    .line 171
    aget-object v9, v4, v3

    #@39
    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->id:I

    #@3b
    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setId(II)V

    #@3e
    .line 172
    aget-object v9, v4, v3

    #@40
    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_x0:F

    #@42
    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setFaceX0(IF)V

    #@45
    .line 173
    aget-object v9, v4, v3

    #@47
    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_y0:F

    #@49
    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setFaceY0(IF)V

    #@4c
    .line 174
    aget-object v9, v4, v3

    #@4e
    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_x1:F

    #@50
    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setFaceX1(IF)V

    #@53
    .line 175
    aget-object v9, v4, v3

    #@55
    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_y1:F

    #@57
    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setFaceY1(IF)V

    #@5a
    .line 176
    aget-object v9, v4, v3

    #@5c
    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_x:F

    #@5e
    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setLeftEyeX(IF)V

    #@61
    .line 177
    aget-object v9, v4, v3

    #@63
    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_y:F

    #@65
    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setLeftEyeY(IF)V

    #@68
    .line 178
    aget-object v9, v4, v3

    #@6a
    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_x:F

    #@6c
    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setRightEyeX(IF)V

    #@6f
    .line 179
    aget-object v9, v4, v3

    #@71
    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_y:F

    #@73
    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setRightEyeY(IF)V

    #@76
    .line 180
    aget-object v9, v4, v3

    #@78
    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->mouth_x:F

    #@7a
    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setMouthX(IF)V

    #@7d
    .line 181
    aget-object v9, v4, v3

    #@7f
    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->mouth_y:F

    #@81
    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setMouthY(IF)V

    #@84
    .line 182
    aget-object v9, v4, v3

    #@86
    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->upper_lip_x:F

    #@88
    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setUpperLipX(IF)V

    #@8b
    .line 183
    aget-object v9, v4, v3

    #@8d
    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->upper_lip_y:F

    #@8f
    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setUpperLipY(IF)V

    #@92
    .line 184
    aget-object v9, v4, v3

    #@94
    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->lower_lip_x:F

    #@96
    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setLowerLipX(IF)V

    #@99
    .line 185
    aget-object v9, v4, v3

    #@9b
    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->lower_lip_y:F

    #@9d
    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setLowerLipY(IF)V

    #@a0
    .line 170
    add-int/lit8 v3, v3, 0x1

    #@a2
    goto :goto_0

    #@a3
    .line 188
    :cond_0
    const-string/jumbo v9, "faces"

    #@a6
    invoke-virtual {p0, v9, v6}, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@a9
    .line 191
    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@ac
    .line 154
    return-void
.end method

.method public setupPorts()V
    .locals 3

    #@0
    .prologue
    .line 146
    const-class v1, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@2
    .line 147
    const/4 v2, 0x2

    #@3
    .line 146
    invoke-static {v1, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@6
    move-result-object v0

    #@7
    .line 149
    .local v0, "facesFormat":Landroid/filterfw/core/FrameFormat;
    const-string/jumbo v1, "faces"

    #@a
    invoke-virtual {p0, v1, v0}, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@d
    .line 150
    const-string/jumbo v1, "faces"

    #@10
    invoke-virtual {p0, v1, v0}, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@13
    .line 144
    return-void
.end method
