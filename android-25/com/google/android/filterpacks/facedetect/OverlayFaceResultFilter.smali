.class public Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;
.super Landroid/filterfw/core/Filter;
.source "OverlayFaceResultFilter.java"


# instance fields
.field private final mBlendShader:Ljava/lang/String;

.field private mOverlayProgram:Landroid/filterfw/core/ShaderProgram;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 39
    const-string/jumbo v0, "precision mediump float;\nuniform int num_face;\nuniform float alpha;\nuniform vec4 blend_color;\nuniform vec4 face_rect;\nuniform vec2 left_eye;\nuniform vec2 right_eye;\nuniform vec2 mouth_pos;\nuniform vec2 upper_lip_pos;\nuniform vec2 lower_lip_pos;\nuniform sampler2D tex_sampler_0;\nfloat eye_size;\nvec2 face_size;\nvec2 face_center;\nfloat dist;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  if (num_face!=0) {\n    face_center[0] = (face_rect[0] + face_rect[2]) / 2.0;\n    face_center[1] = (face_rect[1] + face_rect[3]) / 2.0;\n    face_size[0] = (face_rect[2] - face_rect[0]) / 2.0;\n    face_size[1] = (face_rect[3] - face_rect[1]) / 2.0;\n    dist = length((v_texcoord - face_center) / face_size);\n    if (dist<1.0) {\n       eye_size = distance(left_eye, right_eye) / 6.0;\n       if ( distance(left_eye, v_texcoord) < eye_size ||\n            distance(right_eye, v_texcoord) < eye_size) { \n         gl_FragColor = mix(color, vec4(1.0,0,0,1.0), alpha);\n       } else if (distance(mouth_pos, v_texcoord) < 0.5*eye_size ) { \n         gl_FragColor = mix(color, vec4(0,0,1.0,1.0), alpha);\n       } else if (distance(upper_lip_pos, v_texcoord) < 0.5*eye_size ) { \n         gl_FragColor = mix(color, vec4(1.0,1.0,0,1.0), alpha);\n       } else if (distance(lower_lip_pos, v_texcoord) < 0.5*eye_size ) { \n         gl_FragColor = mix(color, vec4(1.0,1.0,0,1.0), alpha);\n       }\n       else gl_FragColor = mix(color, blend_color, alpha);\n    }\n    else {\n      gl_FragColor = color;\n    }\n  } else gl_FragColor = color;\n}\n"

    #@6
    .line 38
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mBlendShader:Ljava/lang/String;

    #@8
    .line 85
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 104
    return-object p2
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 108
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@2
    const-string/jumbo v1, "precision mediump float;\nuniform int num_face;\nuniform float alpha;\nuniform vec4 blend_color;\nuniform vec4 face_rect;\nuniform vec2 left_eye;\nuniform vec2 right_eye;\nuniform vec2 mouth_pos;\nuniform vec2 upper_lip_pos;\nuniform vec2 lower_lip_pos;\nuniform sampler2D tex_sampler_0;\nfloat eye_size;\nvec2 face_size;\nvec2 face_center;\nfloat dist;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  if (num_face!=0) {\n    face_center[0] = (face_rect[0] + face_rect[2]) / 2.0;\n    face_center[1] = (face_rect[1] + face_rect[3]) / 2.0;\n    face_size[0] = (face_rect[2] - face_rect[0]) / 2.0;\n    face_size[1] = (face_rect[3] - face_rect[1]) / 2.0;\n    dist = length((v_texcoord - face_center) / face_size);\n    if (dist<1.0) {\n       eye_size = distance(left_eye, right_eye) / 6.0;\n       if ( distance(left_eye, v_texcoord) < eye_size ||\n            distance(right_eye, v_texcoord) < eye_size) { \n         gl_FragColor = mix(color, vec4(1.0,0,0,1.0), alpha);\n       } else if (distance(mouth_pos, v_texcoord) < 0.5*eye_size ) { \n         gl_FragColor = mix(color, vec4(0,0,1.0,1.0), alpha);\n       } else if (distance(upper_lip_pos, v_texcoord) < 0.5*eye_size ) { \n         gl_FragColor = mix(color, vec4(1.0,1.0,0,1.0), alpha);\n       } else if (distance(lower_lip_pos, v_texcoord) < 0.5*eye_size ) { \n         gl_FragColor = mix(color, vec4(1.0,1.0,0,1.0), alpha);\n       }\n       else gl_FragColor = mix(color, blend_color, alpha);\n    }\n    else {\n      gl_FragColor = color;\n    }\n  } else gl_FragColor = color;\n}\n"

    #@5
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@8
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@a
    .line 107
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 21
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 112
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@3
    move-result-object v4

    #@4
    .line 115
    .local v4, "frameManager":Landroid/filterfw/core/FrameManager;
    const-string/jumbo v15, "image"

    #@7
    move-object/from16 v0, p0

    #@9
    invoke-virtual {v0, v15}, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@c
    move-result-object v7

    #@d
    .line 116
    .local v7, "imageFrame":Landroid/filterfw/core/Frame;
    const-string/jumbo v15, "faces"

    #@10
    move-object/from16 v0, p0

    #@12
    invoke-virtual {v0, v15}, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@15
    move-result-object v2

    #@16
    .line 119
    .local v2, "facesFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@1c
    .line 121
    .local v1, "face":Lcom/google/android/filterpacks/facedetect/FaceMeta;
    move-object/from16 v0, p0

    #@1e
    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@20
    const/16 v16, 0x0

    #@22
    const/16 v17, 0x0

    #@24
    const/high16 v18, 0x3f800000    # 1.0f

    #@26
    const/high16 v19, 0x3f800000    # 1.0f

    #@28
    invoke-virtual/range {v15 .. v19}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    #@2b
    .line 122
    move-object/from16 v0, p0

    #@2d
    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@2f
    const/16 v16, 0x0

    #@31
    const/16 v17, 0x0

    #@33
    const/high16 v18, 0x3f800000    # 1.0f

    #@35
    const/high16 v19, 0x3f800000    # 1.0f

    #@37
    invoke-virtual/range {v15 .. v19}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    #@3a
    .line 123
    const/4 v15, 0x4

    #@3b
    new-array v5, v15, [F

    #@3d
    .local v5, "green_color":[F
    fill-array-data v5, :array_0

    #@40
    .line 124
    move-object/from16 v0, p0

    #@42
    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@44
    const-string/jumbo v16, "blend_color"

    #@47
    move-object/from16 v0, v16

    #@49
    invoke-virtual {v15, v0, v5}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@4c
    .line 125
    move-object/from16 v0, p0

    #@4e
    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@50
    const-string/jumbo v16, "alpha"

    #@53
    const/high16 v17, 0x3f000000    # 0.5f

    #@55
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@58
    move-result-object v17

    #@59
    invoke-virtual/range {v15 .. v17}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@5c
    .line 127
    invoke-virtual {v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    #@5f
    move-result v11

    #@60
    .line 128
    .local v11, "num_face":I
    move-object/from16 v0, p0

    #@62
    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@64
    const-string/jumbo v16, "num_face"

    #@67
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6a
    move-result-object v17

    #@6b
    invoke-virtual/range {v15 .. v17}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@6e
    .line 129
    const-string/jumbo v15, "Overlay Result"

    #@71
    new-instance v16, Ljava/lang/StringBuilder;

    #@73
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v17, "number of faces"

    #@79
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v16

    #@7d
    move-object/from16 v0, v16

    #@7f
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@82
    move-result-object v16

    #@83
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v16

    #@87
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    .line 130
    if-eqz v11, :cond_2

    #@8c
    .line 132
    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@8f
    move-result-object v15

    #@90
    invoke-virtual {v4, v15}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@93
    move-result-object v12

    #@94
    .line 134
    .local v12, "output":Landroid/filterfw/core/Frame;
    const/4 v6, 0x0

    #@95
    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_1

    #@97
    .line 135
    const/4 v15, 0x4

    #@98
    new-array v3, v15, [F

    #@9a
    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX0(I)F

    #@9d
    move-result v15

    #@9e
    const/16 v16, 0x0

    #@a0
    aput v15, v3, v16

    #@a2
    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY0(I)F

    #@a5
    move-result v15

    #@a6
    const/16 v16, 0x1

    #@a8
    aput v15, v3, v16

    #@aa
    .line 136
    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX1(I)F

    #@ad
    move-result v15

    #@ae
    const/16 v16, 0x2

    #@b0
    aput v15, v3, v16

    #@b2
    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY1(I)F

    #@b5
    move-result v15

    #@b6
    const/16 v16, 0x3

    #@b8
    aput v15, v3, v16

    #@ba
    .line 137
    .local v3, "fr":[F
    const/4 v15, 0x2

    #@bb
    new-array v8, v15, [F

    #@bd
    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeX(I)F

    #@c0
    move-result v15

    #@c1
    const/16 v16, 0x0

    #@c3
    aput v15, v8, v16

    #@c5
    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeY(I)F

    #@c8
    move-result v15

    #@c9
    const/16 v16, 0x1

    #@cb
    aput v15, v8, v16

    #@cd
    .line 138
    .local v8, "le":[F
    const/4 v15, 0x2

    #@ce
    new-array v13, v15, [F

    #@d0
    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeX(I)F

    #@d3
    move-result v15

    #@d4
    const/16 v16, 0x0

    #@d6
    aput v15, v13, v16

    #@d8
    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeY(I)F

    #@db
    move-result v15

    #@dc
    const/16 v16, 0x1

    #@de
    aput v15, v13, v16

    #@e0
    .line 139
    .local v13, "re":[F
    const/4 v15, 0x2

    #@e1
    new-array v10, v15, [F

    #@e3
    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthX(I)F

    #@e6
    move-result v15

    #@e7
    const/16 v16, 0x0

    #@e9
    aput v15, v10, v16

    #@eb
    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthY(I)F

    #@ee
    move-result v15

    #@ef
    const/16 v16, 0x1

    #@f1
    aput v15, v10, v16

    #@f3
    .line 140
    .local v10, "mouth":[F
    const/4 v15, 0x2

    #@f4
    new-array v14, v15, [F

    #@f6
    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getUpperLipX(I)F

    #@f9
    move-result v15

    #@fa
    const/16 v16, 0x0

    #@fc
    aput v15, v14, v16

    #@fe
    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getUpperLipY(I)F

    #@101
    move-result v15

    #@102
    const/16 v16, 0x1

    #@104
    aput v15, v14, v16

    #@106
    .line 141
    .local v14, "upper_lip":[F
    const/4 v15, 0x2

    #@107
    new-array v9, v15, [F

    #@109
    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLowerLipX(I)F

    #@10c
    move-result v15

    #@10d
    const/16 v16, 0x0

    #@10f
    aput v15, v9, v16

    #@111
    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLowerLipY(I)F

    #@114
    move-result v15

    #@115
    const/16 v16, 0x1

    #@117
    aput v15, v9, v16

    #@119
    .line 142
    .local v9, "lower_lip":[F
    move-object/from16 v0, p0

    #@11b
    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@11d
    const-string/jumbo v16, "face_rect"

    #@120
    move-object/from16 v0, v16

    #@122
    invoke-virtual {v15, v0, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@125
    .line 143
    move-object/from16 v0, p0

    #@127
    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@129
    const-string/jumbo v16, "left_eye"

    #@12c
    move-object/from16 v0, v16

    #@12e
    invoke-virtual {v15, v0, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@131
    .line 144
    move-object/from16 v0, p0

    #@133
    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@135
    const-string/jumbo v16, "right_eye"

    #@138
    move-object/from16 v0, v16

    #@13a
    invoke-virtual {v15, v0, v13}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@13d
    .line 145
    move-object/from16 v0, p0

    #@13f
    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@141
    const-string/jumbo v16, "mouth_pos"

    #@144
    move-object/from16 v0, v16

    #@146
    invoke-virtual {v15, v0, v10}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@149
    .line 146
    move-object/from16 v0, p0

    #@14b
    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@14d
    const-string/jumbo v16, "upper_lip_pos"

    #@150
    move-object/from16 v0, v16

    #@152
    invoke-virtual {v15, v0, v14}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@155
    .line 147
    move-object/from16 v0, p0

    #@157
    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@159
    const-string/jumbo v16, "lower_lip_pos"

    #@15c
    move-object/from16 v0, v16

    #@15e
    invoke-virtual {v15, v0, v9}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@161
    .line 148
    if-lez v6, :cond_0

    #@163
    .line 149
    move-object/from16 v0, p0

    #@165
    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@167
    const/16 v16, 0x0

    #@169
    aget v16, v3, v16

    #@16b
    const/16 v17, 0x1

    #@16d
    aget v17, v3, v17

    #@16f
    const/16 v18, 0x2

    #@171
    aget v18, v3, v18

    #@173
    const/16 v19, 0x0

    #@175
    aget v19, v3, v19

    #@177
    sub-float v18, v18, v19

    #@179
    const/16 v19, 0x3

    #@17b
    aget v19, v3, v19

    #@17d
    const/16 v20, 0x1

    #@17f
    aget v20, v3, v20

    #@181
    sub-float v19, v19, v20

    #@183
    invoke-virtual/range {v15 .. v19}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    #@186
    .line 150
    move-object/from16 v0, p0

    #@188
    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@18a
    const/16 v16, 0x0

    #@18c
    aget v16, v3, v16

    #@18e
    const/16 v17, 0x1

    #@190
    aget v17, v3, v17

    #@192
    const/16 v18, 0x2

    #@194
    aget v18, v3, v18

    #@196
    const/16 v19, 0x0

    #@198
    aget v19, v3, v19

    #@19a
    sub-float v18, v18, v19

    #@19c
    const/16 v19, 0x3

    #@19e
    aget v19, v3, v19

    #@1a0
    const/16 v20, 0x1

    #@1a2
    aget v20, v3, v20

    #@1a4
    sub-float v19, v19, v20

    #@1a6
    invoke-virtual/range {v15 .. v19}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    #@1a9
    .line 152
    :cond_0
    move-object/from16 v0, p0

    #@1ab
    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@1ad
    invoke-virtual {v15, v7, v12}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@1b0
    .line 134
    add-int/lit8 v6, v6, 0x1

    #@1b2
    goto/16 :goto_0

    #@1b4
    .line 156
    .end local v3    # "fr":[F
    .end local v8    # "le":[F
    .end local v9    # "lower_lip":[F
    .end local v10    # "mouth":[F
    .end local v13    # "re":[F
    .end local v14    # "upper_lip":[F
    :cond_1
    const-string/jumbo v15, "image"

    #@1b7
    move-object/from16 v0, p0

    #@1b9
    invoke-virtual {v0, v15, v12}, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@1bc
    .line 159
    invoke-virtual {v12}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@1bf
    .line 111
    .end local v6    # "i":I
    .end local v12    # "output":Landroid/filterfw/core/Frame;
    :goto_1
    return-void

    #@1c0
    .line 161
    :cond_2
    const-string/jumbo v15, "image"

    #@1c3
    move-object/from16 v0, p0

    #@1c5
    invoke-virtual {v0, v15, v7}, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@1c8
    goto :goto_1

    #@1c9
    .line 123
    nop

    #@1ca
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setupPorts()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    .line 92
    invoke-static {v2, v2}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v1

    #@5
    .line 94
    .local v1, "imageFormat":Landroid/filterfw/core/FrameFormat;
    const-class v2, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@7
    .line 95
    const/4 v3, 0x2

    #@8
    .line 94
    invoke-static {v2, v3}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@b
    move-result-object v0

    #@c
    .line 97
    .local v0, "facesFormat":Landroid/filterfw/core/FrameFormat;
    const-string/jumbo v2, "image"

    #@f
    invoke-virtual {p0, v2, v1}, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@12
    .line 98
    const-string/jumbo v2, "faces"

    #@15
    invoke-virtual {p0, v2, v0}, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@18
    .line 99
    const-string/jumbo v2, "image"

    #@1b
    const-string/jumbo v3, "image"

    #@1e
    invoke-virtual {p0, v2, v3}, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 90
    return-void
.end method
