.class Landroid/opengl/GLLogWrapper;
.super Landroid/opengl/GLWrapperBase;
.source "GLLogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/opengl/GLLogWrapper$PointerInfo;
    }
.end annotation


# static fields
.field private static final FORMAT_FIXED:I = 0x2

.field private static final FORMAT_FLOAT:I = 0x1

.field private static final FORMAT_INT:I


# instance fields
.field private mArgCount:I

.field mColorArrayEnabled:Z

.field private mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

.field private mLog:Ljava/io/Writer;

.field private mLogArgumentNames:Z

.field mNormalArrayEnabled:Z

.field private mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

.field mStringBuilder:Ljava/lang/StringBuilder;

.field private mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

.field mTextureCoordArrayEnabled:Z

.field mVertexArrayEnabled:Z

.field private mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;


# direct methods
.method static synthetic -wrap0(Landroid/opengl/GLLogWrapper;ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "byteCount"    # I
    .param p2, "input"    # Ljava/nio/Buffer;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL;Ljava/io/Writer;Z)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;
    .param p2, "log"    # Ljava/io/Writer;
    .param p3, "logArgumentNames"    # Z

    #@0
    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/opengl/GLWrapperBase;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    #@3
    .line 3949
    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    #@5
    invoke-direct {v0, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    #@8
    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    #@a
    .line 3950
    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    #@c
    invoke-direct {v0, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    #@f
    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    #@11
    .line 3951
    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    #@13
    invoke-direct {v0, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    #@16
    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    #@18
    .line 3952
    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    #@1a
    invoke-direct {v0, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    #@1d
    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    #@1f
    .line 45
    iput-object p2, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    #@21
    .line 46
    iput-boolean p3, p0, Landroid/opengl/GLLogWrapper;->mLogArgumentNames:Z

    #@23
    .line 43
    return-void
.end method

.method private arg(Ljava/lang/String;F)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 106
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 105
    return-void
.end method

.method private arg(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 102
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 101
    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "n"    # I
    .param p3, "buf"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 231
    invoke-direct {p0, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(ILjava/nio/FloatBuffer;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 230
    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "n"    # I
    .param p3, "buf"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 235
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0, p3}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 234
    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/ShortBuffer;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "n"    # I
    .param p3, "buf"    # Ljava/nio/ShortBuffer;

    #@0
    .prologue
    .line 239
    invoke-direct {p0, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(ILjava/nio/ShortBuffer;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 238
    return-void
.end method

.method private arg(Ljava/lang/String;I[FI)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "n"    # I
    .param p3, "arr"    # [F
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 127
    invoke-direct {p0, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(I[FI)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 126
    return-void
.end method

.method private arg(Ljava/lang/String;I[II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "n"    # I
    .param p3, "arr"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 119
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 118
    return-void
.end method

.method private arg(Ljava/lang/String;I[SI)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "n"    # I
    .param p3, "arr"    # [S
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 123
    invoke-direct {p0, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(I[SI)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 122
    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 75
    iget v0, p0, Landroid/opengl/GLLogWrapper;->mArgCount:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    iput v1, p0, Landroid/opengl/GLLogWrapper;->mArgCount:I

    #@6
    if-lez v0, :cond_0

    #@8
    .line 76
    const-string/jumbo v0, ", "

    #@b
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    #@e
    .line 78
    :cond_0
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mLogArgumentNames:Z

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    const-string/jumbo v1, "="

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    #@29
    .line 81
    :cond_1
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    #@2c
    .line 74
    return-void
.end method

.method private arg(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 98
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 97
    return-void
.end method

.method private argPointer(IIILjava/nio/Buffer;)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 243
    const-string/jumbo v0, "size"

    #@3
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@6
    .line 244
    const-string/jumbo v0, "type"

    #@9
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getPointerTypeName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 245
    const-string/jumbo v0, "stride"

    #@13
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@16
    .line 246
    const-string/jumbo v0, "pointer"

    #@19
    invoke-virtual {p4}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    .line 242
    return-void
.end method

.method private begin(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const/16 v1, 0x28

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    #@16
    .line 71
    const/4 v0, 0x0

    #@17
    iput v0, p0, Landroid/opengl/GLLogWrapper;->mArgCount:I

    #@19
    .line 69
    return-void
.end method

.method private bindArrays()V
    .locals 1

    #@0
    .prologue
    .line 1142
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1143
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    #@6
    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    #@9
    .line 1144
    :cond_0
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1145
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    #@f
    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    #@12
    .line 1146
    :cond_1
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 1147
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    #@18
    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    #@1b
    .line 1148
    :cond_2
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    #@1d
    if-eqz v0, :cond_3

    #@1f
    .line 1149
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    #@21
    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    #@24
    .line 1141
    :cond_3
    return-void
.end method

.method private checkError()V
    .locals 4

    #@0
    .prologue
    .line 51
    iget-object v2, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@2
    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    #@5
    move-result v1

    #@6
    .local v1, "glError":I
    if-eqz v1, :cond_0

    #@8
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "glError: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 53
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->logLine(Ljava/lang/String;)V

    #@23
    .line 49
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V
    .locals 18
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "enabled"    # Z
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "pointer"    # Landroid/opengl/GLLogWrapper$PointerInfo;
    .param p5, "index"    # I

    #@0
    .prologue
    .line 1062
    if-nez p2, :cond_0

    #@2
    .line 1063
    return-void

    #@3
    .line 1065
    :cond_0
    const-string/jumbo v16, " "

    #@6
    move-object/from16 v0, p1

    #@8
    move-object/from16 v1, v16

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 1066
    move-object/from16 v0, p1

    #@f
    move-object/from16 v1, p3

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v16

    #@15
    const-string/jumbo v17, ":{"

    #@18
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 1067
    if-eqz p4, :cond_1

    #@1d
    move-object/from16 v0, p4

    #@1f
    iget-object v0, v0, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    #@21
    move-object/from16 v16, v0

    #@23
    if-nez v16, :cond_2

    #@25
    .line 1068
    :cond_1
    const-string/jumbo v16, "undefined }"

    #@28
    move-object/from16 v0, p1

    #@2a
    move-object/from16 v1, v16

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 1069
    return-void

    #@30
    .line 1071
    :cond_2
    move-object/from16 v0, p4

    #@32
    iget v0, v0, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    #@34
    move/from16 v16, v0

    #@36
    if-gez v16, :cond_3

    #@38
    .line 1072
    const-string/jumbo v16, "invalid stride"

    #@3b
    move-object/from16 v0, p1

    #@3d
    move-object/from16 v1, v16

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 1073
    return-void

    #@43
    .line 1076
    :cond_3
    invoke-virtual/range {p4 .. p4}, Landroid/opengl/GLLogWrapper$PointerInfo;->getStride()I

    #@46
    move-result v14

    #@47
    .line 1077
    .local v14, "stride":I
    move-object/from16 v0, p4

    #@49
    iget-object v2, v0, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    #@4b
    .line 1078
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p4

    #@4d
    iget v12, v0, Landroid/opengl/GLLogWrapper$PointerInfo;->mSize:I

    #@4f
    .line 1079
    .local v12, "size":I
    move-object/from16 v0, p4

    #@51
    iget v15, v0, Landroid/opengl/GLLogWrapper$PointerInfo;->mType:I

    #@53
    .line 1080
    .local v15, "type":I
    move-object/from16 v0, p4

    #@55
    invoke-virtual {v0, v15}, Landroid/opengl/GLLogWrapper$PointerInfo;->sizeof(I)I

    #@58
    move-result v13

    #@59
    .line 1081
    .local v13, "sizeofType":I
    mul-int v3, v14, p5

    #@5b
    .line 1082
    .local v3, "byteOffset":I
    const/4 v8, 0x0

    #@5c
    .local v8, "i":I
    :goto_0
    if-ge v8, v12, :cond_5

    #@5e
    .line 1083
    if-lez v8, :cond_4

    #@60
    .line 1084
    const-string/jumbo v16, ", "

    #@63
    move-object/from16 v0, p1

    #@65
    move-object/from16 v1, v16

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    .line 1086
    :cond_4
    sparse-switch v15, :sswitch_data_0

    #@6d
    .line 1116
    const-string/jumbo v16, "?"

    #@70
    move-object/from16 v0, p1

    #@72
    move-object/from16 v1, v16

    #@74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    .line 1119
    :goto_1
    add-int/2addr v3, v13

    #@78
    .line 1082
    add-int/lit8 v8, v8, 0x1

    #@7a
    goto :goto_0

    #@7b
    .line 1088
    :sswitch_0
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    #@7e
    move-result v4

    #@7f
    .line 1089
    .local v4, "d":B
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@82
    move-result-object v16

    #@83
    move-object/from16 v0, p1

    #@85
    move-object/from16 v1, v16

    #@87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    goto :goto_1

    #@8b
    .line 1093
    .end local v4    # "d":B
    :sswitch_1
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    #@8e
    move-result v4

    #@8f
    .line 1094
    .restart local v4    # "d":B
    and-int/lit16 v0, v4, 0xff

    #@91
    move/from16 v16, v0

    #@93
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@96
    move-result-object v16

    #@97
    move-object/from16 v0, p1

    #@99
    move-object/from16 v1, v16

    #@9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    goto :goto_1

    #@9f
    .line 1098
    .end local v4    # "d":B
    :sswitch_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    #@a2
    move-result-object v11

    #@a3
    .line 1099
    .local v11, "shortBuffer":Ljava/nio/ShortBuffer;
    div-int/lit8 v16, v3, 0x2

    #@a5
    move/from16 v0, v16

    #@a7
    invoke-virtual {v11, v0}, Ljava/nio/ShortBuffer;->get(I)S

    #@aa
    move-result v7

    #@ab
    .line 1100
    .local v7, "d":S
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@ae
    move-result-object v16

    #@af
    move-object/from16 v0, p1

    #@b1
    move-object/from16 v1, v16

    #@b3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    goto :goto_1

    #@b7
    .line 1104
    .end local v7    # "d":S
    .end local v11    # "shortBuffer":Ljava/nio/ShortBuffer;
    :sswitch_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    #@ba
    move-result-object v10

    #@bb
    .line 1105
    .local v10, "intBuffer":Ljava/nio/IntBuffer;
    div-int/lit8 v16, v3, 0x4

    #@bd
    move/from16 v0, v16

    #@bf
    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->get(I)I

    #@c2
    move-result v6

    #@c3
    .line 1106
    .local v6, "d":I
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@c6
    move-result-object v16

    #@c7
    move-object/from16 v0, p1

    #@c9
    move-object/from16 v1, v16

    #@cb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    goto :goto_1

    #@cf
    .line 1110
    .end local v6    # "d":I
    .end local v10    # "intBuffer":Ljava/nio/IntBuffer;
    :sswitch_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    #@d2
    move-result-object v9

    #@d3
    .line 1111
    .local v9, "intBuffer":Ljava/nio/FloatBuffer;
    div-int/lit8 v16, v3, 0x4

    #@d5
    move/from16 v0, v16

    #@d7
    invoke-virtual {v9, v0}, Ljava/nio/FloatBuffer;->get(I)F

    #@da
    move-result v5

    #@db
    .line 1112
    .local v5, "d":F
    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@de
    move-result-object v16

    #@df
    move-object/from16 v0, p1

    #@e1
    move-object/from16 v1, v16

    #@e3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    goto :goto_1

    #@e7
    .line 1121
    .end local v5    # "d":F
    .end local v9    # "intBuffer":Ljava/nio/FloatBuffer;
    :cond_5
    const-string/jumbo v16, "}"

    #@ea
    move-object/from16 v0, p1

    #@ec
    move-object/from16 v1, v16

    #@ee
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    .line 1061
    return-void

    #@f2
    .line 1086
    :sswitch_data_0
    .sparse-switch
        0x1400 -> :sswitch_0
        0x1401 -> :sswitch_1
        0x1402 -> :sswitch_2
        0x1406 -> :sswitch_4
        0x140c -> :sswitch_3
    .end sparse-switch
.end method

.method private doElement(Ljava/lang/StringBuilder;II)V
    .locals 6
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "ordinal"    # I
    .param p3, "vertexIndex"    # I

    #@0
    .prologue
    .line 1125
    const-string/jumbo v0, " ["

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, " : "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, "] ="

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 1126
    iget-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    #@1e
    const-string/jumbo v3, "v"

    #@21
    iget-object v4, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    #@23
    move-object v0, p0

    #@24
    move-object v1, p1

    #@25
    move v5, p3

    #@26
    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    #@29
    .line 1128
    iget-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    #@2b
    const-string/jumbo v3, "n"

    #@2e
    iget-object v4, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    #@30
    move-object v0, p0

    #@31
    move-object v1, p1

    #@32
    move v5, p3

    #@33
    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    #@36
    .line 1130
    iget-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    #@38
    const-string/jumbo v3, "c"

    #@3b
    iget-object v4, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    #@3d
    move-object v0, p0

    #@3e
    move-object v1, p1

    #@3f
    move v5, p3

    #@40
    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    #@43
    .line 1132
    iget-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    #@45
    const-string/jumbo v3, "t"

    #@48
    .line 1133
    iget-object v4, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    #@4a
    move-object v0, p0

    #@4b
    move-object v1, p1

    #@4c
    move v5, p3

    #@4d
    .line 1132
    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    #@50
    .line 1134
    const-string/jumbo v0, "\n"

    #@53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 1124
    return-void
.end method

.method private end()V
    .locals 1

    #@0
    .prologue
    .line 85
    const-string/jumbo v0, ");\n"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    #@6
    .line 86
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->flush()V

    #@9
    .line 84
    return-void
.end method

.method private endLogIndices()V
    .locals 1

    #@0
    .prologue
    .line 1170
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    #@9
    .line 1171
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->unbindArrays()V

    #@c
    .line 1169
    return-void
.end method

.method private flush()V
    .locals 2

    #@0
    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    #@2
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 89
    :goto_0
    return-void

    #@6
    .line 92
    :catch_0
    move-exception v0

    #@7
    .line 93
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    #@8
    iput-object v1, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    #@a
    goto :goto_0
.end method

.method private formattedAppend(Ljava/lang/StringBuilder;II)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # I
    .param p3, "format"    # I

    #@0
    .prologue
    .line 131
    packed-switch p3, :pswitch_data_0

    #@3
    .line 130
    :goto_0
    return-void

    #@4
    .line 133
    :pswitch_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7
    goto :goto_0

    #@8
    .line 136
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@b
    move-result v0

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@f
    goto :goto_0

    #@10
    .line 139
    :pswitch_2
    int-to-float v0, p2

    #@11
    const/high16 v1, 0x47800000    # 65536.0f

    #@13
    div-float/2addr v0, v1

    #@14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@17
    goto :goto_0

    #@18
    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getBeginMode(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 587
    packed-switch p1, :pswitch_data_0

    #@3
    .line 603
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 589
    :pswitch_0
    const-string/jumbo v0, "GL_POINTS"

    #@b
    return-object v0

    #@c
    .line 591
    :pswitch_1
    const-string/jumbo v0, "GL_LINES"

    #@f
    return-object v0

    #@10
    .line 593
    :pswitch_2
    const-string/jumbo v0, "GL_LINE_LOOP"

    #@13
    return-object v0

    #@14
    .line 595
    :pswitch_3
    const-string/jumbo v0, "GL_LINE_STRIP"

    #@17
    return-object v0

    #@18
    .line 597
    :pswitch_4
    const-string/jumbo v0, "GL_TRIANGLES"

    #@1b
    return-object v0

    #@1c
    .line 599
    :pswitch_5
    const-string/jumbo v0, "GL_TRIANGLE_STRIP"

    #@1f
    return-object v0

    #@20
    .line 601
    :pswitch_6
    const-string/jumbo v0, "GL_TRIANGLE_FAN"

    #@23
    return-object v0

    #@24
    .line 587
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getCap(I)Ljava/lang/String;
    .locals 1
    .param p1, "cap"    # I

    #@0
    .prologue
    .line 436
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 502
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 438
    :sswitch_0
    const-string/jumbo v0, "GL_FOG"

    #@b
    return-object v0

    #@c
    .line 440
    :sswitch_1
    const-string/jumbo v0, "GL_LIGHTING"

    #@f
    return-object v0

    #@10
    .line 442
    :sswitch_2
    const-string/jumbo v0, "GL_TEXTURE_2D"

    #@13
    return-object v0

    #@14
    .line 444
    :sswitch_3
    const-string/jumbo v0, "GL_CULL_FACE"

    #@17
    return-object v0

    #@18
    .line 446
    :sswitch_4
    const-string/jumbo v0, "GL_ALPHA_TEST"

    #@1b
    return-object v0

    #@1c
    .line 448
    :sswitch_5
    const-string/jumbo v0, "GL_BLEND"

    #@1f
    return-object v0

    #@20
    .line 450
    :sswitch_6
    const-string/jumbo v0, "GL_COLOR_LOGIC_OP"

    #@23
    return-object v0

    #@24
    .line 452
    :sswitch_7
    const-string/jumbo v0, "GL_DITHER"

    #@27
    return-object v0

    #@28
    .line 454
    :sswitch_8
    const-string/jumbo v0, "GL_STENCIL_TEST"

    #@2b
    return-object v0

    #@2c
    .line 456
    :sswitch_9
    const-string/jumbo v0, "GL_DEPTH_TEST"

    #@2f
    return-object v0

    #@30
    .line 458
    :sswitch_a
    const-string/jumbo v0, "GL_LIGHT0"

    #@33
    return-object v0

    #@34
    .line 460
    :sswitch_b
    const-string/jumbo v0, "GL_LIGHT1"

    #@37
    return-object v0

    #@38
    .line 462
    :sswitch_c
    const-string/jumbo v0, "GL_LIGHT2"

    #@3b
    return-object v0

    #@3c
    .line 464
    :sswitch_d
    const-string/jumbo v0, "GL_LIGHT3"

    #@3f
    return-object v0

    #@40
    .line 466
    :sswitch_e
    const-string/jumbo v0, "GL_LIGHT4"

    #@43
    return-object v0

    #@44
    .line 468
    :sswitch_f
    const-string/jumbo v0, "GL_LIGHT5"

    #@47
    return-object v0

    #@48
    .line 470
    :sswitch_10
    const-string/jumbo v0, "GL_LIGHT6"

    #@4b
    return-object v0

    #@4c
    .line 472
    :sswitch_11
    const-string/jumbo v0, "GL_LIGHT7"

    #@4f
    return-object v0

    #@50
    .line 474
    :sswitch_12
    const-string/jumbo v0, "GL_POINT_SMOOTH"

    #@53
    return-object v0

    #@54
    .line 476
    :sswitch_13
    const-string/jumbo v0, "GL_LINE_SMOOTH"

    #@57
    return-object v0

    #@58
    .line 478
    :sswitch_14
    const-string/jumbo v0, "GL_COLOR_MATERIAL"

    #@5b
    return-object v0

    #@5c
    .line 480
    :sswitch_15
    const-string/jumbo v0, "GL_NORMALIZE"

    #@5f
    return-object v0

    #@60
    .line 482
    :sswitch_16
    const-string/jumbo v0, "GL_RESCALE_NORMAL"

    #@63
    return-object v0

    #@64
    .line 484
    :sswitch_17
    const-string/jumbo v0, "GL_VERTEX_ARRAY"

    #@67
    return-object v0

    #@68
    .line 486
    :sswitch_18
    const-string/jumbo v0, "GL_NORMAL_ARRAY"

    #@6b
    return-object v0

    #@6c
    .line 488
    :sswitch_19
    const-string/jumbo v0, "GL_COLOR_ARRAY"

    #@6f
    return-object v0

    #@70
    .line 490
    :sswitch_1a
    const-string/jumbo v0, "GL_TEXTURE_COORD_ARRAY"

    #@73
    return-object v0

    #@74
    .line 492
    :sswitch_1b
    const-string/jumbo v0, "GL_MULTISAMPLE"

    #@77
    return-object v0

    #@78
    .line 494
    :sswitch_1c
    const-string/jumbo v0, "GL_SAMPLE_ALPHA_TO_COVERAGE"

    #@7b
    return-object v0

    #@7c
    .line 496
    :sswitch_1d
    const-string/jumbo v0, "GL_SAMPLE_ALPHA_TO_ONE"

    #@7f
    return-object v0

    #@80
    .line 498
    :sswitch_1e
    const-string/jumbo v0, "GL_SAMPLE_COVERAGE"

    #@83
    return-object v0

    #@84
    .line 500
    :sswitch_1f
    const-string/jumbo v0, "GL_SCISSOR_TEST"

    #@87
    return-object v0

    #@88
    .line 436
    :sswitch_data_0
    .sparse-switch
        0xb10 -> :sswitch_12
        0xb20 -> :sswitch_13
        0xb44 -> :sswitch_3
        0xb50 -> :sswitch_1
        0xb57 -> :sswitch_14
        0xb60 -> :sswitch_0
        0xb71 -> :sswitch_9
        0xb90 -> :sswitch_8
        0xba1 -> :sswitch_15
        0xbc0 -> :sswitch_4
        0xbd0 -> :sswitch_7
        0xbe2 -> :sswitch_5
        0xbf2 -> :sswitch_6
        0xc11 -> :sswitch_1f
        0xde1 -> :sswitch_2
        0x4000 -> :sswitch_a
        0x4001 -> :sswitch_b
        0x4002 -> :sswitch_c
        0x4003 -> :sswitch_d
        0x4004 -> :sswitch_e
        0x4005 -> :sswitch_f
        0x4006 -> :sswitch_10
        0x4007 -> :sswitch_11
        0x803a -> :sswitch_16
        0x8074 -> :sswitch_17
        0x8075 -> :sswitch_18
        0x8076 -> :sswitch_19
        0x8078 -> :sswitch_1a
        0x809d -> :sswitch_1b
        0x809e -> :sswitch_1c
        0x809f -> :sswitch_1d
        0x80a0 -> :sswitch_1e
    .end sparse-switch
.end method

.method private getClearBufferMask(I)Ljava/lang/String;
    .locals 2
    .param p1, "mask"    # I

    #@0
    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 276
    .local v0, "b":Ljava/lang/StringBuilder;
    and-int/lit16 v1, p1, 0x100

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 277
    const-string/jumbo v1, "GL_DEPTH_BUFFER_BIT"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 278
    and-int/lit16 p1, p1, -0x101

    #@11
    .line 280
    :cond_0
    and-int/lit16 v1, p1, 0x400

    #@13
    if-eqz v1, :cond_2

    #@15
    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@18
    move-result v1

    #@19
    if-lez v1, :cond_1

    #@1b
    .line 282
    const-string/jumbo v1, " | "

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 284
    :cond_1
    const-string/jumbo v1, "GL_STENCIL_BUFFER_BIT"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 285
    and-int/lit16 p1, p1, -0x401

    #@29
    .line 287
    :cond_2
    and-int/lit16 v1, p1, 0x4000

    #@2b
    if-eqz v1, :cond_4

    #@2d
    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@30
    move-result v1

    #@31
    if-lez v1, :cond_3

    #@33
    .line 289
    const-string/jumbo v1, " | "

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 291
    :cond_3
    const-string/jumbo v1, "GL_COLOR_BUFFER_BIT"

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 292
    and-int/lit16 p1, p1, -0x4001

    #@41
    .line 294
    :cond_4
    if-eqz p1, :cond_6

    #@43
    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@46
    move-result v1

    #@47
    if-lez v1, :cond_5

    #@49
    .line 296
    const-string/jumbo v1, " | "

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 298
    :cond_5
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 300
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    return-object v1
.end method

.method private getClientState(I)Ljava/lang/String;
    .locals 1
    .param p1, "clientState"    # I

    #@0
    .prologue
    .line 421
    packed-switch p1, :pswitch_data_0

    #@3
    .line 431
    :pswitch_0
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 423
    :pswitch_1
    const-string/jumbo v0, "GL_COLOR_ARRAY"

    #@b
    return-object v0

    #@c
    .line 425
    :pswitch_2
    const-string/jumbo v0, "GL_VERTEX_ARRAY"

    #@f
    return-object v0

    #@10
    .line 427
    :pswitch_3
    const-string/jumbo v0, "GL_NORMAL_ARRAY"

    #@13
    return-object v0

    #@14
    .line 429
    :pswitch_4
    const-string/jumbo v0, "GL_TEXTURE_COORD_ARRAY"

    #@17
    return-object v0

    #@18
    .line 421
    :pswitch_data_0
    .packed-switch 0x8074
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 1
    .param p0, "error"    # I

    #@0
    .prologue
    .line 254
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 270
    invoke-static {p0}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 256
    :sswitch_0
    const-string/jumbo v0, "GL_NO_ERROR"

    #@b
    return-object v0

    #@c
    .line 258
    :sswitch_1
    const-string/jumbo v0, "GL_INVALID_ENUM"

    #@f
    return-object v0

    #@10
    .line 260
    :sswitch_2
    const-string/jumbo v0, "GL_INVALID_VALUE"

    #@13
    return-object v0

    #@14
    .line 262
    :sswitch_3
    const-string/jumbo v0, "GL_INVALID_OPERATION"

    #@17
    return-object v0

    #@18
    .line 264
    :sswitch_4
    const-string/jumbo v0, "GL_STACK_OVERFLOW"

    #@1b
    return-object v0

    #@1c
    .line 266
    :sswitch_5
    const-string/jumbo v0, "GL_STACK_UNDERFLOW"

    #@1f
    return-object v0

    #@20
    .line 268
    :sswitch_6
    const-string/jumbo v0, "GL_OUT_OF_MEMORY"

    #@23
    return-object v0

    #@24
    .line 254
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x500 -> :sswitch_1
        0x501 -> :sswitch_2
        0x502 -> :sswitch_3
        0x503 -> :sswitch_4
        0x504 -> :sswitch_5
        0x505 -> :sswitch_6
    .end sparse-switch
.end method

.method private getFaceName(I)Ljava/lang/String;
    .locals 1
    .param p1, "face"    # I

    #@0
    .prologue
    .line 784
    packed-switch p1, :pswitch_data_0

    #@3
    .line 788
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 786
    :pswitch_0
    const-string/jumbo v0, "GL_FRONT_AND_BACK"

    #@b
    return-object v0

    #@c
    .line 784
    :pswitch_data_0
    .packed-switch 0x408
        :pswitch_0
    .end packed-switch
.end method

.method private getFactor(I)Ljava/lang/String;
    .locals 1
    .param p1, "factor"    # I

    #@0
    .prologue
    .line 304
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 329
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 306
    :sswitch_0
    const-string/jumbo v0, "GL_ZERO"

    #@b
    return-object v0

    #@c
    .line 308
    :sswitch_1
    const-string/jumbo v0, "GL_ONE"

    #@f
    return-object v0

    #@10
    .line 310
    :sswitch_2
    const-string/jumbo v0, "GL_SRC_COLOR"

    #@13
    return-object v0

    #@14
    .line 312
    :sswitch_3
    const-string/jumbo v0, "GL_ONE_MINUS_SRC_COLOR"

    #@17
    return-object v0

    #@18
    .line 314
    :sswitch_4
    const-string/jumbo v0, "GL_DST_COLOR"

    #@1b
    return-object v0

    #@1c
    .line 316
    :sswitch_5
    const-string/jumbo v0, "GL_ONE_MINUS_DST_COLOR"

    #@1f
    return-object v0

    #@20
    .line 318
    :sswitch_6
    const-string/jumbo v0, "GL_SRC_ALPHA"

    #@23
    return-object v0

    #@24
    .line 320
    :sswitch_7
    const-string/jumbo v0, "GL_ONE_MINUS_SRC_ALPHA"

    #@27
    return-object v0

    #@28
    .line 322
    :sswitch_8
    const-string/jumbo v0, "GL_DST_ALPHA"

    #@2b
    return-object v0

    #@2c
    .line 324
    :sswitch_9
    const-string/jumbo v0, "GL_ONE_MINUS_DST_ALPHA"

    #@2f
    return-object v0

    #@30
    .line 326
    :sswitch_a
    const-string/jumbo v0, "GL_SRC_ALPHA_SATURATE"

    #@33
    return-object v0

    #@34
    .line 304
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x300 -> :sswitch_2
        0x301 -> :sswitch_3
        0x302 -> :sswitch_6
        0x303 -> :sswitch_7
        0x304 -> :sswitch_8
        0x305 -> :sswitch_9
        0x306 -> :sswitch_4
        0x307 -> :sswitch_5
        0x308 -> :sswitch_a
    .end sparse-switch
.end method

.method private getFogPName(I)Ljava/lang/String;
    .locals 1
    .param p1, "pname"    # I

    #@0
    .prologue
    .line 553
    packed-switch p1, :pswitch_data_0

    #@3
    .line 565
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 555
    :pswitch_0
    const-string/jumbo v0, "GL_FOG_DENSITY"

    #@b
    return-object v0

    #@c
    .line 557
    :pswitch_1
    const-string/jumbo v0, "GL_FOG_START"

    #@f
    return-object v0

    #@10
    .line 559
    :pswitch_2
    const-string/jumbo v0, "GL_FOG_END"

    #@13
    return-object v0

    #@14
    .line 561
    :pswitch_3
    const-string/jumbo v0, "GL_FOG_MODE"

    #@17
    return-object v0

    #@18
    .line 563
    :pswitch_4
    const-string/jumbo v0, "GL_FOG_COLOR"

    #@1b
    return-object v0

    #@1c
    .line 553
    :pswitch_data_0
    .packed-switch 0xb62
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getFogParamCount(I)I
    .locals 1
    .param p1, "pname"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 570
    packed-switch p1, :pswitch_data_0

    #@4
    .line 582
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 572
    :pswitch_0
    return v0

    #@7
    .line 574
    :pswitch_1
    return v0

    #@8
    .line 576
    :pswitch_2
    return v0

    #@9
    .line 578
    :pswitch_3
    return v0

    #@a
    .line 580
    :pswitch_4
    const/4 v0, 0x4

    #@b
    return v0

    #@c
    .line 570
    :pswitch_data_0
    .packed-switch 0xb62
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static getHex(I)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # I

    #@0
    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "0x"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method private getHintMode(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 771
    packed-switch p1, :pswitch_data_0

    #@3
    .line 779
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 773
    :pswitch_0
    const-string/jumbo v0, "GL_FASTEST"

    #@b
    return-object v0

    #@c
    .line 775
    :pswitch_1
    const-string/jumbo v0, "GL_NICEST"

    #@f
    return-object v0

    #@10
    .line 777
    :pswitch_2
    const-string/jumbo v0, "GL_DONT_CARE"

    #@13
    return-object v0

    #@14
    .line 771
    :pswitch_data_0
    .packed-switch 0x1100
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getHintTarget(I)Ljava/lang/String;
    .locals 1
    .param p1, "target"    # I

    #@0
    .prologue
    .line 752
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 766
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 754
    :sswitch_0
    const-string/jumbo v0, "GL_FOG_HINT"

    #@b
    return-object v0

    #@c
    .line 756
    :sswitch_1
    const-string/jumbo v0, "GL_LINE_SMOOTH_HINT"

    #@f
    return-object v0

    #@10
    .line 758
    :sswitch_2
    const-string/jumbo v0, "GL_PERSPECTIVE_CORRECTION_HINT"

    #@13
    return-object v0

    #@14
    .line 760
    :sswitch_3
    const-string/jumbo v0, "GL_POINT_SMOOTH_HINT"

    #@17
    return-object v0

    #@18
    .line 762
    :sswitch_4
    const-string/jumbo v0, "GL_POLYGON_SMOOTH_HINT"

    #@1b
    return-object v0

    #@1c
    .line 764
    :sswitch_5
    const-string/jumbo v0, "GL_GENERATE_MIPMAP_HINT"

    #@1f
    return-object v0

    #@20
    .line 752
    :sswitch_data_0
    .sparse-switch
        0xc50 -> :sswitch_2
        0xc51 -> :sswitch_3
        0xc52 -> :sswitch_1
        0xc53 -> :sswitch_4
        0xc54 -> :sswitch_0
        0x8192 -> :sswitch_5
    .end sparse-switch
.end method

.method private getIndexType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 608
    packed-switch p1, :pswitch_data_0

    #@3
    .line 614
    :pswitch_0
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 610
    :pswitch_1
    const-string/jumbo v0, "GL_UNSIGNED_SHORT"

    #@b
    return-object v0

    #@c
    .line 612
    :pswitch_2
    const-string/jumbo v0, "GL_UNSIGNED_BYTE"

    #@f
    return-object v0

    #@10
    .line 608
    :pswitch_data_0
    .packed-switch 0x1401
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIntegerStateFormat(I)I
    .locals 1
    .param p1, "pname"    # I

    #@0
    .prologue
    .line 740
    packed-switch p1, :pswitch_data_0

    #@3
    .line 747
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 744
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 740
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x898d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getIntegerStateName(I)Ljava/lang/String;
    .locals 1
    .param p1, "pname"    # I

    #@0
    .prologue
    .line 619
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 673
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 621
    :sswitch_0
    const-string/jumbo v0, "GL_ALPHA_BITS"

    #@b
    return-object v0

    #@c
    .line 623
    :sswitch_1
    const-string/jumbo v0, "GL_ALIASED_LINE_WIDTH_RANGE"

    #@f
    return-object v0

    #@10
    .line 625
    :sswitch_2
    const-string/jumbo v0, "GL_ALIASED_POINT_SIZE_RANGE"

    #@13
    return-object v0

    #@14
    .line 627
    :sswitch_3
    const-string/jumbo v0, "GL_BLUE_BITS"

    #@17
    return-object v0

    #@18
    .line 629
    :sswitch_4
    const-string/jumbo v0, "GL_COMPRESSED_TEXTURE_FORMATS"

    #@1b
    return-object v0

    #@1c
    .line 631
    :sswitch_5
    const-string/jumbo v0, "GL_DEPTH_BITS"

    #@1f
    return-object v0

    #@20
    .line 633
    :sswitch_6
    const-string/jumbo v0, "GL_GREEN_BITS"

    #@23
    return-object v0

    #@24
    .line 635
    :sswitch_7
    const-string/jumbo v0, "GL_MAX_ELEMENTS_INDICES"

    #@27
    return-object v0

    #@28
    .line 637
    :sswitch_8
    const-string/jumbo v0, "GL_MAX_ELEMENTS_VERTICES"

    #@2b
    return-object v0

    #@2c
    .line 639
    :sswitch_9
    const-string/jumbo v0, "GL_MAX_LIGHTS"

    #@2f
    return-object v0

    #@30
    .line 641
    :sswitch_a
    const-string/jumbo v0, "GL_MAX_TEXTURE_SIZE"

    #@33
    return-object v0

    #@34
    .line 643
    :sswitch_b
    const-string/jumbo v0, "GL_MAX_VIEWPORT_DIMS"

    #@37
    return-object v0

    #@38
    .line 645
    :sswitch_c
    const-string/jumbo v0, "GL_MAX_MODELVIEW_STACK_DEPTH"

    #@3b
    return-object v0

    #@3c
    .line 647
    :sswitch_d
    const-string/jumbo v0, "GL_MAX_PROJECTION_STACK_DEPTH"

    #@3f
    return-object v0

    #@40
    .line 649
    :sswitch_e
    const-string/jumbo v0, "GL_MAX_TEXTURE_STACK_DEPTH"

    #@43
    return-object v0

    #@44
    .line 651
    :sswitch_f
    const-string/jumbo v0, "GL_MAX_TEXTURE_UNITS"

    #@47
    return-object v0

    #@48
    .line 653
    :sswitch_10
    const-string/jumbo v0, "GL_NUM_COMPRESSED_TEXTURE_FORMATS"

    #@4b
    return-object v0

    #@4c
    .line 655
    :sswitch_11
    const-string/jumbo v0, "GL_RED_BITS"

    #@4f
    return-object v0

    #@50
    .line 657
    :sswitch_12
    const-string/jumbo v0, "GL_SMOOTH_LINE_WIDTH_RANGE"

    #@53
    return-object v0

    #@54
    .line 659
    :sswitch_13
    const-string/jumbo v0, "GL_SMOOTH_POINT_SIZE_RANGE"

    #@57
    return-object v0

    #@58
    .line 661
    :sswitch_14
    const-string/jumbo v0, "GL_STENCIL_BITS"

    #@5b
    return-object v0

    #@5c
    .line 663
    :sswitch_15
    const-string/jumbo v0, "GL_SUBPIXEL_BITS"

    #@5f
    return-object v0

    #@60
    .line 666
    :sswitch_16
    const-string/jumbo v0, "GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES"

    #@63
    return-object v0

    #@64
    .line 668
    :sswitch_17
    const-string/jumbo v0, "GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES"

    #@67
    return-object v0

    #@68
    .line 670
    :sswitch_18
    const-string/jumbo v0, "GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES"

    #@6b
    return-object v0

    #@6c
    .line 619
    :sswitch_data_0
    .sparse-switch
        0xb12 -> :sswitch_13
        0xb22 -> :sswitch_12
        0xd31 -> :sswitch_9
        0xd33 -> :sswitch_a
        0xd36 -> :sswitch_c
        0xd38 -> :sswitch_d
        0xd39 -> :sswitch_e
        0xd3a -> :sswitch_b
        0xd50 -> :sswitch_15
        0xd52 -> :sswitch_11
        0xd53 -> :sswitch_6
        0xd54 -> :sswitch_3
        0xd55 -> :sswitch_0
        0xd56 -> :sswitch_5
        0xd57 -> :sswitch_14
        0x80e8 -> :sswitch_8
        0x80e9 -> :sswitch_7
        0x846d -> :sswitch_2
        0x846e -> :sswitch_1
        0x84e2 -> :sswitch_f
        0x86a2 -> :sswitch_10
        0x86a3 -> :sswitch_4
        0x898d -> :sswitch_16
        0x898e -> :sswitch_17
        0x898f -> :sswitch_18
    .end sparse-switch
.end method

.method private getIntegerStateSize(I)I
    .locals 4
    .param p1, "pname"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x2

    #@2
    const/4 v1, 0x1

    #@3
    .line 678
    sparse-switch p1, :sswitch_data_0

    #@6
    .line 735
    return v3

    #@7
    .line 680
    :sswitch_0
    return v1

    #@8
    .line 682
    :sswitch_1
    return v2

    #@9
    .line 684
    :sswitch_2
    return v2

    #@a
    .line 686
    :sswitch_3
    return v1

    #@b
    .line 690
    :sswitch_4
    new-array v0, v1, [I

    #@d
    .line 691
    .local v0, "buffer":[I
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@f
    const v2, 0x86a2

    #@12
    invoke-interface {v1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    #@15
    .line 692
    aget v1, v0, v3

    #@17
    return v1

    #@18
    .line 695
    .end local v0    # "buffer":[I
    :sswitch_5
    return v1

    #@19
    .line 697
    :sswitch_6
    return v1

    #@1a
    .line 699
    :sswitch_7
    return v1

    #@1b
    .line 701
    :sswitch_8
    return v1

    #@1c
    .line 703
    :sswitch_9
    return v1

    #@1d
    .line 705
    :sswitch_a
    return v1

    #@1e
    .line 707
    :sswitch_b
    return v2

    #@1f
    .line 709
    :sswitch_c
    return v1

    #@20
    .line 711
    :sswitch_d
    return v1

    #@21
    .line 713
    :sswitch_e
    return v1

    #@22
    .line 715
    :sswitch_f
    return v1

    #@23
    .line 717
    :sswitch_10
    return v1

    #@24
    .line 719
    :sswitch_11
    return v1

    #@25
    .line 721
    :sswitch_12
    return v2

    #@26
    .line 723
    :sswitch_13
    return v2

    #@27
    .line 725
    :sswitch_14
    return v1

    #@28
    .line 727
    :sswitch_15
    return v1

    #@29
    .line 732
    :sswitch_16
    const/16 v1, 0x10

    #@2b
    return v1

    #@2c
    .line 678
    :sswitch_data_0
    .sparse-switch
        0xb12 -> :sswitch_13
        0xb22 -> :sswitch_12
        0xd31 -> :sswitch_9
        0xd33 -> :sswitch_a
        0xd36 -> :sswitch_c
        0xd38 -> :sswitch_d
        0xd39 -> :sswitch_e
        0xd3a -> :sswitch_b
        0xd50 -> :sswitch_15
        0xd52 -> :sswitch_11
        0xd53 -> :sswitch_6
        0xd54 -> :sswitch_3
        0xd55 -> :sswitch_0
        0xd56 -> :sswitch_5
        0xd57 -> :sswitch_14
        0x80e8 -> :sswitch_8
        0x80e9 -> :sswitch_7
        0x846d -> :sswitch_2
        0x846e -> :sswitch_1
        0x84e2 -> :sswitch_f
        0x86a2 -> :sswitch_10
        0x86a3 -> :sswitch_4
        0x898d -> :sswitch_16
        0x898e -> :sswitch_16
        0x898f -> :sswitch_16
    .end sparse-switch
.end method

.method private getLightModelPName(I)Ljava/lang/String;
    .locals 1
    .param p1, "pname"    # I

    #@0
    .prologue
    .line 892
    packed-switch p1, :pswitch_data_0

    #@3
    .line 898
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 894
    :pswitch_0
    const-string/jumbo v0, "GL_LIGHT_MODEL_AMBIENT"

    #@b
    return-object v0

    #@c
    .line 896
    :pswitch_1
    const-string/jumbo v0, "GL_LIGHT_MODEL_TWO_SIDE"

    #@f
    return-object v0

    #@10
    .line 892
    :pswitch_data_0
    .packed-switch 0xb52
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLightModelParamCount(I)I
    .locals 1
    .param p1, "pname"    # I

    #@0
    .prologue
    .line 903
    packed-switch p1, :pswitch_data_0

    #@3
    .line 909
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 905
    :pswitch_0
    const/4 v0, 0x4

    #@6
    return v0

    #@7
    .line 907
    :pswitch_1
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 903
    nop

    #@a
    :pswitch_data_0
    .packed-switch 0xb52
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLightName(I)Ljava/lang/String;
    .locals 2
    .param p1, "light"    # I

    #@0
    .prologue
    .line 831
    const/16 v0, 0x4000

    #@2
    if-lt p1, v0, :cond_0

    #@4
    const/16 v0, 0x4007

    #@6
    if-gt p1, v0, :cond_0

    #@8
    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, "GL_LIGHT"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0

    #@21
    .line 834
    :cond_0
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

.method private getLightPName(I)Ljava/lang/String;
    .locals 1
    .param p1, "pname"    # I

    #@0
    .prologue
    .line 838
    packed-switch p1, :pswitch_data_0

    #@3
    .line 860
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 840
    :pswitch_0
    const-string/jumbo v0, "GL_AMBIENT"

    #@b
    return-object v0

    #@c
    .line 842
    :pswitch_1
    const-string/jumbo v0, "GL_DIFFUSE"

    #@f
    return-object v0

    #@10
    .line 844
    :pswitch_2
    const-string/jumbo v0, "GL_SPECULAR"

    #@13
    return-object v0

    #@14
    .line 846
    :pswitch_3
    const-string/jumbo v0, "GL_POSITION"

    #@17
    return-object v0

    #@18
    .line 848
    :pswitch_4
    const-string/jumbo v0, "GL_SPOT_DIRECTION"

    #@1b
    return-object v0

    #@1c
    .line 850
    :pswitch_5
    const-string/jumbo v0, "GL_SPOT_EXPONENT"

    #@1f
    return-object v0

    #@20
    .line 852
    :pswitch_6
    const-string/jumbo v0, "GL_SPOT_CUTOFF"

    #@23
    return-object v0

    #@24
    .line 854
    :pswitch_7
    const-string/jumbo v0, "GL_CONSTANT_ATTENUATION"

    #@27
    return-object v0

    #@28
    .line 856
    :pswitch_8
    const-string/jumbo v0, "GL_LINEAR_ATTENUATION"

    #@2b
    return-object v0

    #@2c
    .line 858
    :pswitch_9
    const-string/jumbo v0, "GL_QUADRATIC_ATTENUATION"

    #@2f
    return-object v0

    #@30
    .line 838
    :pswitch_data_0
    .packed-switch 0x1200
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
    .end packed-switch
.end method

.method private getLightParamCount(I)I
    .locals 2
    .param p1, "pname"    # I

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    const/4 v0, 0x1

    #@2
    .line 865
    packed-switch p1, :pswitch_data_0

    #@5
    .line 887
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 867
    :pswitch_0
    return v1

    #@8
    .line 869
    :pswitch_1
    return v1

    #@9
    .line 871
    :pswitch_2
    return v1

    #@a
    .line 873
    :pswitch_3
    return v1

    #@b
    .line 875
    :pswitch_4
    const/4 v0, 0x3

    #@c
    return v0

    #@d
    .line 877
    :pswitch_5
    return v0

    #@e
    .line 879
    :pswitch_6
    return v0

    #@f
    .line 881
    :pswitch_7
    return v0

    #@10
    .line 883
    :pswitch_8
    return v0

    #@11
    .line 885
    :pswitch_9
    return v0

    #@12
    .line 865
    :pswitch_data_0
    .packed-switch 0x1200
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
    .end packed-switch
.end method

.method private getMaterialPName(I)Ljava/lang/String;
    .locals 1
    .param p1, "pname"    # I

    #@0
    .prologue
    .line 793
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 807
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 795
    :sswitch_0
    const-string/jumbo v0, "GL_AMBIENT"

    #@b
    return-object v0

    #@c
    .line 797
    :sswitch_1
    const-string/jumbo v0, "GL_DIFFUSE"

    #@f
    return-object v0

    #@10
    .line 799
    :sswitch_2
    const-string/jumbo v0, "GL_SPECULAR"

    #@13
    return-object v0

    #@14
    .line 801
    :sswitch_3
    const-string/jumbo v0, "GL_EMISSION"

    #@17
    return-object v0

    #@18
    .line 803
    :sswitch_4
    const-string/jumbo v0, "GL_SHININESS"

    #@1b
    return-object v0

    #@1c
    .line 805
    :sswitch_5
    const-string/jumbo v0, "GL_AMBIENT_AND_DIFFUSE"

    #@1f
    return-object v0

    #@20
    .line 793
    :sswitch_data_0
    .sparse-switch
        0x1200 -> :sswitch_0
        0x1201 -> :sswitch_1
        0x1202 -> :sswitch_2
        0x1600 -> :sswitch_3
        0x1601 -> :sswitch_4
        0x1602 -> :sswitch_5
    .end sparse-switch
.end method

.method private getMaterialParamCount(I)I
    .locals 1
    .param p1, "pname"    # I

    #@0
    .prologue
    const/4 v0, 0x4

    #@1
    .line 812
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 826
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 814
    :sswitch_0
    return v0

    #@7
    .line 816
    :sswitch_1
    return v0

    #@8
    .line 818
    :sswitch_2
    return v0

    #@9
    .line 820
    :sswitch_3
    return v0

    #@a
    .line 822
    :sswitch_4
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 824
    :sswitch_5
    return v0

    #@d
    .line 812
    nop

    #@e
    :sswitch_data_0
    .sparse-switch
        0x1200 -> :sswitch_0
        0x1201 -> :sswitch_1
        0x1202 -> :sswitch_2
        0x1600 -> :sswitch_3
        0x1601 -> :sswitch_4
        0x1602 -> :sswitch_5
    .end sparse-switch
.end method

.method private getMatrixMode(I)Ljava/lang/String;
    .locals 1
    .param p1, "matrixMode"    # I

    #@0
    .prologue
    .line 408
    packed-switch p1, :pswitch_data_0

    #@3
    .line 416
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 410
    :pswitch_0
    const-string/jumbo v0, "GL_MODELVIEW"

    #@b
    return-object v0

    #@c
    .line 412
    :pswitch_1
    const-string/jumbo v0, "GL_PROJECTION"

    #@f
    return-object v0

    #@10
    .line 414
    :pswitch_2
    const-string/jumbo v0, "GL_TEXTURE"

    #@13
    return-object v0

    #@14
    .line 408
    :pswitch_data_0
    .packed-switch 0x1700
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPointerTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 914
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 926
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 916
    :sswitch_0
    const-string/jumbo v0, "GL_BYTE"

    #@b
    return-object v0

    #@c
    .line 918
    :sswitch_1
    const-string/jumbo v0, "GL_UNSIGNED_BYTE"

    #@f
    return-object v0

    #@10
    .line 920
    :sswitch_2
    const-string/jumbo v0, "GL_SHORT"

    #@13
    return-object v0

    #@14
    .line 922
    :sswitch_3
    const-string/jumbo v0, "GL_FIXED"

    #@17
    return-object v0

    #@18
    .line 924
    :sswitch_4
    const-string/jumbo v0, "GL_FLOAT"

    #@1b
    return-object v0

    #@1c
    .line 914
    :sswitch_data_0
    .sparse-switch
        0x1400 -> :sswitch_0
        0x1401 -> :sswitch_1
        0x1402 -> :sswitch_2
        0x1406 -> :sswitch_4
        0x140c -> :sswitch_3
    .end sparse-switch
.end method

.method private getShadeModel(I)Ljava/lang/String;
    .locals 1
    .param p1, "model"    # I

    #@0
    .prologue
    .line 334
    packed-switch p1, :pswitch_data_0

    #@3
    .line 340
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 336
    :pswitch_0
    const-string/jumbo v0, "GL_FLAT"

    #@b
    return-object v0

    #@c
    .line 338
    :pswitch_1
    const-string/jumbo v0, "GL_SMOOTH"

    #@f
    return-object v0

    #@10
    .line 334
    :pswitch_data_0
    .packed-switch 0x1d00
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTextureEnvPName(I)Ljava/lang/String;
    .locals 1
    .param p1, "pname"    # I

    #@0
    .prologue
    .line 363
    packed-switch p1, :pswitch_data_0

    #@3
    .line 369
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 365
    :pswitch_0
    const-string/jumbo v0, "GL_TEXTURE_ENV_MODE"

    #@b
    return-object v0

    #@c
    .line 367
    :pswitch_1
    const-string/jumbo v0, "GL_TEXTURE_ENV_COLOR"

    #@f
    return-object v0

    #@10
    .line 363
    :pswitch_data_0
    .packed-switch 0x2200
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTextureEnvParamCount(I)I
    .locals 1
    .param p1, "pname"    # I

    #@0
    .prologue
    .line 374
    packed-switch p1, :pswitch_data_0

    #@3
    .line 380
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 376
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 378
    :pswitch_1
    const/4 v0, 0x4

    #@8
    return v0

    #@9
    .line 374
    nop

    #@a
    :pswitch_data_0
    .packed-switch 0x2200
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTextureEnvParamName(F)Ljava/lang/String;
    .locals 2
    .param p1, "param"    # F

    #@0
    .prologue
    .line 385
    float-to-int v0, p1

    #@1
    .line 386
    .local v0, "iparam":I
    int-to-float v1, v0

    #@2
    cmpl-float v1, p1, v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 387
    sparse-switch v0, :sswitch_data_0

    #@9
    .line 401
    invoke-static {v0}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 389
    :sswitch_0
    const-string/jumbo v1, "GL_REPLACE"

    #@11
    return-object v1

    #@12
    .line 391
    :sswitch_1
    const-string/jumbo v1, "GL_MODULATE"

    #@15
    return-object v1

    #@16
    .line 393
    :sswitch_2
    const-string/jumbo v1, "GL_DECAL"

    #@19
    return-object v1

    #@1a
    .line 395
    :sswitch_3
    const-string/jumbo v1, "GL_BLEND"

    #@1d
    return-object v1

    #@1e
    .line 397
    :sswitch_4
    const-string/jumbo v1, "GL_ADD"

    #@21
    return-object v1

    #@22
    .line 399
    :sswitch_5
    const-string/jumbo v1, "GL_COMBINE"

    #@25
    return-object v1

    #@26
    .line 404
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    return-object v1

    #@2b
    .line 387
    nop

    #@2c
    :sswitch_data_0
    .sparse-switch
        0x104 -> :sswitch_4
        0xbe2 -> :sswitch_3
        0x1e01 -> :sswitch_0
        0x2100 -> :sswitch_1
        0x2101 -> :sswitch_2
        0x8570 -> :sswitch_5
    .end sparse-switch
.end method

.method private getTextureEnvTarget(I)Ljava/lang/String;
    .locals 1
    .param p1, "target"    # I

    #@0
    .prologue
    .line 354
    packed-switch p1, :pswitch_data_0

    #@3
    .line 358
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 356
    :pswitch_0
    const-string/jumbo v0, "GL_TEXTURE_ENV"

    #@b
    return-object v0

    #@c
    .line 354
    :pswitch_data_0
    .packed-switch 0x2300
        :pswitch_0
    .end packed-switch
.end method

.method private getTexturePName(I)Ljava/lang/String;
    .locals 1
    .param p1, "pname"    # I

    #@0
    .prologue
    .line 507
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 521
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 509
    :sswitch_0
    const-string/jumbo v0, "GL_TEXTURE_MAG_FILTER"

    #@b
    return-object v0

    #@c
    .line 511
    :sswitch_1
    const-string/jumbo v0, "GL_TEXTURE_MIN_FILTER"

    #@f
    return-object v0

    #@10
    .line 513
    :sswitch_2
    const-string/jumbo v0, "GL_TEXTURE_WRAP_S"

    #@13
    return-object v0

    #@14
    .line 515
    :sswitch_3
    const-string/jumbo v0, "GL_TEXTURE_WRAP_T"

    #@17
    return-object v0

    #@18
    .line 517
    :sswitch_4
    const-string/jumbo v0, "GL_GENERATE_MIPMAP"

    #@1b
    return-object v0

    #@1c
    .line 519
    :sswitch_5
    const-string/jumbo v0, "GL_TEXTURE_CROP_RECT_OES"

    #@1f
    return-object v0

    #@20
    .line 507
    :sswitch_data_0
    .sparse-switch
        0x2800 -> :sswitch_0
        0x2801 -> :sswitch_1
        0x2802 -> :sswitch_2
        0x2803 -> :sswitch_3
        0x8191 -> :sswitch_4
        0x8b9d -> :sswitch_5
    .end sparse-switch
.end method

.method private getTextureParamName(F)Ljava/lang/String;
    .locals 2
    .param p1, "param"    # F

    #@0
    .prologue
    .line 526
    float-to-int v0, p1

    #@1
    .line 527
    .local v0, "iparam":I
    int-to-float v1, v0

    #@2
    cmpl-float v1, p1, v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 528
    sparse-switch v0, :sswitch_data_0

    #@9
    .line 546
    invoke-static {v0}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 530
    :sswitch_0
    const-string/jumbo v1, "GL_CLAMP_TO_EDGE"

    #@11
    return-object v1

    #@12
    .line 532
    :sswitch_1
    const-string/jumbo v1, "GL_REPEAT"

    #@15
    return-object v1

    #@16
    .line 534
    :sswitch_2
    const-string/jumbo v1, "GL_NEAREST"

    #@19
    return-object v1

    #@1a
    .line 536
    :sswitch_3
    const-string/jumbo v1, "GL_LINEAR"

    #@1d
    return-object v1

    #@1e
    .line 538
    :sswitch_4
    const-string/jumbo v1, "GL_NEAREST_MIPMAP_NEAREST"

    #@21
    return-object v1

    #@22
    .line 540
    :sswitch_5
    const-string/jumbo v1, "GL_LINEAR_MIPMAP_NEAREST"

    #@25
    return-object v1

    #@26
    .line 542
    :sswitch_6
    const-string/jumbo v1, "GL_NEAREST_MIPMAP_LINEAR"

    #@29
    return-object v1

    #@2a
    .line 544
    :sswitch_7
    const-string/jumbo v1, "GL_LINEAR_MIPMAP_LINEAR"

    #@2d
    return-object v1

    #@2e
    .line 549
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    return-object v1

    #@33
    .line 528
    nop

    #@34
    :sswitch_data_0
    .sparse-switch
        0x2600 -> :sswitch_2
        0x2601 -> :sswitch_3
        0x2700 -> :sswitch_4
        0x2701 -> :sswitch_5
        0x2702 -> :sswitch_6
        0x2703 -> :sswitch_7
        0x2901 -> :sswitch_1
        0x812f -> :sswitch_0
    .end sparse-switch
.end method

.method private getTextureTarget(I)Ljava/lang/String;
    .locals 1
    .param p1, "target"    # I

    #@0
    .prologue
    .line 345
    packed-switch p1, :pswitch_data_0

    #@3
    .line 349
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 347
    :pswitch_0
    const-string/jumbo v0, "GL_TEXTURE_2D"

    #@b
    return-object v0

    #@c
    .line 345
    :pswitch_data_0
    .packed-switch 0xde1
        :pswitch_0
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    :try_start_0
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    #@2
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 61
    :goto_0
    return-void

    #@6
    .line 64
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private logLine(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const/16 v1, 0xa

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    #@16
    .line 57
    return-void
.end method

.method private returns(I)V
    .locals 1
    .param p1, "result"    # I

    #@0
    .prologue
    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    #@7
    .line 114
    return-void
.end method

.method private returns(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    #@0
    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, ") returns "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, ";\n"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    #@1e
    .line 111
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->flush()V

    #@21
    .line 109
    return-void
.end method

.method private startLogIndices()V
    .locals 2

    #@0
    .prologue
    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    #@7
    .line 1165
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    #@9
    const-string/jumbo v1, "\n"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 1166
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->bindArrays()V

    #@12
    .line 1163
    return-void
.end method

.method private toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;
    .locals 24
    .param p1, "byteCount"    # I
    .param p2, "input"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 931
    const/4 v14, 0x0

    #@1
    .line 932
    .local v14, "result":Ljava/nio/ByteBuffer;
    if-gez p1, :cond_1

    #@3
    const/4 v4, 0x1

    #@4
    .line 933
    .local v4, "convertWholeBuffer":Z
    :goto_0
    move-object/from16 v0, p2

    #@6
    instance-of v0, v0, Ljava/nio/ByteBuffer;

    #@8
    move/from16 v21, v0

    #@a
    if-eqz v21, :cond_3

    #@c
    move-object/from16 v6, p2

    #@e
    .line 934
    check-cast v6, Ljava/nio/ByteBuffer;

    #@10
    .line 935
    .local v6, "input2":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    #@13
    move-result v13

    #@14
    .line 936
    .local v13, "position":I
    if-eqz v4, :cond_0

    #@16
    .line 937
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    #@19
    move-result v21

    #@1a
    sub-int p1, v21, v13

    #@1c
    .line 939
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@1f
    move-result-object v21

    #@20
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@23
    move-result-object v22

    #@24
    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@27
    move-result-object v14

    #@28
    .line 940
    .local v14, "result":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    #@29
    .local v5, "i":I
    :goto_1
    move/from16 v0, p1

    #@2b
    if-ge v5, v0, :cond_2

    #@2d
    .line 941
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    #@30
    move-result v21

    #@31
    move/from16 v0, v21

    #@33
    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@36
    .line 940
    add-int/lit8 v5, v5, 0x1

    #@38
    goto :goto_1

    #@39
    .line 932
    .end local v4    # "convertWholeBuffer":Z
    .end local v5    # "i":I
    .end local v6    # "input2":Ljava/nio/ByteBuffer;
    .end local v13    # "position":I
    .local v14, "result":Ljava/nio/ByteBuffer;
    :cond_1
    const/4 v4, 0x0

    #@3a
    .restart local v4    # "convertWholeBuffer":Z
    goto :goto_0

    #@3b
    .line 943
    .restart local v5    # "i":I
    .restart local v6    # "input2":Ljava/nio/ByteBuffer;
    .restart local v13    # "position":I
    .local v14, "result":Ljava/nio/ByteBuffer;
    :cond_2
    invoke-virtual {v6, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@3e
    .line 1019
    .end local v6    # "input2":Ljava/nio/ByteBuffer;
    :goto_2
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    #@41
    .line 1022
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@44
    move-result-object v21

    #@45
    move-object/from16 v0, v21

    #@47
    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@4a
    .line 1023
    return-object v14

    #@4b
    .line 944
    .end local v5    # "i":I
    .end local v13    # "position":I
    .local v14, "result":Ljava/nio/ByteBuffer;
    :cond_3
    move-object/from16 v0, p2

    #@4d
    instance-of v0, v0, Ljava/nio/CharBuffer;

    #@4f
    move/from16 v21, v0

    #@51
    if-eqz v21, :cond_6

    #@53
    move-object/from16 v7, p2

    #@55
    .line 945
    check-cast v7, Ljava/nio/CharBuffer;

    #@57
    .line 946
    .local v7, "input2":Ljava/nio/CharBuffer;
    invoke-virtual {v7}, Ljava/nio/CharBuffer;->position()I

    #@5a
    move-result v13

    #@5b
    .line 947
    .restart local v13    # "position":I
    if-eqz v4, :cond_4

    #@5d
    .line 948
    invoke-virtual {v7}, Ljava/nio/CharBuffer;->limit()I

    #@60
    move-result v21

    #@61
    sub-int v21, v21, v13

    #@63
    mul-int/lit8 p1, v21, 0x2

    #@65
    .line 950
    :cond_4
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@68
    move-result-object v21

    #@69
    invoke-virtual {v7}, Ljava/nio/CharBuffer;->order()Ljava/nio/ByteOrder;

    #@6c
    move-result-object v22

    #@6d
    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@70
    move-result-object v14

    #@71
    .line 951
    .local v14, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    #@74
    move-result-object v15

    #@75
    .line 952
    .local v15, "result2":Ljava/nio/CharBuffer;
    const/4 v5, 0x0

    #@76
    .restart local v5    # "i":I
    :goto_3
    div-int/lit8 v21, p1, 0x2

    #@78
    move/from16 v0, v21

    #@7a
    if-ge v5, v0, :cond_5

    #@7c
    .line 953
    invoke-virtual {v7}, Ljava/nio/CharBuffer;->get()C

    #@7f
    move-result v21

    #@80
    move/from16 v0, v21

    #@82
    invoke-virtual {v15, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    #@85
    .line 952
    add-int/lit8 v5, v5, 0x1

    #@87
    goto :goto_3

    #@88
    .line 955
    :cond_5
    invoke-virtual {v7, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@8b
    goto :goto_2

    #@8c
    .line 956
    .end local v5    # "i":I
    .end local v7    # "input2":Ljava/nio/CharBuffer;
    .end local v13    # "position":I
    .end local v15    # "result2":Ljava/nio/CharBuffer;
    .local v14, "result":Ljava/nio/ByteBuffer;
    :cond_6
    move-object/from16 v0, p2

    #@8e
    instance-of v0, v0, Ljava/nio/ShortBuffer;

    #@90
    move/from16 v21, v0

    #@92
    if-eqz v21, :cond_9

    #@94
    move-object/from16 v12, p2

    #@96
    .line 957
    check-cast v12, Ljava/nio/ShortBuffer;

    #@98
    .line 958
    .local v12, "input2":Ljava/nio/ShortBuffer;
    invoke-virtual {v12}, Ljava/nio/ShortBuffer;->position()I

    #@9b
    move-result v13

    #@9c
    .line 959
    .restart local v13    # "position":I
    if-eqz v4, :cond_7

    #@9e
    .line 960
    invoke-virtual {v12}, Ljava/nio/ShortBuffer;->limit()I

    #@a1
    move-result v21

    #@a2
    sub-int v21, v21, v13

    #@a4
    mul-int/lit8 p1, v21, 0x2

    #@a6
    .line 962
    :cond_7
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@a9
    move-result-object v21

    #@aa
    invoke-virtual {v12}, Ljava/nio/ShortBuffer;->order()Ljava/nio/ByteOrder;

    #@ad
    move-result-object v22

    #@ae
    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@b1
    move-result-object v14

    #@b2
    .line 963
    .local v14, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    #@b5
    move-result-object v20

    #@b6
    .line 964
    .local v20, "result2":Ljava/nio/ShortBuffer;
    const/4 v5, 0x0

    #@b7
    .restart local v5    # "i":I
    :goto_4
    div-int/lit8 v21, p1, 0x2

    #@b9
    move/from16 v0, v21

    #@bb
    if-ge v5, v0, :cond_8

    #@bd
    .line 965
    invoke-virtual {v12}, Ljava/nio/ShortBuffer;->get()S

    #@c0
    move-result v21

    #@c1
    invoke-virtual/range {v20 .. v21}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    #@c4
    .line 964
    add-int/lit8 v5, v5, 0x1

    #@c6
    goto :goto_4

    #@c7
    .line 967
    :cond_8
    invoke-virtual {v12, v13}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    #@ca
    goto/16 :goto_2

    #@cc
    .line 968
    .end local v5    # "i":I
    .end local v12    # "input2":Ljava/nio/ShortBuffer;
    .end local v13    # "position":I
    .end local v20    # "result2":Ljava/nio/ShortBuffer;
    .local v14, "result":Ljava/nio/ByteBuffer;
    :cond_9
    move-object/from16 v0, p2

    #@ce
    instance-of v0, v0, Ljava/nio/IntBuffer;

    #@d0
    move/from16 v21, v0

    #@d2
    if-eqz v21, :cond_c

    #@d4
    move-object/from16 v10, p2

    #@d6
    .line 969
    check-cast v10, Ljava/nio/IntBuffer;

    #@d8
    .line 970
    .local v10, "input2":Ljava/nio/IntBuffer;
    invoke-virtual {v10}, Ljava/nio/IntBuffer;->position()I

    #@db
    move-result v13

    #@dc
    .line 971
    .restart local v13    # "position":I
    if-eqz v4, :cond_a

    #@de
    .line 972
    invoke-virtual {v10}, Ljava/nio/IntBuffer;->limit()I

    #@e1
    move-result v21

    #@e2
    sub-int v21, v21, v13

    #@e4
    mul-int/lit8 p1, v21, 0x4

    #@e6
    .line 974
    :cond_a
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@e9
    move-result-object v21

    #@ea
    invoke-virtual {v10}, Ljava/nio/IntBuffer;->order()Ljava/nio/ByteOrder;

    #@ed
    move-result-object v22

    #@ee
    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@f1
    move-result-object v14

    #@f2
    .line 975
    .local v14, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    #@f5
    move-result-object v18

    #@f6
    .line 976
    .local v18, "result2":Ljava/nio/IntBuffer;
    const/4 v5, 0x0

    #@f7
    .restart local v5    # "i":I
    :goto_5
    div-int/lit8 v21, p1, 0x4

    #@f9
    move/from16 v0, v21

    #@fb
    if-ge v5, v0, :cond_b

    #@fd
    .line 977
    invoke-virtual {v10}, Ljava/nio/IntBuffer;->get()I

    #@100
    move-result v21

    #@101
    move-object/from16 v0, v18

    #@103
    move/from16 v1, v21

    #@105
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    #@108
    .line 976
    add-int/lit8 v5, v5, 0x1

    #@10a
    goto :goto_5

    #@10b
    .line 979
    :cond_b
    invoke-virtual {v10, v13}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    #@10e
    goto/16 :goto_2

    #@110
    .line 980
    .end local v5    # "i":I
    .end local v10    # "input2":Ljava/nio/IntBuffer;
    .end local v13    # "position":I
    .end local v18    # "result2":Ljava/nio/IntBuffer;
    .local v14, "result":Ljava/nio/ByteBuffer;
    :cond_c
    move-object/from16 v0, p2

    #@112
    instance-of v0, v0, Ljava/nio/FloatBuffer;

    #@114
    move/from16 v21, v0

    #@116
    if-eqz v21, :cond_f

    #@118
    move-object/from16 v9, p2

    #@11a
    .line 981
    check-cast v9, Ljava/nio/FloatBuffer;

    #@11c
    .line 982
    .local v9, "input2":Ljava/nio/FloatBuffer;
    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->position()I

    #@11f
    move-result v13

    #@120
    .line 983
    .restart local v13    # "position":I
    if-eqz v4, :cond_d

    #@122
    .line 984
    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->limit()I

    #@125
    move-result v21

    #@126
    sub-int v21, v21, v13

    #@128
    mul-int/lit8 p1, v21, 0x4

    #@12a
    .line 986
    :cond_d
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@12d
    move-result-object v21

    #@12e
    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->order()Ljava/nio/ByteOrder;

    #@131
    move-result-object v22

    #@132
    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@135
    move-result-object v14

    #@136
    .line 987
    .local v14, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    #@139
    move-result-object v17

    #@13a
    .line 988
    .local v17, "result2":Ljava/nio/FloatBuffer;
    const/4 v5, 0x0

    #@13b
    .restart local v5    # "i":I
    :goto_6
    div-int/lit8 v21, p1, 0x4

    #@13d
    move/from16 v0, v21

    #@13f
    if-ge v5, v0, :cond_e

    #@141
    .line 989
    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->get()F

    #@144
    move-result v21

    #@145
    move-object/from16 v0, v17

    #@147
    move/from16 v1, v21

    #@149
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    #@14c
    .line 988
    add-int/lit8 v5, v5, 0x1

    #@14e
    goto :goto_6

    #@14f
    .line 991
    :cond_e
    invoke-virtual {v9, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    #@152
    goto/16 :goto_2

    #@154
    .line 992
    .end local v5    # "i":I
    .end local v9    # "input2":Ljava/nio/FloatBuffer;
    .end local v13    # "position":I
    .end local v17    # "result2":Ljava/nio/FloatBuffer;
    .local v14, "result":Ljava/nio/ByteBuffer;
    :cond_f
    move-object/from16 v0, p2

    #@156
    instance-of v0, v0, Ljava/nio/DoubleBuffer;

    #@158
    move/from16 v21, v0

    #@15a
    if-eqz v21, :cond_12

    #@15c
    move-object/from16 v8, p2

    #@15e
    .line 993
    check-cast v8, Ljava/nio/DoubleBuffer;

    #@160
    .line 994
    .local v8, "input2":Ljava/nio/DoubleBuffer;
    invoke-virtual {v8}, Ljava/nio/DoubleBuffer;->position()I

    #@163
    move-result v13

    #@164
    .line 995
    .restart local v13    # "position":I
    if-eqz v4, :cond_10

    #@166
    .line 996
    invoke-virtual {v8}, Ljava/nio/DoubleBuffer;->limit()I

    #@169
    move-result v21

    #@16a
    sub-int v21, v21, v13

    #@16c
    mul-int/lit8 p1, v21, 0x8

    #@16e
    .line 998
    :cond_10
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@171
    move-result-object v21

    #@172
    invoke-virtual {v8}, Ljava/nio/DoubleBuffer;->order()Ljava/nio/ByteOrder;

    #@175
    move-result-object v22

    #@176
    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@179
    move-result-object v14

    #@17a
    .line 999
    .local v14, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    #@17d
    move-result-object v16

    #@17e
    .line 1000
    .local v16, "result2":Ljava/nio/DoubleBuffer;
    const/4 v5, 0x0

    #@17f
    .restart local v5    # "i":I
    :goto_7
    div-int/lit8 v21, p1, 0x8

    #@181
    move/from16 v0, v21

    #@183
    if-ge v5, v0, :cond_11

    #@185
    .line 1001
    invoke-virtual {v8}, Ljava/nio/DoubleBuffer;->get()D

    #@188
    move-result-wide v22

    #@189
    move-object/from16 v0, v16

    #@18b
    move-wide/from16 v1, v22

    #@18d
    invoke-virtual {v0, v1, v2}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    #@190
    .line 1000
    add-int/lit8 v5, v5, 0x1

    #@192
    goto :goto_7

    #@193
    .line 1003
    :cond_11
    invoke-virtual {v8, v13}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    #@196
    goto/16 :goto_2

    #@198
    .line 1004
    .end local v5    # "i":I
    .end local v8    # "input2":Ljava/nio/DoubleBuffer;
    .end local v13    # "position":I
    .end local v16    # "result2":Ljava/nio/DoubleBuffer;
    .local v14, "result":Ljava/nio/ByteBuffer;
    :cond_12
    move-object/from16 v0, p2

    #@19a
    instance-of v0, v0, Ljava/nio/LongBuffer;

    #@19c
    move/from16 v21, v0

    #@19e
    if-eqz v21, :cond_15

    #@1a0
    move-object/from16 v11, p2

    #@1a2
    .line 1005
    check-cast v11, Ljava/nio/LongBuffer;

    #@1a4
    .line 1006
    .local v11, "input2":Ljava/nio/LongBuffer;
    invoke-virtual {v11}, Ljava/nio/LongBuffer;->position()I

    #@1a7
    move-result v13

    #@1a8
    .line 1007
    .restart local v13    # "position":I
    if-eqz v4, :cond_13

    #@1aa
    .line 1008
    invoke-virtual {v11}, Ljava/nio/LongBuffer;->limit()I

    #@1ad
    move-result v21

    #@1ae
    sub-int v21, v21, v13

    #@1b0
    mul-int/lit8 p1, v21, 0x8

    #@1b2
    .line 1010
    :cond_13
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@1b5
    move-result-object v21

    #@1b6
    invoke-virtual {v11}, Ljava/nio/LongBuffer;->order()Ljava/nio/ByteOrder;

    #@1b9
    move-result-object v22

    #@1ba
    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@1bd
    move-result-object v14

    #@1be
    .line 1011
    .local v14, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    #@1c1
    move-result-object v19

    #@1c2
    .line 1012
    .local v19, "result2":Ljava/nio/LongBuffer;
    const/4 v5, 0x0

    #@1c3
    .restart local v5    # "i":I
    :goto_8
    div-int/lit8 v21, p1, 0x8

    #@1c5
    move/from16 v0, v21

    #@1c7
    if-ge v5, v0, :cond_14

    #@1c9
    .line 1013
    invoke-virtual {v11}, Ljava/nio/LongBuffer;->get()J

    #@1cc
    move-result-wide v22

    #@1cd
    move-object/from16 v0, v19

    #@1cf
    move-wide/from16 v1, v22

    #@1d1
    invoke-virtual {v0, v1, v2}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    #@1d4
    .line 1012
    add-int/lit8 v5, v5, 0x1

    #@1d6
    goto :goto_8

    #@1d7
    .line 1015
    :cond_14
    invoke-virtual {v11, v13}, Ljava/nio/LongBuffer;->position(I)Ljava/nio/Buffer;

    #@1da
    goto/16 :goto_2

    #@1dc
    .line 1017
    .end local v5    # "i":I
    .end local v11    # "input2":Ljava/nio/LongBuffer;
    .end local v13    # "position":I
    .end local v19    # "result2":Ljava/nio/LongBuffer;
    .local v14, "result":Ljava/nio/ByteBuffer;
    :cond_15
    new-instance v21, Ljava/lang/RuntimeException;

    #@1de
    const-string/jumbo v22, "Unimplemented Buffer subclass."

    #@1e1
    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1e4
    throw v21
.end method

.method private toCharIndices(IILjava/nio/Buffer;)[C
    .locals 8
    .param p1, "count"    # I
    .param p2, "type"    # I
    .param p3, "indices"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 1027
    new-array v6, p1, [C

    #@2
    .line 1028
    .local v6, "result":[C
    packed-switch p2, :pswitch_data_0

    #@5
    .line 1057
    :cond_0
    :goto_0
    :pswitch_0
    return-object v6

    #@6
    .line 1030
    :pswitch_1
    invoke-direct {p0, p1, p3}, Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    #@9
    move-result-object v1

    #@a
    .line 1031
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    #@d
    move-result-object v0

    #@e
    .line 1032
    .local v0, "array":[B
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@11
    move-result v4

    #@12
    .line 1033
    .local v4, "offset":I
    const/4 v3, 0x0

    #@13
    .local v3, "i":I
    :goto_1
    if-ge v3, p1, :cond_0

    #@15
    .line 1034
    add-int v7, v4, v3

    #@17
    aget-byte v7, v0, v7

    #@19
    and-int/lit16 v7, v7, 0xff

    #@1b
    int-to-char v7, v7

    #@1c
    aput-char v7, v6, v3

    #@1e
    .line 1033
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_1

    #@21
    .line 1040
    .end local v0    # "array":[B
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "i":I
    .end local v4    # "offset":I
    :pswitch_2
    instance-of v7, p3, Ljava/nio/CharBuffer;

    #@23
    if-eqz v7, :cond_1

    #@25
    move-object v2, p3

    #@26
    .line 1041
    check-cast v2, Ljava/nio/CharBuffer;

    #@28
    .line 1046
    .local v2, "charBuffer":Ljava/nio/CharBuffer;
    :goto_2
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    #@2b
    move-result v5

    #@2c
    .line 1047
    .local v5, "oldPosition":I
    const/4 v7, 0x0

    #@2d
    invoke-virtual {v2, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@30
    .line 1048
    invoke-virtual {v2, v6}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    #@33
    .line 1049
    invoke-virtual {v2, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@36
    goto :goto_0

    #@37
    .line 1043
    .end local v2    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v5    # "oldPosition":I
    :cond_1
    mul-int/lit8 v7, p1, 0x2

    #@39
    invoke-direct {p0, v7, p3}, Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    #@3c
    move-result-object v1

    #@3d
    .line 1044
    .restart local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    #@40
    move-result-object v2

    #@41
    .restart local v2    # "charBuffer":Ljava/nio/CharBuffer;
    goto :goto_2

    #@42
    .line 1028
    :pswitch_data_0
    .packed-switch 0x1401
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private toString(IILjava/nio/IntBuffer;)Ljava/lang/String;
    .locals 4
    .param p1, "n"    # I
    .param p2, "format"    # I
    .param p3, "buf"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 210
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{\n"

    #@8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 211
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    #@e
    .line 212
    const-string/jumbo v2, " ["

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    const-string/jumbo v3, "] = "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 213
    invoke-virtual {p3, v1}, Ljava/nio/IntBuffer;->get(I)I

    #@22
    move-result v2

    #@23
    invoke-direct {p0, v0, v2, p2}, Landroid/opengl/GLLogWrapper;->formattedAppend(Ljava/lang/StringBuilder;II)V

    #@26
    .line 214
    const/16 v2, 0xa

    #@28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    .line 211
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 216
    :cond_0
    const-string/jumbo v2, "}"

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    return-object v2
.end method

.method private toString(II[II)Ljava/lang/String;
    .locals 6
    .param p1, "n"    # I
    .param p2, "format"    # I
    .param p3, "arr"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 146
    .local v1, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "{\n"

    #@8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 147
    array-length v0, p3

    #@c
    .line 148
    .local v0, "arrLen":I
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    #@f
    .line 149
    add-int v3, p4, v2

    #@11
    .line 150
    .local v3, "index":I
    const-string/jumbo v4, " ["

    #@14
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    const-string/jumbo v5, "] = "

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 151
    if-ltz v3, :cond_0

    #@24
    if-lt v3, v0, :cond_1

    #@26
    .line 152
    :cond_0
    const-string/jumbo v4, "out of bounds"

    #@29
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 156
    :goto_1
    const/16 v4, 0xa

    #@2e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 148
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 154
    :cond_1
    aget v4, p3, v3

    #@36
    invoke-direct {p0, v1, v4, p2}, Landroid/opengl/GLLogWrapper;->formattedAppend(Ljava/lang/StringBuilder;II)V

    #@39
    goto :goto_1

    #@3a
    .line 158
    .end local v3    # "index":I
    :cond_2
    const-string/jumbo v4, "}"

    #@3d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    return-object v4
.end method

.method private toString(ILjava/nio/FloatBuffer;)Ljava/lang/String;
    .locals 4
    .param p1, "n"    # I
    .param p2, "buf"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 200
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{\n"

    #@8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 201
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    #@e
    .line 202
    const-string/jumbo v2, " ["

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    const-string/jumbo v3, "] = "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->get(I)F

    #@23
    move-result v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    const/16 v3, 0xa

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    .line 201
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 204
    :cond_0
    const-string/jumbo v2, "}"

    #@33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    return-object v2
.end method

.method private toString(ILjava/nio/ShortBuffer;)Ljava/lang/String;
    .locals 4
    .param p1, "n"    # I
    .param p2, "buf"    # Ljava/nio/ShortBuffer;

    #@0
    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 222
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{\n"

    #@8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 223
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    #@e
    .line 224
    const-string/jumbo v2, " ["

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    const-string/jumbo v3, "] = "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {p2, v1}, Ljava/nio/ShortBuffer;->get(I)S

    #@23
    move-result v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    const/16 v3, 0xa

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    .line 223
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 226
    :cond_0
    const-string/jumbo v2, "}"

    #@33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    return-object v2
.end method

.method private toString(I[FI)Ljava/lang/String;
    .locals 6
    .param p1, "n"    # I
    .param p2, "arr"    # [F
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 182
    .local v1, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "{\n"

    #@8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 183
    array-length v0, p2

    #@c
    .line 184
    .local v0, "arrLen":I
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    #@f
    .line 185
    add-int v3, p3, v2

    #@11
    .line 186
    .local v3, "index":I
    const-string/jumbo v4, "["

    #@14
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    const-string/jumbo v5, "] = "

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 187
    if-ltz v3, :cond_0

    #@24
    if-lt v3, v0, :cond_1

    #@26
    .line 188
    :cond_0
    const-string/jumbo v4, "out of bounds"

    #@29
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 192
    :goto_1
    const/16 v4, 0xa

    #@2e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 184
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 190
    :cond_1
    aget v4, p2, v3

    #@36
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@39
    goto :goto_1

    #@3a
    .line 194
    .end local v3    # "index":I
    :cond_2
    const-string/jumbo v4, "}"

    #@3d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    return-object v4
.end method

.method private toString(I[SI)Ljava/lang/String;
    .locals 6
    .param p1, "n"    # I
    .param p2, "arr"    # [S
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 164
    .local v1, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "{\n"

    #@8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 165
    array-length v0, p2

    #@c
    .line 166
    .local v0, "arrLen":I
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    #@f
    .line 167
    add-int v3, p3, v2

    #@11
    .line 168
    .local v3, "index":I
    const-string/jumbo v4, " ["

    #@14
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    const-string/jumbo v5, "] = "

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 169
    if-ltz v3, :cond_0

    #@24
    if-lt v3, v0, :cond_1

    #@26
    .line 170
    :cond_0
    const-string/jumbo v4, "out of bounds"

    #@29
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 174
    :goto_1
    const/16 v4, 0xa

    #@2e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 166
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 172
    :cond_1
    aget-short v4, p2, v3

    #@36
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    goto :goto_1

    #@3a
    .line 176
    .end local v3    # "index":I
    :cond_2
    const-string/jumbo v4, "}"

    #@3d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    return-object v4
.end method

.method private unbindArrays()V
    .locals 1

    #@0
    .prologue
    .line 1153
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1154
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    #@6
    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    #@9
    .line 1155
    :cond_0
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1156
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    #@f
    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    #@12
    .line 1157
    :cond_1
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 1158
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    #@18
    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    #@1b
    .line 1159
    :cond_2
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    #@1d
    if-eqz v0, :cond_3

    #@1f
    .line 1160
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    #@21
    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    #@24
    .line 1152
    :cond_3
    return-void
.end method


# virtual methods
.method public glActiveTexture(I)V
    .locals 1
    .param p1, "texture"    # I

    #@0
    .prologue
    .line 1178
    const-string/jumbo v0, "glActiveTexture"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1179
    const-string/jumbo v0, "texture"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1180
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 1181
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@11
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    #@14
    .line 1182
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@17
    .line 1177
    return-void
.end method

.method public glAlphaFunc(IF)V
    .locals 1
    .param p1, "func"    # I
    .param p2, "ref"    # F

    #@0
    .prologue
    .line 1186
    const-string/jumbo v0, "glAlphaFunc"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1187
    const-string/jumbo v0, "func"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1188
    const-string/jumbo v0, "ref"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@12
    .line 1189
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@15
    .line 1190
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@17
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    #@1a
    .line 1191
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1d
    .line 1185
    return-void
.end method

.method public glAlphaFuncx(II)V
    .locals 1
    .param p1, "func"    # I
    .param p2, "ref"    # I

    #@0
    .prologue
    .line 1195
    const-string/jumbo v0, "glAlphaFuncx"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1196
    const-string/jumbo v0, "func"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1197
    const-string/jumbo v0, "ref"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 1198
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@15
    .line 1199
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@17
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFuncx(II)V

    #@1a
    .line 1200
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1d
    .line 1194
    return-void
.end method

.method public glBindBuffer(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "buffer"    # I

    #@0
    .prologue
    .line 2771
    const-string/jumbo v0, "glBindBuffer"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2772
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2773
    const-string/jumbo v0, "buffer"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2774
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@15
    .line 2775
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@17
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    #@1a
    .line 2776
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1d
    .line 2770
    return-void
.end method

.method public glBindFramebufferOES(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "framebuffer"    # I

    #@0
    .prologue
    .line 3452
    const-string/jumbo v0, "glBindFramebufferOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3453
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3454
    const-string/jumbo v0, "framebuffer"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3455
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@15
    .line 3456
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@17
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    #@1a
    .line 3457
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1d
    .line 3451
    return-void
.end method

.method public glBindRenderbufferOES(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "renderbuffer"    # I

    #@0
    .prologue
    .line 3462
    const-string/jumbo v0, "glBindRenderbufferOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3463
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3464
    const-string/jumbo v0, "renderbuffer"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3465
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@15
    .line 3466
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@17
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindRenderbufferOES(II)V

    #@1a
    .line 3467
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1d
    .line 3461
    return-void
.end method

.method public glBindTexture(II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "texture"    # I

    #@0
    .prologue
    .line 1204
    const-string/jumbo v0, "glBindTexture"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1205
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1206
    const-string/jumbo v0, "texture"

    #@13
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@16
    .line 1207
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@19
    .line 1208
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1b
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    #@1e
    .line 1209
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@21
    .line 1203
    return-void
.end method

.method public glBlendEquation(I)V
    .locals 1
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 3472
    const-string/jumbo v0, "glBlendEquation"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3473
    const-string/jumbo v0, "mode"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3474
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 3475
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@11
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBlendEquation(I)V

    #@14
    .line 3476
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@17
    .line 3471
    return-void
.end method

.method public glBlendEquationSeparate(II)V
    .locals 1
    .param p1, "modeRGB"    # I
    .param p2, "modeAlpha"    # I

    #@0
    .prologue
    .line 3481
    const-string/jumbo v0, "glBlendEquationSeparate"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3482
    const-string/jumbo v0, "modeRGB"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3483
    const-string/jumbo v0, "modeAlpha"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3484
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@15
    .line 3485
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@17
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBlendEquationSeparate(II)V

    #@1a
    .line 3486
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1d
    .line 3480
    return-void
.end method

.method public glBlendFunc(II)V
    .locals 2
    .param p1, "sfactor"    # I
    .param p2, "dfactor"    # I

    #@0
    .prologue
    .line 1213
    const-string/jumbo v0, "glBlendFunc"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1214
    const-string/jumbo v0, "sfactor"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFactor(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1215
    const-string/jumbo v0, "dfactor"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getFactor(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 1216
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1d
    .line 1218
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1f
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    #@22
    .line 1219
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@25
    .line 1212
    return-void
.end method

.method public glBlendFuncSeparate(IIII)V
    .locals 1
    .param p1, "srcRGB"    # I
    .param p2, "dstRGB"    # I
    .param p3, "srcAlpha"    # I
    .param p4, "dstAlpha"    # I

    #@0
    .prologue
    .line 3492
    const-string/jumbo v0, "glBlendFuncSeparate"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3493
    const-string/jumbo v0, "srcRGB"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3494
    const-string/jumbo v0, "dstRGB"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3495
    const-string/jumbo v0, "srcAlpha"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 3496
    const-string/jumbo v0, "dstAlpha"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 3497
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@21
    .line 3498
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@23
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBlendFuncSeparate(IIII)V

    #@26
    .line 3499
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@29
    .line 3491
    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "size"    # I
    .param p3, "data"    # Ljava/nio/Buffer;
    .param p4, "usage"    # I

    #@0
    .prologue
    .line 2780
    const-string/jumbo v0, "glBufferData"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2781
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2782
    const-string/jumbo v0, "size"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2783
    const-string/jumbo v0, "data"

    #@15
    invoke-virtual {p3}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 2784
    const-string/jumbo v0, "usage"

    #@1f
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 2785
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 2786
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    #@2a
    .line 2787
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 2779
    return-void
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "data"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 2791
    const-string/jumbo v0, "glBufferSubData"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2792
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2793
    const-string/jumbo v0, "offset"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2794
    const-string/jumbo v0, "size"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 2795
    const-string/jumbo v0, "data"

    #@1b
    invoke-virtual {p4}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 2796
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 2797
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    #@2a
    .line 2798
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 2790
    return-void
.end method

.method public glCheckFramebufferStatusOES(I)I
    .locals 2
    .param p1, "target"    # I

    #@0
    .prologue
    .line 3504
    const-string/jumbo v1, "glCheckFramebufferStatusOES"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3505
    const-string/jumbo v1, "target"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3506
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 3507
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@11
    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    #@14
    move-result v0

    #@15
    .line 3508
    .local v0, "result":I
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@18
    .line 3509
    return v0
.end method

.method public glClear(I)V
    .locals 2
    .param p1, "mask"    # I

    #@0
    .prologue
    .line 1223
    const-string/jumbo v0, "glClear"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1224
    const-string/jumbo v0, "mask"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getClearBufferMask(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1225
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@13
    .line 1227
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@15
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    #@18
    .line 1228
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1b
    .line 1222
    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    #@0
    .prologue
    .line 1232
    const-string/jumbo v0, "glClearColor"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1233
    const-string/jumbo v0, "red"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@c
    .line 1234
    const-string/jumbo v0, "green"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@12
    .line 1235
    const-string/jumbo v0, "blue"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@18
    .line 1236
    const-string/jumbo v0, "alpha"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@1e
    .line 1237
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@21
    .line 1239
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@23
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    #@26
    .line 1240
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@29
    .line 1231
    return-void
.end method

.method public glClearColorx(IIII)V
    .locals 1
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "alpha"    # I

    #@0
    .prologue
    .line 1244
    const-string/jumbo v0, "glClearColor"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1245
    const-string/jumbo v0, "red"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1246
    const-string/jumbo v0, "green"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 1247
    const-string/jumbo v0, "blue"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 1248
    const-string/jumbo v0, "alpha"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 1249
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@21
    .line 1251
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@23
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    #@26
    .line 1252
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@29
    .line 1243
    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1
    .param p1, "depth"    # F

    #@0
    .prologue
    .line 1256
    const-string/jumbo v0, "glClearDepthf"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1257
    const-string/jumbo v0, "depth"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@c
    .line 1258
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 1260
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@11
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    #@14
    .line 1261
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@17
    .line 1255
    return-void
.end method

.method public glClearDepthx(I)V
    .locals 1
    .param p1, "depth"    # I

    #@0
    .prologue
    .line 1265
    const-string/jumbo v0, "glClearDepthx"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1266
    const-string/jumbo v0, "depth"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1267
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 1269
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@11
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthx(I)V

    #@14
    .line 1270
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@17
    .line 1264
    return-void
.end method

.method public glClearStencil(I)V
    .locals 1
    .param p1, "s"    # I

    #@0
    .prologue
    .line 1274
    const-string/jumbo v0, "glClearStencil"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1275
    const-string/jumbo v0, "s"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1276
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 1278
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@11
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    #@14
    .line 1279
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@17
    .line 1273
    return-void
.end method

.method public glClientActiveTexture(I)V
    .locals 1
    .param p1, "texture"    # I

    #@0
    .prologue
    .line 1283
    const-string/jumbo v0, "glClientActiveTexture"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1284
    const-string/jumbo v0, "texture"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1285
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 1287
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@11
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    #@14
    .line 1288
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@17
    .line 1282
    return-void
.end method

.method public glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "plane"    # I
    .param p2, "equation"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 2597
    const-string/jumbo v0, "glClipPlanef"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2598
    const-string/jumbo v0, "plane"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2599
    const-string/jumbo v0, "equation"

    #@f
    const/4 v1, 0x4

    #@10
    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    #@13
    .line 2600
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@16
    .line 2601
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@18
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    #@1b
    .line 2602
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1e
    .line 2596
    return-void
.end method

.method public glClipPlanef(I[FI)V
    .locals 2
    .param p1, "plane"    # I
    .param p2, "equation"    # [F
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 2587
    const-string/jumbo v0, "glClipPlanef"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2588
    const-string/jumbo v0, "plane"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2589
    const-string/jumbo v0, "equation"

    #@f
    const/4 v1, 0x4

    #@10
    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    #@13
    .line 2590
    const-string/jumbo v0, "offset"

    #@16
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@19
    .line 2591
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1c
    .line 2592
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@1e
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(I[FI)V

    #@21
    .line 2593
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@24
    .line 2586
    return-void
.end method

.method public glClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "plane"    # I
    .param p2, "equation"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 2616
    const-string/jumbo v0, "glClipPlanef"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2617
    const-string/jumbo v0, "plane"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2618
    const-string/jumbo v0, "equation"

    #@f
    const/4 v1, 0x4

    #@10
    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    #@13
    .line 2619
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@16
    .line 2620
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@18
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(ILjava/nio/IntBuffer;)V

    #@1b
    .line 2621
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1e
    .line 2615
    return-void
.end method

.method public glClipPlanex(I[II)V
    .locals 2
    .param p1, "plane"    # I
    .param p2, "equation"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 2606
    const-string/jumbo v0, "glClipPlanex"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2607
    const-string/jumbo v0, "plane"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2608
    const-string/jumbo v0, "equation"

    #@f
    const/4 v1, 0x4

    #@10
    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    #@13
    .line 2609
    const-string/jumbo v0, "offset"

    #@16
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@19
    .line 2610
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1c
    .line 2611
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@1e
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(I[II)V

    #@21
    .line 2612
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@24
    .line 2605
    return-void
.end method

.method public glColor4f(FFFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    #@0
    .prologue
    .line 1292
    const-string/jumbo v0, "glColor4f"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1293
    const-string/jumbo v0, "red"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@c
    .line 1294
    const-string/jumbo v0, "green"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@12
    .line 1295
    const-string/jumbo v0, "blue"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@18
    .line 1296
    const-string/jumbo v0, "alpha"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@1e
    .line 1297
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@21
    .line 1299
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@23
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    #@26
    .line 1300
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@29
    .line 1291
    return-void
.end method

.method public glColor4ub(BBBB)V
    .locals 1
    .param p1, "red"    # B
    .param p2, "green"    # B
    .param p3, "blue"    # B
    .param p4, "alpha"    # B

    #@0
    .prologue
    .line 2802
    const-string/jumbo v0, "glColor4ub"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2803
    const-string/jumbo v0, "red"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2804
    const-string/jumbo v0, "green"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2805
    const-string/jumbo v0, "blue"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 2806
    const-string/jumbo v0, "alpha"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 2807
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@21
    .line 2808
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@23
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColor4ub(BBBB)V

    #@26
    .line 2809
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@29
    .line 2801
    return-void
.end method

.method public glColor4x(IIII)V
    .locals 1
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "alpha"    # I

    #@0
    .prologue
    .line 1304
    const-string/jumbo v0, "glColor4x"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1305
    const-string/jumbo v0, "red"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1306
    const-string/jumbo v0, "green"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 1307
    const-string/jumbo v0, "blue"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 1308
    const-string/jumbo v0, "alpha"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 1309
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@21
    .line 1311
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@23
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    #@26
    .line 1312
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@29
    .line 1303
    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1
    .param p1, "red"    # Z
    .param p2, "green"    # Z
    .param p3, "blue"    # Z
    .param p4, "alpha"    # Z

    #@0
    .prologue
    .line 1317
    const-string/jumbo v0, "glColorMask"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1318
    const-string/jumbo v0, "red"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    #@c
    .line 1319
    const-string/jumbo v0, "green"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    #@12
    .line 1320
    const-string/jumbo v0, "blue"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    #@18
    .line 1321
    const-string/jumbo v0, "alpha"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    #@1e
    .line 1322
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@21
    .line 1324
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@23
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    #@26
    .line 1325
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@29
    .line 1316
    return-void
.end method

.method public glColorPointer(IIII)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3335
    const-string/jumbo v0, "glColorPointer"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3336
    const-string/jumbo v0, "size"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3337
    const-string/jumbo v0, "type"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3338
    const-string/jumbo v0, "stride"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 3339
    const-string/jumbo v0, "offset"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 3340
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@21
    .line 3341
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@23
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    #@26
    .line 3342
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@29
    .line 3334
    return-void
.end method

.method public glColorPointer(IIILjava/nio/Buffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 1329
    const-string/jumbo v0, "glColorPointer"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1330
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    #@9
    .line 1331
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@c
    .line 1332
    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    #@e
    move-object v1, p0

    #@f
    move v2, p1

    #@10
    move v3, p2

    #@11
    move v4, p3

    #@12
    move-object v5, p4

    #@13
    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    #@16
    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    #@18
    .line 1334
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1a
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    #@1d
    .line 1335
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@20
    .line 1328
    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "imageSize"    # I
    .param p8, "data"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 1341
    const-string/jumbo v1, "glCompressedTexImage2D"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1342
    const-string/jumbo v1, "target"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1343
    const-string/jumbo v1, "level"

    #@13
    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@16
    .line 1344
    const-string/jumbo v1, "internalformat"

    #@19
    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1c
    .line 1345
    const-string/jumbo v1, "width"

    #@1f
    invoke-direct {p0, v1, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 1346
    const-string/jumbo v1, "height"

    #@25
    invoke-direct {p0, v1, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@28
    .line 1347
    const-string/jumbo v1, "border"

    #@2b
    move/from16 v0, p6

    #@2d
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@30
    .line 1348
    const-string/jumbo v1, "imageSize"

    #@33
    move/from16 v0, p7

    #@35
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@38
    .line 1349
    const-string/jumbo v1, "data"

    #@3b
    invoke-virtual/range {p8 .. p8}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@42
    .line 1350
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@45
    .line 1352
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@47
    move v2, p1

    #@48
    move v3, p2

    #@49
    move v4, p3

    #@4a
    move v5, p4

    #@4b
    move v6, p5

    #@4c
    move/from16 v7, p6

    #@4e
    move/from16 v8, p7

    #@50
    move-object/from16 v9, p8

    #@52
    invoke-interface/range {v1 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    #@55
    .line 1354
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@58
    .line 1340
    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 11
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "format"    # I
    .param p8, "imageSize"    # I
    .param p9, "data"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 1360
    const-string/jumbo v1, "glCompressedTexSubImage2D"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1361
    const-string/jumbo v1, "target"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1362
    const-string/jumbo v1, "level"

    #@13
    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@16
    .line 1363
    const-string/jumbo v1, "xoffset"

    #@19
    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1c
    .line 1364
    const-string/jumbo v1, "yoffset"

    #@1f
    invoke-direct {p0, v1, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 1365
    const-string/jumbo v1, "width"

    #@25
    move/from16 v0, p5

    #@27
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@2a
    .line 1366
    const-string/jumbo v1, "height"

    #@2d
    move/from16 v0, p6

    #@2f
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@32
    .line 1367
    const-string/jumbo v1, "format"

    #@35
    move/from16 v0, p7

    #@37
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@3a
    .line 1368
    const-string/jumbo v1, "imageSize"

    #@3d
    move/from16 v0, p8

    #@3f
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@42
    .line 1369
    const-string/jumbo v1, "data"

    #@45
    invoke-virtual/range {p9 .. p9}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@4c
    .line 1370
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@4f
    .line 1372
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@51
    move v2, p1

    #@52
    move v3, p2

    #@53
    move v4, p3

    #@54
    move v5, p4

    #@55
    move/from16 v6, p5

    #@57
    move/from16 v7, p6

    #@59
    move/from16 v8, p7

    #@5b
    move/from16 v9, p8

    #@5d
    move-object/from16 v10, p9

    #@5f
    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    #@62
    .line 1374
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@65
    .line 1359
    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "border"    # I

    #@0
    .prologue
    .line 1379
    const-string/jumbo v1, "glCopyTexImage2D"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1380
    const-string/jumbo v1, "target"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1381
    const-string/jumbo v1, "level"

    #@13
    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@16
    .line 1382
    const-string/jumbo v1, "internalformat"

    #@19
    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1c
    .line 1383
    const-string/jumbo v1, "x"

    #@1f
    invoke-direct {p0, v1, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 1384
    const-string/jumbo v1, "y"

    #@25
    invoke-direct {p0, v1, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@28
    .line 1385
    const-string/jumbo v1, "width"

    #@2b
    move/from16 v0, p6

    #@2d
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@30
    .line 1386
    const-string/jumbo v1, "height"

    #@33
    move/from16 v0, p7

    #@35
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@38
    .line 1387
    const-string/jumbo v1, "border"

    #@3b
    move/from16 v0, p8

    #@3d
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@40
    .line 1388
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@43
    .line 1390
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@45
    move v2, p1

    #@46
    move v3, p2

    #@47
    move v4, p3

    #@48
    move v5, p4

    #@49
    move v6, p5

    #@4a
    move/from16 v7, p6

    #@4c
    move/from16 v8, p7

    #@4e
    move/from16 v9, p8

    #@50
    invoke-interface/range {v1 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    #@53
    .line 1392
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@56
    .line 1378
    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I

    #@0
    .prologue
    .line 1397
    const-string/jumbo v1, "glCopyTexSubImage2D"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1398
    const-string/jumbo v1, "target"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1399
    const-string/jumbo v1, "level"

    #@13
    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@16
    .line 1400
    const-string/jumbo v1, "xoffset"

    #@19
    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1c
    .line 1401
    const-string/jumbo v1, "yoffset"

    #@1f
    invoke-direct {p0, v1, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 1402
    const-string/jumbo v1, "x"

    #@25
    invoke-direct {p0, v1, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@28
    .line 1403
    const-string/jumbo v1, "y"

    #@2b
    move/from16 v0, p6

    #@2d
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@30
    .line 1404
    const-string/jumbo v1, "width"

    #@33
    move/from16 v0, p7

    #@35
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@38
    .line 1405
    const-string/jumbo v1, "height"

    #@3b
    move/from16 v0, p8

    #@3d
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@40
    .line 1406
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@43
    .line 1408
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@45
    move v2, p1

    #@46
    move v3, p2

    #@47
    move v4, p3

    #@48
    move v5, p4

    #@49
    move v6, p5

    #@4a
    move/from16 v7, p6

    #@4c
    move/from16 v8, p7

    #@4e
    move/from16 v9, p8

    #@50
    invoke-interface/range {v1 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexSubImage2D(IIIIIIII)V

    #@53
    .line 1410
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@56
    .line 1396
    return-void
.end method

.method public glCullFace(I)V
    .locals 1
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 1414
    const-string/jumbo v0, "glCullFace"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1415
    const-string/jumbo v0, "mode"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1416
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 1418
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@11
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    #@14
    .line 1419
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@17
    .line 1413
    return-void
.end method

.method public glCurrentPaletteMatrixOES(I)V
    .locals 1
    .param p1, "matrixpaletteindex"    # I

    #@0
    .prologue
    .line 3395
    const-string/jumbo v0, "glCurrentPaletteMatrixOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3396
    const-string/jumbo v0, "matrixpaletteindex"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3397
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 3398
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@11
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glCurrentPaletteMatrixOES(I)V

    #@14
    .line 3399
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@17
    .line 3394
    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "buffers"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 2823
    const-string/jumbo v0, "glDeleteBuffers"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2824
    const-string/jumbo v0, "n"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2825
    const-string/jumbo v0, "buffers"

    #@f
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 2826
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@19
    .line 2827
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@1b
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    #@1e
    .line 2828
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@21
    .line 2822
    return-void
.end method

.method public glDeleteBuffers(I[II)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "buffers"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 2813
    const-string/jumbo v0, "glDeleteBuffers"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2814
    const-string/jumbo v0, "n"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2815
    const-string/jumbo v0, "buffers"

    #@f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 2816
    const-string/jumbo v0, "offset"

    #@19
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1c
    .line 2817
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 2818
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    #@24
    .line 2819
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 2812
    return-void
.end method

.method public glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "framebuffers"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 3525
    const-string/jumbo v0, "glDeleteFramebuffersOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3526
    const-string/jumbo v0, "n"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3527
    const-string/jumbo v0, "framebuffers"

    #@f
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 3528
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@19
    .line 3529
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@1b
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V

    #@1e
    .line 3530
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@21
    .line 3524
    return-void
.end method

.method public glDeleteFramebuffersOES(I[II)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "framebuffers"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 3514
    const-string/jumbo v0, "glDeleteFramebuffersOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3515
    const-string/jumbo v0, "n"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3516
    const-string/jumbo v0, "framebuffers"

    #@f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 3517
    const-string/jumbo v0, "offset"

    #@19
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1c
    .line 3518
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3519
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    #@24
    .line 3520
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3513
    return-void
.end method

.method public glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 3546
    const-string/jumbo v0, "glDeleteRenderbuffersOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3547
    const-string/jumbo v0, "n"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3548
    const-string/jumbo v0, "renderbuffers"

    #@f
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 3549
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@19
    .line 3550
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@1b
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V

    #@1e
    .line 3551
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@21
    .line 3545
    return-void
.end method

.method public glDeleteRenderbuffersOES(I[II)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 3535
    const-string/jumbo v0, "glDeleteRenderbuffersOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3536
    const-string/jumbo v0, "n"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3537
    const-string/jumbo v0, "renderbuffers"

    #@f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 3538
    const-string/jumbo v0, "offset"

    #@19
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1c
    .line 3539
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3540
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteRenderbuffersOES(I[II)V

    #@24
    .line 3541
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3534
    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1434
    const-string/jumbo v0, "glDeleteTextures"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1435
    const-string/jumbo v0, "n"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1436
    const-string/jumbo v0, "textures"

    #@f
    invoke-direct {p0, v0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    #@12
    .line 1437
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@15
    .line 1439
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@17
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    #@1a
    .line 1440
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1d
    .line 1433
    return-void
.end method

.method public glDeleteTextures(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 1423
    const-string/jumbo v0, "glDeleteTextures"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1424
    const-string/jumbo v0, "n"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1425
    const-string/jumbo v0, "textures"

    #@f
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    #@12
    .line 1426
    const-string/jumbo v0, "offset"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 1427
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1b
    .line 1429
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1d
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    #@20
    .line 1430
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@23
    .line 1422
    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1
    .param p1, "func"    # I

    #@0
    .prologue
    .line 1444
    const-string/jumbo v0, "glDepthFunc"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1445
    const-string/jumbo v0, "func"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1446
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 1448
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@11
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    #@14
    .line 1449
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@17
    .line 1443
    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 1453
    const-string/jumbo v0, "glDepthMask"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1454
    const-string/jumbo v0, "flag"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    #@c
    .line 1455
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 1457
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@11
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    #@14
    .line 1458
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@17
    .line 1452
    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1
    .param p1, "near"    # F
    .param p2, "far"    # F

    #@0
    .prologue
    .line 1462
    const-string/jumbo v0, "glDepthRangef"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1463
    const-string/jumbo v0, "near"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@c
    .line 1464
    const-string/jumbo v0, "far"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@12
    .line 1465
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@15
    .line 1467
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@17
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangef(FF)V

    #@1a
    .line 1468
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1d
    .line 1461
    return-void
.end method

.method public glDepthRangex(II)V
    .locals 1
    .param p1, "near"    # I
    .param p2, "far"    # I

    #@0
    .prologue
    .line 1472
    const-string/jumbo v0, "glDepthRangex"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1473
    const-string/jumbo v0, "near"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1474
    const-string/jumbo v0, "far"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 1475
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@15
    .line 1477
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@17
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangex(II)V

    #@1a
    .line 1478
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1d
    .line 1471
    return-void
.end method

.method public glDisable(I)V
    .locals 2
    .param p1, "cap"    # I

    #@0
    .prologue
    .line 1482
    const-string/jumbo v0, "glDisable"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1483
    const-string/jumbo v0, "cap"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getCap(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1484
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@13
    .line 1486
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@15
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    #@18
    .line 1487
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1b
    .line 1481
    return-void
.end method

.method public glDisableClientState(I)V
    .locals 3
    .param p1, "array"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1491
    const-string/jumbo v0, "glDisableClientState"

    #@4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@7
    .line 1492
    const-string/jumbo v0, "array"

    #@a
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getClientState(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 1493
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@14
    .line 1495
    packed-switch p1, :pswitch_data_0

    #@17
    .line 1509
    :goto_0
    :pswitch_0
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@19
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    #@1c
    .line 1510
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1f
    .line 1490
    return-void

    #@20
    .line 1497
    :pswitch_1
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    #@22
    goto :goto_0

    #@23
    .line 1500
    :pswitch_2
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    #@25
    goto :goto_0

    #@26
    .line 1503
    :pswitch_3
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    #@28
    goto :goto_0

    #@29
    .line 1506
    :pswitch_4
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    #@2b
    goto :goto_0

    #@2c
    .line 1495
    :pswitch_data_0
    .packed-switch 0x8074
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public glDrawArrays(III)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "first"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 1514
    const-string/jumbo v1, "glDrawArrays"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1515
    const-string/jumbo v1, "mode"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1516
    const-string/jumbo v1, "first"

    #@f
    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 1517
    const-string/jumbo v1, "count"

    #@15
    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 1518
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->startLogIndices()V

    #@1b
    .line 1519
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    #@1e
    .line 1520
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    #@20
    add-int v2, p2, v0

    #@22
    invoke-direct {p0, v1, v0, v2}, Landroid/opengl/GLLogWrapper;->doElement(Ljava/lang/StringBuilder;II)V

    #@25
    .line 1519
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1522
    :cond_0
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->endLogIndices()V

    #@2b
    .line 1523
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@2e
    .line 1525
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@30
    invoke-interface {v1, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    #@33
    .line 1526
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@36
    .line 1513
    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3346
    const-string/jumbo v0, "glDrawElements"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3347
    const-string/jumbo v0, "mode"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3348
    const-string/jumbo v0, "count"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3349
    const-string/jumbo v0, "type"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 3350
    const-string/jumbo v0, "offset"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 3351
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@21
    .line 3352
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@23
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    #@26
    .line 3353
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@29
    .line 3345
    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "indices"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 1530
    const-string/jumbo v3, "glDrawElements"

    #@3
    invoke-direct {p0, v3}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1531
    const-string/jumbo v3, "mode"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getBeginMode(I)Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    invoke-direct {p0, v3, v4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1532
    const-string/jumbo v3, "count"

    #@13
    invoke-direct {p0, v3, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@16
    .line 1533
    const-string/jumbo v3, "type"

    #@19
    invoke-direct {p0, p3}, Landroid/opengl/GLLogWrapper;->getIndexType(I)Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    invoke-direct {p0, v3, v4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    .line 1534
    invoke-direct {p0, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->toCharIndices(IILjava/nio/Buffer;)[C

    #@23
    move-result-object v1

    #@24
    .line 1535
    .local v1, "indexArray":[C
    array-length v2, v1

    #@25
    .line 1536
    .local v2, "indexArrayLength":I
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->startLogIndices()V

    #@28
    .line 1537
    const/4 v0, 0x0

    #@29
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@2b
    .line 1538
    iget-object v3, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    #@2d
    aget-char v4, v1, v0

    #@2f
    invoke-direct {p0, v3, v0, v4}, Landroid/opengl/GLLogWrapper;->doElement(Ljava/lang/StringBuilder;II)V

    #@32
    .line 1537
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 1540
    :cond_0
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->endLogIndices()V

    #@38
    .line 1541
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@3b
    .line 1543
    iget-object v3, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@3d
    invoke-interface {v3, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    #@40
    .line 1544
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@43
    .line 1529
    return-void
.end method

.method public glDrawTexfOES(FFFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    #@0
    .prologue
    .line 2628
    const-string/jumbo v0, "glDrawTexfOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2629
    const-string/jumbo v0, "x"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@c
    .line 2630
    const-string/jumbo v0, "y"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@12
    .line 2631
    const-string/jumbo v0, "z"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@18
    .line 2632
    const-string/jumbo v0, "width"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@1e
    .line 2633
    const-string/jumbo v0, "height"

    #@21
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@24
    .line 2634
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@27
    .line 2635
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@29
    move v1, p1

    #@2a
    move v2, p2

    #@2b
    move v3, p3

    #@2c
    move v4, p4

    #@2d
    move v5, p5

    #@2e
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    #@31
    .line 2636
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@34
    .line 2627
    return-void
.end method

.method public glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "coords"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 2649
    const-string/jumbo v0, "glDrawTexfvOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2650
    const-string/jumbo v0, "coords"

    #@9
    const/4 v1, 0x5

    #@a
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    #@d
    .line 2651
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@10
    .line 2652
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@12
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES(Ljava/nio/FloatBuffer;)V

    #@15
    .line 2653
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@18
    .line 2648
    return-void
.end method

.method public glDrawTexfvOES([FI)V
    .locals 2
    .param p1, "coords"    # [F
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 2640
    const-string/jumbo v0, "glDrawTexfvOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2641
    const-string/jumbo v0, "coords"

    #@9
    const/4 v1, 0x5

    #@a
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    #@d
    .line 2642
    const-string/jumbo v0, "offset"

    #@10
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@13
    .line 2643
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@16
    .line 2644
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@18
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES([FI)V

    #@1b
    .line 2645
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1e
    .line 2639
    return-void
.end method

.method public glDrawTexiOES(IIIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    #@0
    .prologue
    .line 2657
    const-string/jumbo v0, "glDrawTexiOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2658
    const-string/jumbo v0, "x"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2659
    const-string/jumbo v0, "y"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2660
    const-string/jumbo v0, "z"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 2661
    const-string/jumbo v0, "width"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 2662
    const-string/jumbo v0, "height"

    #@21
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@24
    .line 2663
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@27
    .line 2664
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@29
    move v1, p1

    #@2a
    move v2, p2

    #@2b
    move v3, p3

    #@2c
    move v4, p4

    #@2d
    move v5, p5

    #@2e
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    #@31
    .line 2665
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@34
    .line 2656
    return-void
.end method

.method public glDrawTexivOES(Ljava/nio/IntBuffer;)V
    .locals 2
    .param p1, "coords"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 2678
    const-string/jumbo v0, "glDrawTexivOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2679
    const-string/jumbo v0, "coords"

    #@9
    const/4 v1, 0x5

    #@a
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    #@d
    .line 2680
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@10
    .line 2681
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@12
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES(Ljava/nio/IntBuffer;)V

    #@15
    .line 2682
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@18
    .line 2677
    return-void
.end method

.method public glDrawTexivOES([II)V
    .locals 2
    .param p1, "coords"    # [I
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 2669
    const-string/jumbo v0, "glDrawTexivOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2670
    const-string/jumbo v0, "coords"

    #@9
    const/4 v1, 0x5

    #@a
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    #@d
    .line 2671
    const-string/jumbo v0, "offset"

    #@10
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@13
    .line 2672
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@16
    .line 2673
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@18
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES([II)V

    #@1b
    .line 2674
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1e
    .line 2668
    return-void
.end method

.method public glDrawTexsOES(SSSSS)V
    .locals 6
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "z"    # S
    .param p4, "width"    # S
    .param p5, "height"    # S

    #@0
    .prologue
    .line 2687
    const-string/jumbo v0, "glDrawTexsOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2688
    const-string/jumbo v0, "x"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2689
    const-string/jumbo v0, "y"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2690
    const-string/jumbo v0, "z"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 2691
    const-string/jumbo v0, "width"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 2692
    const-string/jumbo v0, "height"

    #@21
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@24
    .line 2693
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@27
    .line 2694
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@29
    move v1, p1

    #@2a
    move v2, p2

    #@2b
    move v3, p3

    #@2c
    move v4, p4

    #@2d
    move v5, p5

    #@2e
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsOES(SSSSS)V

    #@31
    .line 2695
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@34
    .line 2686
    return-void
.end method

.method public glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
    .locals 2
    .param p1, "coords"    # Ljava/nio/ShortBuffer;

    #@0
    .prologue
    .line 2708
    const-string/jumbo v0, "glDrawTexsvOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2709
    const-string/jumbo v0, "coords"

    #@9
    const/4 v1, 0x5

    #@a
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/ShortBuffer;)V

    #@d
    .line 2710
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@10
    .line 2711
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@12
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES(Ljava/nio/ShortBuffer;)V

    #@15
    .line 2712
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@18
    .line 2707
    return-void
.end method

.method public glDrawTexsvOES([SI)V
    .locals 2
    .param p1, "coords"    # [S
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 2699
    const-string/jumbo v0, "glDrawTexsvOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2700
    const-string/jumbo v0, "coords"

    #@9
    const/4 v1, 0x5

    #@a
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[SI)V

    #@d
    .line 2701
    const-string/jumbo v0, "offset"

    #@10
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@13
    .line 2702
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@16
    .line 2703
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@18
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES([SI)V

    #@1b
    .line 2704
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1e
    .line 2698
    return-void
.end method

.method public glDrawTexxOES(IIIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    #@0
    .prologue
    .line 2716
    const-string/jumbo v0, "glDrawTexxOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2717
    const-string/jumbo v0, "x"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2718
    const-string/jumbo v0, "y"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2719
    const-string/jumbo v0, "z"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 2720
    const-string/jumbo v0, "width"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 2721
    const-string/jumbo v0, "height"

    #@21
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@24
    .line 2722
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@27
    .line 2723
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@29
    move v1, p1

    #@2a
    move v2, p2

    #@2b
    move v3, p3

    #@2c
    move v4, p4

    #@2d
    move v5, p5

    #@2e
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxOES(IIIII)V

    #@31
    .line 2724
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@34
    .line 2715
    return-void
.end method

.method public glDrawTexxvOES(Ljava/nio/IntBuffer;)V
    .locals 2
    .param p1, "coords"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 2737
    const-string/jumbo v0, "glDrawTexxvOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2738
    const-string/jumbo v0, "coords"

    #@9
    const/4 v1, 0x5

    #@a
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    #@d
    .line 2739
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@10
    .line 2740
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@12
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES(Ljava/nio/IntBuffer;)V

    #@15
    .line 2741
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@18
    .line 2736
    return-void
.end method

.method public glDrawTexxvOES([II)V
    .locals 2
    .param p1, "coords"    # [I
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 2728
    const-string/jumbo v0, "glDrawTexxvOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2729
    const-string/jumbo v0, "coords"

    #@9
    const/4 v1, 0x5

    #@a
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    #@d
    .line 2730
    const-string/jumbo v0, "offset"

    #@10
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@13
    .line 2731
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@16
    .line 2732
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@18
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES([II)V

    #@1b
    .line 2733
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1e
    .line 2727
    return-void
.end method

.method public glEnable(I)V
    .locals 2
    .param p1, "cap"    # I

    #@0
    .prologue
    .line 1548
    const-string/jumbo v0, "glEnable"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1549
    const-string/jumbo v0, "cap"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getCap(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1550
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@13
    .line 1552
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@15
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    #@18
    .line 1553
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1b
    .line 1547
    return-void
.end method

.method public glEnableClientState(I)V
    .locals 3
    .param p1, "array"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1557
    const-string/jumbo v0, "glEnableClientState"

    #@4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@7
    .line 1558
    const-string/jumbo v0, "array"

    #@a
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getClientState(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 1559
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@14
    .line 1561
    packed-switch p1, :pswitch_data_0

    #@17
    .line 1575
    :goto_0
    :pswitch_0
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@19
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    #@1c
    .line 1576
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1f
    .line 1556
    return-void

    #@20
    .line 1563
    :pswitch_1
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    #@22
    goto :goto_0

    #@23
    .line 1566
    :pswitch_2
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    #@25
    goto :goto_0

    #@26
    .line 1569
    :pswitch_3
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    #@28
    goto :goto_0

    #@29
    .line 1572
    :pswitch_4
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    #@2b
    goto :goto_0

    #@2c
    .line 1561
    :pswitch_data_0
    .packed-switch 0x8074
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public glFinish()V
    .locals 1

    #@0
    .prologue
    .line 1580
    const-string/jumbo v0, "glFinish"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1581
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@9
    .line 1583
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@b
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    #@e
    .line 1584
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@11
    .line 1579
    return-void
.end method

.method public glFlush()V
    .locals 1

    #@0
    .prologue
    .line 1588
    const-string/jumbo v0, "glFlush"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1589
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@9
    .line 1591
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@b
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    #@e
    .line 1592
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@11
    .line 1587
    return-void
.end method

.method public glFogf(IF)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # F

    #@0
    .prologue
    .line 1596
    const-string/jumbo v0, "glFogf"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1597
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1598
    const-string/jumbo v0, "param"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@12
    .line 1599
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@15
    .line 1601
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@17
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    #@1a
    .line 1602
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1d
    .line 1595
    return-void
.end method

.method public glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 1617
    const-string/jumbo v0, "glFogfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1618
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1619
    const-string/jumbo v0, "params"

    #@13
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    #@16
    move-result v1

    #@17
    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    #@1a
    .line 1620
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1d
    .line 1622
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1f
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    #@22
    .line 1623
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@25
    .line 1616
    return-void
.end method

.method public glFogfv(I[FI)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 1606
    const-string/jumbo v0, "glFogfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1607
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1608
    const-string/jumbo v0, "params"

    #@13
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    #@16
    move-result v1

    #@17
    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    #@1a
    .line 1609
    const-string/jumbo v0, "offset"

    #@1d
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@20
    .line 1610
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@23
    .line 1612
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@25
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(I[FI)V

    #@28
    .line 1613
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2b
    .line 1605
    return-void
.end method

.method public glFogx(II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "param"    # I

    #@0
    .prologue
    .line 1627
    const-string/jumbo v0, "glFogx"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1628
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1629
    const-string/jumbo v0, "param"

    #@13
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@16
    .line 1630
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@19
    .line 1632
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1b
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    #@1e
    .line 1633
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@21
    .line 1626
    return-void
.end method

.method public glFogxv(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1648
    const-string/jumbo v0, "glFogxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1649
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1650
    const-string/jumbo v0, "params"

    #@13
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    #@16
    move-result v1

    #@17
    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    #@1a
    .line 1651
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1d
    .line 1653
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1f
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(ILjava/nio/IntBuffer;)V

    #@22
    .line 1654
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@25
    .line 1647
    return-void
.end method

.method public glFogxv(I[II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 1637
    const-string/jumbo v0, "glFogxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1638
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1639
    const-string/jumbo v0, "params"

    #@13
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    #@16
    move-result v1

    #@17
    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    #@1a
    .line 1640
    const-string/jumbo v0, "offset"

    #@1d
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@20
    .line 1641
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@23
    .line 1643
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@25
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(I[II)V

    #@28
    .line 1644
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2b
    .line 1636
    return-void
.end method

.method public glFramebufferRenderbufferOES(IIII)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "renderbuffertarget"    # I
    .param p4, "renderbuffer"    # I

    #@0
    .prologue
    .line 3557
    const-string/jumbo v0, "glFramebufferRenderbufferOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3558
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3559
    const-string/jumbo v0, "attachment"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3560
    const-string/jumbo v0, "renderbuffertarget"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 3561
    const-string/jumbo v0, "renderbuffer"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 3562
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@21
    .line 3563
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@23
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferRenderbufferOES(IIII)V

    #@26
    .line 3564
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@29
    .line 3556
    return-void
.end method

.method public glFramebufferTexture2DOES(IIIII)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "textarget"    # I
    .param p4, "texture"    # I
    .param p5, "level"    # I

    #@0
    .prologue
    .line 3570
    const-string/jumbo v0, "glFramebufferTexture2DOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3571
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3572
    const-string/jumbo v0, "attachment"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3573
    const-string/jumbo v0, "textarget"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 3574
    const-string/jumbo v0, "texture"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 3575
    const-string/jumbo v0, "level"

    #@21
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@24
    .line 3576
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@27
    .line 3577
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@29
    move v1, p1

    #@2a
    move v2, p2

    #@2b
    move v3, p3

    #@2c
    move v4, p4

    #@2d
    move v5, p5

    #@2e
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    #@31
    .line 3578
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@34
    .line 3569
    return-void
.end method

.method public glFrontFace(I)V
    .locals 1
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 1658
    const-string/jumbo v0, "glFrontFace"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1659
    const-string/jumbo v0, "mode"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1660
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 1662
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@11
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    #@14
    .line 1663
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@17
    .line 1657
    return-void
.end method

.method public glFrustumf(FFFFFF)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    #@0
    .prologue
    .line 1668
    const-string/jumbo v0, "glFrustumf"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1669
    const-string/jumbo v0, "left"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@c
    .line 1670
    const-string/jumbo v0, "right"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@12
    .line 1671
    const-string/jumbo v0, "bottom"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@18
    .line 1672
    const-string/jumbo v0, "top"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@1e
    .line 1673
    const-string/jumbo v0, "near"

    #@21
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@24
    .line 1674
    const-string/jumbo v0, "far"

    #@27
    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@2a
    .line 1675
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@2d
    .line 1677
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@2f
    move v1, p1

    #@30
    move v2, p2

    #@31
    move v3, p3

    #@32
    move v4, p4

    #@33
    move v5, p5

    #@34
    move v6, p6

    #@35
    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    #@38
    .line 1678
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@3b
    .line 1667
    return-void
.end method

.method public glFrustumx(IIIIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "top"    # I
    .param p5, "near"    # I
    .param p6, "far"    # I

    #@0
    .prologue
    .line 1683
    const-string/jumbo v0, "glFrustumx"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1684
    const-string/jumbo v0, "left"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1685
    const-string/jumbo v0, "right"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 1686
    const-string/jumbo v0, "bottom"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 1687
    const-string/jumbo v0, "top"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 1688
    const-string/jumbo v0, "near"

    #@21
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@24
    .line 1689
    const-string/jumbo v0, "far"

    #@27
    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@2a
    .line 1690
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@2d
    .line 1692
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@2f
    move v1, p1

    #@30
    move v2, p2

    #@31
    move v3, p3

    #@32
    move v4, p4

    #@33
    move v5, p5

    #@34
    move v6, p6

    #@35
    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumx(IIIIII)V

    #@38
    .line 1693
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@3b
    .line 1682
    return-void
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "buffers"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 2842
    const-string/jumbo v0, "glGenBuffers"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2843
    const-string/jumbo v0, "n"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2844
    const-string/jumbo v0, "buffers"

    #@f
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 2845
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@19
    .line 2846
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@1b
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(ILjava/nio/IntBuffer;)V

    #@1e
    .line 2847
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@21
    .line 2841
    return-void
.end method

.method public glGenBuffers(I[II)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "buffers"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 2832
    const-string/jumbo v0, "glGenBuffers"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2833
    const-string/jumbo v0, "n"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2834
    const-string/jumbo v0, "buffers"

    #@f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 2835
    const-string/jumbo v0, "offset"

    #@19
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1c
    .line 2836
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 2837
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    #@24
    .line 2838
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 2831
    return-void
.end method

.method public glGenFramebuffersOES(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "framebuffers"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 3603
    const-string/jumbo v0, "glGenFramebuffersOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3604
    const-string/jumbo v0, "n"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3605
    const-string/jumbo v0, "framebuffers"

    #@f
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 3606
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@19
    .line 3607
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@1b
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenFramebuffersOES(ILjava/nio/IntBuffer;)V

    #@1e
    .line 3608
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@21
    .line 3602
    return-void
.end method

.method public glGenFramebuffersOES(I[II)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "framebuffers"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 3592
    const-string/jumbo v0, "glGenFramebuffersOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3593
    const-string/jumbo v0, "n"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3594
    const-string/jumbo v0, "framebuffers"

    #@f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 3595
    const-string/jumbo v0, "offset"

    #@19
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1c
    .line 3596
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3597
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenFramebuffersOES(I[II)V

    #@24
    .line 3598
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3591
    return-void
.end method

.method public glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 3624
    const-string/jumbo v0, "glGenRenderbuffersOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3625
    const-string/jumbo v0, "n"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3626
    const-string/jumbo v0, "renderbuffers"

    #@f
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 3627
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@19
    .line 3628
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@1b
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V

    #@1e
    .line 3629
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@21
    .line 3623
    return-void
.end method

.method public glGenRenderbuffersOES(I[II)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 3613
    const-string/jumbo v0, "glGenRenderbuffersOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3614
    const-string/jumbo v0, "n"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3615
    const-string/jumbo v0, "renderbuffers"

    #@f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 3616
    const-string/jumbo v0, "offset"

    #@19
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1c
    .line 3617
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3618
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenRenderbuffersOES(I[II)V

    #@24
    .line 3619
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3612
    return-void
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1710
    const-string/jumbo v0, "glGenTextures"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1711
    const-string/jumbo v0, "n"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1712
    const-string/jumbo v0, "textures"

    #@f
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 1714
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@18
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(ILjava/nio/IntBuffer;)V

    #@1b
    .line 1716
    const/4 v0, 0x0

    #@1c
    invoke-direct {p0, p1, v0, p2}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    #@23
    .line 1718
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@26
    .line 1709
    return-void
.end method

.method public glGenTextures(I[II)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "textures"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 1697
    const-string/jumbo v0, "glGenTextures"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1698
    const-string/jumbo v0, "n"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1699
    const-string/jumbo v0, "textures"

    #@f
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 1700
    const-string/jumbo v0, "offset"

    #@19
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1c
    .line 1702
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1e
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    #@21
    .line 1704
    const/4 v0, 0x0

    #@22
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    #@29
    .line 1706
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2c
    .line 1696
    return-void
.end method

.method public glGenerateMipmapOES(I)V
    .locals 1
    .param p1, "target"    # I

    #@0
    .prologue
    .line 3583
    const-string/jumbo v0, "glGenerateMipmapOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3584
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3585
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 3586
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@11
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenerateMipmapOES(I)V

    #@14
    .line 3587
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@17
    .line 3582
    return-void
.end method

.method public glGetBooleanv(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 2861
    const-string/jumbo v0, "glGetBooleanv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2862
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2863
    const-string/jumbo v0, "params"

    #@f
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 2864
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@19
    .line 2865
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@1b
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    #@1e
    .line 2866
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@21
    .line 2860
    return-void
.end method

.method public glGetBooleanv(I[ZI)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [Z
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 2851
    const-string/jumbo v0, "glGetBooleanv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2852
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2853
    const-string/jumbo v0, "params"

    #@f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 2854
    const-string/jumbo v0, "offset"

    #@19
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1c
    .line 2855
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 2856
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetBooleanv(I[ZI)V

    #@24
    .line 2857
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 2850
    return-void
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 2882
    const-string/jumbo v0, "glGetBufferParameteriv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2883
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2884
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2885
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 2886
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 2887
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    #@24
    .line 2888
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 2881
    return-void
.end method

.method public glGetBufferParameteriv(II[II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 2871
    const-string/jumbo v0, "glGetBufferParameteriv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2872
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2873
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2874
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 2875
    const-string/jumbo v0, "offset"

    #@1f
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 2876
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 2877
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetBufferParameteriv(II[II)V

    #@2a
    .line 2878
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 2870
    return-void
.end method

.method public glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "eqn"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 2902
    const-string/jumbo v0, "glGetClipPlanef"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2903
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2904
    const-string/jumbo v0, "eqn"

    #@f
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 2905
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@19
    .line 2906
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@1b
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanef(ILjava/nio/FloatBuffer;)V

    #@1e
    .line 2907
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@21
    .line 2901
    return-void
.end method

.method public glGetClipPlanef(I[FI)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "eqn"    # [F
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 2892
    const-string/jumbo v0, "glGetClipPlanef"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2893
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2894
    const-string/jumbo v0, "eqn"

    #@f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 2895
    const-string/jumbo v0, "offset"

    #@19
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1c
    .line 2896
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 2897
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanef(I[FI)V

    #@24
    .line 2898
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 2891
    return-void
.end method

.method public glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "eqn"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 2920
    const-string/jumbo v0, "glGetClipPlanex"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2921
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2922
    const-string/jumbo v0, "eqn"

    #@f
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 2923
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@19
    .line 2924
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@1b
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanex(ILjava/nio/IntBuffer;)V

    #@1e
    .line 2925
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@21
    .line 2919
    return-void
.end method

.method public glGetClipPlanex(I[II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "eqn"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 2911
    const-string/jumbo v0, "glGetClipPlanex"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2912
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2913
    const-string/jumbo v0, "eqn"

    #@f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 2914
    const-string/jumbo v0, "offset"

    #@19
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1c
    .line 2915
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 2916
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanex(I[II)V

    #@24
    .line 2910
    return-void
.end method

.method public glGetError()I
    .locals 2

    #@0
    .prologue
    .line 1722
    const-string/jumbo v1, "glGetError"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1724
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@8
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    #@b
    move-result v0

    #@c
    .line 1726
    .local v0, "result":I
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(I)V

    #@f
    .line 1728
    return v0
.end method

.method public glGetFixedv(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 2938
    const-string/jumbo v0, "glGetFixedv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2939
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2940
    const-string/jumbo v0, "params"

    #@f
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 2941
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@19
    .line 2942
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@1b
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetFixedv(ILjava/nio/IntBuffer;)V

    #@1e
    .line 2943
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@21
    .line 2937
    return-void
.end method

.method public glGetFixedv(I[II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 2929
    const-string/jumbo v0, "glGetFixedv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2930
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2931
    const-string/jumbo v0, "params"

    #@f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 2932
    const-string/jumbo v0, "offset"

    #@19
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1c
    .line 2933
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 2934
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetFixedv(I[II)V

    #@24
    .line 2928
    return-void
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 2956
    const-string/jumbo v0, "glGetFloatv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2957
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2958
    const-string/jumbo v0, "params"

    #@f
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 2959
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@19
    .line 2960
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@1b
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    #@1e
    .line 2961
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@21
    .line 2955
    return-void
.end method

.method public glGetFloatv(I[FI)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 2947
    const-string/jumbo v0, "glGetFloatv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2948
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2949
    const-string/jumbo v0, "params"

    #@f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 2950
    const-string/jumbo v0, "offset"

    #@19
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1c
    .line 2951
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 2952
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(I[FI)V

    #@24
    .line 2946
    return-void
.end method

.method public glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "pname"    # I
    .param p4, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 3649
    const-string/jumbo v0, "glGetFramebufferAttachmentParameterivOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3650
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3651
    const-string/jumbo v0, "attachment"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3652
    const-string/jumbo v0, "pname"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 3653
    const-string/jumbo v0, "params"

    #@1b
    invoke-virtual {p4}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 3654
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 3655
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V

    #@2a
    .line 3656
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 3648
    return-void
.end method

.method public glGetFramebufferAttachmentParameterivOES(III[II)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "pname"    # I
    .param p4, "params"    # [I
    .param p5, "offset"    # I

    #@0
    .prologue
    .line 3635
    const-string/jumbo v0, "glGetFramebufferAttachmentParameterivOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3636
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3637
    const-string/jumbo v0, "attachment"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3638
    const-string/jumbo v0, "pname"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 3639
    const-string/jumbo v0, "params"

    #@1b
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 3640
    const-string/jumbo v0, "offset"

    #@25
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@28
    .line 3641
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@2b
    .line 3642
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@2d
    move v1, p1

    #@2e
    move v2, p2

    #@2f
    move v3, p3

    #@30
    move-object v4, p4

    #@31
    move v5, p5

    #@32
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetFramebufferAttachmentParameterivOES(III[II)V

    #@35
    .line 3643
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@38
    .line 3634
    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1746
    const-string/jumbo v0, "glGetIntegerv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1747
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1748
    const-string/jumbo v0, "params"

    #@13
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 1750
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1c
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    #@1f
    .line 1752
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateSize(I)I

    #@22
    move-result v0

    #@23
    .line 1753
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateFormat(I)I

    #@26
    move-result v1

    #@27
    .line 1752
    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    #@2e
    .line 1755
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@31
    .line 1745
    return-void
.end method

.method public glGetIntegerv(I[II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 1732
    const-string/jumbo v0, "glGetIntegerv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1733
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1734
    const-string/jumbo v0, "params"

    #@13
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 1735
    const-string/jumbo v0, "offset"

    #@1d
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@20
    .line 1737
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@22
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    #@25
    .line 1739
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateSize(I)I

    #@28
    move-result v0

    #@29
    .line 1740
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateFormat(I)I

    #@2c
    move-result v1

    #@2d
    .line 1739
    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    #@34
    .line 1742
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@37
    .line 1731
    return-void
.end method

.method public glGetLightfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 2976
    const-string/jumbo v0, "glGetLightfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2977
    const-string/jumbo v0, "light"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2978
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2979
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 2980
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 2981
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightfv(IILjava/nio/FloatBuffer;)V

    #@24
    .line 2982
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 2975
    return-void
.end method

.method public glGetLightfv(II[FI)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 2965
    const-string/jumbo v0, "glGetLightfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2966
    const-string/jumbo v0, "light"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2967
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2968
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 2969
    const-string/jumbo v0, "offset"

    #@1f
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 2970
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 2971
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightfv(II[FI)V

    #@2a
    .line 2972
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 2964
    return-void
.end method

.method public glGetLightxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 2997
    const-string/jumbo v0, "glGetLightxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2998
    const-string/jumbo v0, "light"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2999
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3000
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3001
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3002
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightxv(IILjava/nio/IntBuffer;)V

    #@24
    .line 3003
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 2996
    return-void
.end method

.method public glGetLightxv(II[II)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 2986
    const-string/jumbo v0, "glGetLightxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2987
    const-string/jumbo v0, "light"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2988
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2989
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 2990
    const-string/jumbo v0, "offset"

    #@1f
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 2991
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 2992
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightxv(II[II)V

    #@2a
    .line 2993
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 2985
    return-void
.end method

.method public glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 3019
    const-string/jumbo v0, "glGetMaterialfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3020
    const-string/jumbo v0, "face"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3021
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3022
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3023
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3024
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialfv(IILjava/nio/FloatBuffer;)V

    #@24
    .line 3025
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3018
    return-void
.end method

.method public glGetMaterialfv(II[FI)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3008
    const-string/jumbo v0, "glGetMaterialfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3009
    const-string/jumbo v0, "face"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3010
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3011
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3012
    const-string/jumbo v0, "offset"

    #@1f
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 3013
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 3014
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialfv(II[FI)V

    #@2a
    .line 3015
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 3007
    return-void
.end method

.method public glGetMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 3040
    const-string/jumbo v0, "glGetMaterialxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3041
    const-string/jumbo v0, "face"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3042
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3043
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3044
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3045
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialxv(IILjava/nio/IntBuffer;)V

    #@24
    .line 3046
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3039
    return-void
.end method

.method public glGetMaterialxv(II[II)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3029
    const-string/jumbo v0, "glGetMaterialxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3030
    const-string/jumbo v0, "face"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3031
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3032
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3033
    const-string/jumbo v0, "offset"

    #@1f
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 3034
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 3035
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialxv(II[II)V

    #@2a
    .line 3036
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 3028
    return-void
.end method

.method public glGetPointerv(I[Ljava/nio/Buffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [Ljava/nio/Buffer;

    #@0
    .prologue
    .line 3357
    const-string/jumbo v0, "glGetPointerv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3358
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3359
    const-string/jumbo v0, "params"

    #@f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 3360
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@19
    .line 3361
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@1b
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetPointerv(I[Ljava/nio/Buffer;)V

    #@1e
    .line 3362
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@21
    .line 3356
    return-void
.end method

.method public glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 3675
    const-string/jumbo v0, "glGetRenderbufferParameterivOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3676
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3677
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3678
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3679
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3680
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V

    #@24
    .line 3681
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3674
    return-void
.end method

.method public glGetRenderbufferParameterivOES(II[II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3662
    const-string/jumbo v0, "glGetRenderbufferParameterivOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3663
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3664
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3665
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3666
    const-string/jumbo v0, "offset"

    #@1f
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 3667
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 3668
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetRenderbufferParameterivOES(II[II)V

    #@2a
    .line 3669
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 3661
    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # I

    #@0
    .prologue
    .line 1759
    const-string/jumbo v1, "glGetString"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1760
    const-string/jumbo v1, "name"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1762
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@e
    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 1764
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    #@15
    .line 1766
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@18
    .line 1767
    return-object v0
.end method

.method public glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "env"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 3061
    const-string/jumbo v0, "glGetTexEnviv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3062
    const-string/jumbo v0, "env"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3063
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3064
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3065
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3066
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(IILjava/nio/IntBuffer;)V

    #@24
    .line 3067
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3060
    return-void
.end method

.method public glGetTexEnviv(II[II)V
    .locals 2
    .param p1, "env"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3050
    const-string/jumbo v0, "glGetTexEnviv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3051
    const-string/jumbo v0, "env"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3052
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3053
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3054
    const-string/jumbo v0, "offset"

    #@1f
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 3055
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 3056
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(II[II)V

    #@2a
    .line 3057
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 3049
    return-void
.end method

.method public glGetTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "env"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 3082
    const-string/jumbo v0, "glGetTexEnviv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3083
    const-string/jumbo v0, "env"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3084
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3085
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3086
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3087
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnvxv(IILjava/nio/IntBuffer;)V

    #@24
    .line 3088
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3081
    return-void
.end method

.method public glGetTexEnvxv(II[II)V
    .locals 2
    .param p1, "env"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3071
    const-string/jumbo v0, "glGetTexEnviv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3072
    const-string/jumbo v0, "env"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3073
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3074
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3075
    const-string/jumbo v0, "offset"

    #@1f
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 3076
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 3077
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(II[II)V

    #@2a
    .line 3078
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 3070
    return-void
.end method

.method public glGetTexGenfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 3698
    const-string/jumbo v0, "glGetTexGenfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3699
    const-string/jumbo v0, "coord"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3700
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3701
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3702
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3703
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenfv(IILjava/nio/FloatBuffer;)V

    #@24
    .line 3704
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3697
    return-void
.end method

.method public glGetTexGenfv(II[FI)V
    .locals 2
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3686
    const-string/jumbo v0, "glGetTexGenfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3687
    const-string/jumbo v0, "coord"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3688
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3689
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3690
    const-string/jumbo v0, "offset"

    #@1f
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 3691
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 3692
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenfv(II[FI)V

    #@2a
    .line 3693
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 3685
    return-void
.end method

.method public glGetTexGeniv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 3721
    const-string/jumbo v0, "glGetTexGeniv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3722
    const-string/jumbo v0, "coord"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3723
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3724
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3725
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3726
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGeniv(IILjava/nio/IntBuffer;)V

    #@24
    .line 3727
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3720
    return-void
.end method

.method public glGetTexGeniv(II[II)V
    .locals 2
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3709
    const-string/jumbo v0, "glGetTexGeniv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3710
    const-string/jumbo v0, "coord"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3711
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3712
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3713
    const-string/jumbo v0, "offset"

    #@1f
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 3714
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 3715
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGeniv(II[II)V

    #@2a
    .line 3716
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 3708
    return-void
.end method

.method public glGetTexGenxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 3744
    const-string/jumbo v0, "glGetTexGenxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3745
    const-string/jumbo v0, "coord"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3746
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3747
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3748
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3749
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenxv(IILjava/nio/IntBuffer;)V

    #@24
    .line 3750
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3743
    return-void
.end method

.method public glGetTexGenxv(II[II)V
    .locals 2
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3732
    const-string/jumbo v0, "glGetTexGenxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3733
    const-string/jumbo v0, "coord"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3734
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3735
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3736
    const-string/jumbo v0, "offset"

    #@1f
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 3737
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 3738
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenxv(II[II)V

    #@2a
    .line 3739
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 3731
    return-void
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 3103
    const-string/jumbo v0, "glGetTexParameterfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3104
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3105
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3106
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3107
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3108
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    #@24
    .line 3109
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3102
    return-void
.end method

.method public glGetTexParameterfv(II[FI)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3092
    const-string/jumbo v0, "glGetTexParameterfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3093
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3094
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3095
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3096
    const-string/jumbo v0, "offset"

    #@1f
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 3097
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 3098
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterfv(II[FI)V

    #@2a
    .line 3099
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 3091
    return-void
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 3124
    const-string/jumbo v0, "glGetTexParameteriv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3125
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3126
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3127
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3128
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3129
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    #@24
    .line 3130
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3123
    return-void
.end method

.method public glGetTexParameteriv(II[II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3113
    const-string/jumbo v0, "glGetTexParameteriv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3114
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3115
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3116
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3117
    const-string/jumbo v0, "offset"

    #@1f
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 3118
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 3119
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(II[II)V

    #@2a
    .line 3120
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 3112
    return-void
.end method

.method public glGetTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 3146
    const-string/jumbo v0, "glGetTexParameterxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3147
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3148
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3149
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3150
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3151
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterxv(IILjava/nio/IntBuffer;)V

    #@24
    .line 3152
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3145
    return-void
.end method

.method public glGetTexParameterxv(II[II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3135
    const-string/jumbo v0, "glGetTexParameterxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3136
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3137
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3138
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3139
    const-string/jumbo v0, "offset"

    #@1f
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 3140
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 3141
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterxv(II[II)V

    #@2a
    .line 3142
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 3134
    return-void
.end method

.method public glHint(II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 1771
    const-string/jumbo v0, "glHint"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1772
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getHintTarget(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1773
    const-string/jumbo v0, "mode"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getHintMode(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 1774
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1d
    .line 1776
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1f
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    #@22
    .line 1777
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@25
    .line 1770
    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 2
    .param p1, "buffer"    # I

    #@0
    .prologue
    .line 3156
    const-string/jumbo v1, "glIsBuffer"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3157
    const-string/jumbo v1, "buffer"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3158
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 3159
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@11
    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsBuffer(I)Z

    #@14
    move-result v0

    #@15
    .line 3160
    .local v0, "result":Z
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@18
    .line 3161
    return v0
.end method

.method public glIsEnabled(I)Z
    .locals 2
    .param p1, "cap"    # I

    #@0
    .prologue
    .line 3165
    const-string/jumbo v1, "glIsEnabled"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3166
    const-string/jumbo v1, "cap"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3167
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 3168
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@11
    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsEnabled(I)Z

    #@14
    move-result v0

    #@15
    .line 3169
    .local v0, "result":Z
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@18
    .line 3170
    return v0
.end method

.method public glIsFramebufferOES(I)Z
    .locals 2
    .param p1, "framebuffer"    # I

    #@0
    .prologue
    .line 3755
    const-string/jumbo v1, "glIsFramebufferOES"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3756
    const-string/jumbo v1, "framebuffer"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3757
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 3758
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@11
    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glIsFramebufferOES(I)Z

    #@14
    move-result v0

    #@15
    .line 3759
    .local v0, "result":Z
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@18
    .line 3760
    return v0
.end method

.method public glIsRenderbufferOES(I)Z
    .locals 1
    .param p1, "renderbuffer"    # I

    #@0
    .prologue
    .line 3765
    const-string/jumbo v0, "glIsRenderbufferOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3766
    const-string/jumbo v0, "renderbuffer"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3767
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 3768
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@11
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glIsRenderbufferOES(I)Z

    #@14
    .line 3769
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@17
    .line 3770
    const/4 v0, 0x0

    #@18
    return v0
.end method

.method public glIsTexture(I)Z
    .locals 2
    .param p1, "texture"    # I

    #@0
    .prologue
    .line 3174
    const-string/jumbo v1, "glIsTexture"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3175
    const-string/jumbo v1, "texture"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3176
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 3177
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@11
    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsTexture(I)Z

    #@14
    move-result v0

    #@15
    .line 3178
    .local v0, "result":Z
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@18
    .line 3179
    return v0
.end method

.method public glLightModelf(IF)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "param"    # F

    #@0
    .prologue
    .line 1781
    const-string/jumbo v0, "glLightModelf"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1782
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1783
    const-string/jumbo v0, "param"

    #@13
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@16
    .line 1784
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@19
    .line 1786
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1b
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelf(IF)V

    #@1e
    .line 1787
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@21
    .line 1780
    return-void
.end method

.method public glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 1802
    const-string/jumbo v0, "glLightModelfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1803
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1804
    const-string/jumbo v0, "params"

    #@13
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    #@16
    move-result v1

    #@17
    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    #@1a
    .line 1805
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1d
    .line 1807
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1f
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    #@22
    .line 1808
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@25
    .line 1801
    return-void
.end method

.method public glLightModelfv(I[FI)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 1791
    const-string/jumbo v0, "glLightModelfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1792
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1793
    const-string/jumbo v0, "params"

    #@13
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    #@16
    move-result v1

    #@17
    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    #@1a
    .line 1794
    const-string/jumbo v0, "offset"

    #@1d
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@20
    .line 1795
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@23
    .line 1797
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@25
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    #@28
    .line 1798
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2b
    .line 1790
    return-void
.end method

.method public glLightModelx(II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "param"    # I

    #@0
    .prologue
    .line 1812
    const-string/jumbo v0, "glLightModelx"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1813
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1814
    const-string/jumbo v0, "param"

    #@13
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@16
    .line 1815
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@19
    .line 1817
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1b
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    #@1e
    .line 1818
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@21
    .line 1811
    return-void
.end method

.method public glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1833
    const-string/jumbo v0, "glLightModelfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1834
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1835
    const-string/jumbo v0, "params"

    #@13
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    #@16
    move-result v1

    #@17
    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    #@1a
    .line 1836
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1d
    .line 1838
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1f
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(ILjava/nio/IntBuffer;)V

    #@22
    .line 1839
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@25
    .line 1832
    return-void
.end method

.method public glLightModelxv(I[II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 1822
    const-string/jumbo v0, "glLightModelxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1823
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1824
    const-string/jumbo v0, "params"

    #@13
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    #@16
    move-result v1

    #@17
    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    #@1a
    .line 1825
    const-string/jumbo v0, "offset"

    #@1d
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@20
    .line 1826
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@23
    .line 1828
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@25
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(I[II)V

    #@28
    .line 1829
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2b
    .line 1821
    return-void
.end method

.method public glLightf(IIF)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    #@0
    .prologue
    .line 1843
    const-string/jumbo v0, "glLightf"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1844
    const-string/jumbo v0, "light"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1845
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 1846
    const-string/jumbo v0, "param"

    #@1d
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@20
    .line 1847
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@23
    .line 1849
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@25
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    #@28
    .line 1850
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2b
    .line 1842
    return-void
.end method

.method public glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 1866
    const-string/jumbo v0, "glLightfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1867
    const-string/jumbo v0, "light"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1868
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 1869
    const-string/jumbo v0, "params"

    #@1d
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    #@20
    move-result v1

    #@21
    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    #@24
    .line 1870
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@27
    .line 1872
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@29
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    #@2c
    .line 1873
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2f
    .line 1865
    return-void
.end method

.method public glLightfv(II[FI)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1854
    const-string/jumbo v0, "glLightfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1855
    const-string/jumbo v0, "light"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1856
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 1857
    const-string/jumbo v0, "params"

    #@1d
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    #@20
    move-result v1

    #@21
    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    #@24
    .line 1858
    const-string/jumbo v0, "offset"

    #@27
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@2a
    .line 1859
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@2d
    .line 1861
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@2f
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    #@32
    .line 1862
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@35
    .line 1853
    return-void
.end method

.method public glLightx(III)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    #@0
    .prologue
    .line 1877
    const-string/jumbo v0, "glLightx"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1878
    const-string/jumbo v0, "light"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1879
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 1880
    const-string/jumbo v0, "param"

    #@1d
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@20
    .line 1881
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@23
    .line 1883
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@25
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightx(III)V

    #@28
    .line 1884
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2b
    .line 1876
    return-void
.end method

.method public glLightxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1900
    const-string/jumbo v0, "glLightxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1901
    const-string/jumbo v0, "light"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1902
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 1903
    const-string/jumbo v0, "params"

    #@1d
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    #@20
    move-result v1

    #@21
    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    #@24
    .line 1904
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@27
    .line 1906
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@29
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(IILjava/nio/IntBuffer;)V

    #@2c
    .line 1907
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2f
    .line 1899
    return-void
.end method

.method public glLightxv(II[II)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1888
    const-string/jumbo v0, "glLightxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1889
    const-string/jumbo v0, "light"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1890
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 1891
    const-string/jumbo v0, "params"

    #@1d
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    #@20
    move-result v1

    #@21
    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    #@24
    .line 1892
    const-string/jumbo v0, "offset"

    #@27
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@2a
    .line 1893
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@2d
    .line 1895
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@2f
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(II[II)V

    #@32
    .line 1896
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@35
    .line 1887
    return-void
.end method

.method public glLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    #@0
    .prologue
    .line 1911
    const-string/jumbo v0, "glLineWidth"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1912
    const-string/jumbo v0, "width"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@c
    .line 1913
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 1915
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@11
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    #@14
    .line 1916
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@17
    .line 1910
    return-void
.end method

.method public glLineWidthx(I)V
    .locals 1
    .param p1, "width"    # I

    #@0
    .prologue
    .line 1920
    const-string/jumbo v0, "glLineWidthx"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1921
    const-string/jumbo v0, "width"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1922
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 1924
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@11
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    #@14
    .line 1925
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@17
    .line 1919
    return-void
.end method

.method public glLoadIdentity()V
    .locals 1

    #@0
    .prologue
    .line 1929
    const-string/jumbo v0, "glLoadIdentity"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1930
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@9
    .line 1932
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@b
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    #@e
    .line 1933
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@11
    .line 1928
    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "m"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 1947
    const-string/jumbo v0, "glLoadMatrixf"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1948
    const-string/jumbo v0, "m"

    #@9
    const/16 v1, 0x10

    #@b
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    #@e
    .line 1949
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@11
    .line 1951
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@13
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    #@16
    .line 1952
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@19
    .line 1946
    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 2
    .param p1, "m"    # [F
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 1937
    const-string/jumbo v0, "glLoadMatrixf"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1938
    const-string/jumbo v0, "m"

    #@9
    const/16 v1, 0x10

    #@b
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    #@e
    .line 1939
    const-string/jumbo v0, "offset"

    #@11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@14
    .line 1940
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@17
    .line 1942
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@19
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    #@1c
    .line 1943
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1f
    .line 1936
    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 2
    .param p1, "m"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 1966
    const-string/jumbo v0, "glLoadMatrixx"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1967
    const-string/jumbo v0, "m"

    #@9
    const/16 v1, 0x10

    #@b
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    #@e
    .line 1968
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@11
    .line 1970
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@13
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    #@16
    .line 1971
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@19
    .line 1965
    return-void
.end method

.method public glLoadMatrixx([II)V
    .locals 2
    .param p1, "m"    # [I
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 1956
    const-string/jumbo v0, "glLoadMatrixx"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1957
    const-string/jumbo v0, "m"

    #@9
    const/16 v1, 0x10

    #@b
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    #@e
    .line 1958
    const-string/jumbo v0, "offset"

    #@11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@14
    .line 1959
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@17
    .line 1961
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@19
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx([II)V

    #@1c
    .line 1962
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1f
    .line 1955
    return-void
.end method

.method public glLoadPaletteFromModelViewMatrixOES()V
    .locals 1

    #@0
    .prologue
    .line 3403
    const-string/jumbo v0, "glLoadPaletteFromModelViewMatrixOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3404
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@9
    .line 3405
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@b
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11Ext;->glLoadPaletteFromModelViewMatrixOES()V

    #@e
    .line 3406
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@11
    .line 3402
    return-void
.end method

.method public glLogicOp(I)V
    .locals 1
    .param p1, "opcode"    # I

    #@0
    .prologue
    .line 1975
    const-string/jumbo v0, "glLogicOp"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1976
    const-string/jumbo v0, "opcode"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 1977
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 1979
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@11
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLogicOp(I)V

    #@14
    .line 1980
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@17
    .line 1974
    return-void
.end method

.method public glMaterialf(IIF)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    #@0
    .prologue
    .line 1984
    const-string/jumbo v0, "glMaterialf"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1985
    const-string/jumbo v0, "face"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1986
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 1987
    const-string/jumbo v0, "param"

    #@1d
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@20
    .line 1988
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@23
    .line 1990
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@25
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    #@28
    .line 1991
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2b
    .line 1983
    return-void
.end method

.method public glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 2007
    const-string/jumbo v0, "glMaterialfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2008
    const-string/jumbo v0, "face"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 2009
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 2010
    const-string/jumbo v0, "params"

    #@1d
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    #@20
    move-result v1

    #@21
    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    #@24
    .line 2011
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@27
    .line 2013
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@29
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    #@2c
    .line 2014
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2f
    .line 2006
    return-void
.end method

.method public glMaterialfv(II[FI)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 1995
    const-string/jumbo v0, "glMaterialfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 1996
    const-string/jumbo v0, "face"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1997
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 1998
    const-string/jumbo v0, "params"

    #@1d
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    #@20
    move-result v1

    #@21
    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    #@24
    .line 1999
    const-string/jumbo v0, "offset"

    #@27
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@2a
    .line 2000
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@2d
    .line 2002
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@2f
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    #@32
    .line 2003
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@35
    .line 1994
    return-void
.end method

.method public glMaterialx(III)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    #@0
    .prologue
    .line 2018
    const-string/jumbo v0, "glMaterialx"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2019
    const-string/jumbo v0, "face"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 2020
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 2021
    const-string/jumbo v0, "param"

    #@1d
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@20
    .line 2022
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@23
    .line 2024
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@25
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialx(III)V

    #@28
    .line 2025
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2b
    .line 2017
    return-void
.end method

.method public glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 2041
    const-string/jumbo v0, "glMaterialxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2042
    const-string/jumbo v0, "face"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 2043
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 2044
    const-string/jumbo v0, "params"

    #@1d
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    #@20
    move-result v1

    #@21
    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    #@24
    .line 2045
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@27
    .line 2047
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@29
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(IILjava/nio/IntBuffer;)V

    #@2c
    .line 2048
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2f
    .line 2040
    return-void
.end method

.method public glMaterialxv(II[II)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 2029
    const-string/jumbo v0, "glMaterialxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2030
    const-string/jumbo v0, "face"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 2031
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 2032
    const-string/jumbo v0, "params"

    #@1d
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    #@20
    move-result v1

    #@21
    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    #@24
    .line 2033
    const-string/jumbo v0, "offset"

    #@27
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@2a
    .line 2034
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@2d
    .line 2036
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@2f
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(II[II)V

    #@32
    .line 2037
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@35
    .line 2028
    return-void
.end method

.method public glMatrixIndexPointerOES(IIII)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3420
    const-string/jumbo v0, "glMatrixIndexPointerOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3421
    const-string/jumbo v0, "size"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3422
    const-string/jumbo v0, "type"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3423
    const-string/jumbo v0, "stride"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 3424
    const-string/jumbo v0, "offset"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 3425
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@21
    .line 3426
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@23
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glMatrixIndexPointerOES(IIII)V

    #@26
    .line 3427
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@29
    .line 3419
    return-void
.end method

.method public glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 3411
    const-string/jumbo v0, "glMatrixIndexPointerOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3412
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    #@9
    .line 3413
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@c
    .line 3414
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@e
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V

    #@11
    .line 3415
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@14
    .line 3410
    return-void
.end method

.method public glMatrixMode(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 2052
    const-string/jumbo v0, "glMatrixMode"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2053
    const-string/jumbo v0, "mode"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getMatrixMode(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 2054
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@13
    .line 2056
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@15
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    #@18
    .line 2057
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1b
    .line 2051
    return-void
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "m"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 2071
    const-string/jumbo v0, "glMultMatrixf"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2072
    const-string/jumbo v0, "m"

    #@9
    const/16 v1, 0x10

    #@b
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    #@e
    .line 2073
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@11
    .line 2075
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@13
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    #@16
    .line 2076
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@19
    .line 2070
    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 2
    .param p1, "m"    # [F
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 2061
    const-string/jumbo v0, "glMultMatrixf"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2062
    const-string/jumbo v0, "m"

    #@9
    const/16 v1, 0x10

    #@b
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    #@e
    .line 2063
    const-string/jumbo v0, "offset"

    #@11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@14
    .line 2064
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@17
    .line 2066
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@19
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    #@1c
    .line 2067
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1f
    .line 2060
    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 2
    .param p1, "m"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 2090
    const-string/jumbo v0, "glMultMatrixx"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2091
    const-string/jumbo v0, "m"

    #@9
    const/16 v1, 0x10

    #@b
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    #@e
    .line 2092
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@11
    .line 2094
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@13
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    #@16
    .line 2095
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@19
    .line 2089
    return-void
.end method

.method public glMultMatrixx([II)V
    .locals 2
    .param p1, "m"    # [I
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 2080
    const-string/jumbo v0, "glMultMatrixx"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2081
    const-string/jumbo v0, "m"

    #@9
    const/16 v1, 0x10

    #@b
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    #@e
    .line 2082
    const-string/jumbo v0, "offset"

    #@11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@14
    .line 2083
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@17
    .line 2085
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@19
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx([II)V

    #@1c
    .line 2086
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1f
    .line 2079
    return-void
.end method

.method public glMultiTexCoord4f(IFFFF)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "s"    # F
    .param p3, "t"    # F
    .param p4, "r"    # F
    .param p5, "q"    # F

    #@0
    .prologue
    .line 2099
    const-string/jumbo v0, "glMultiTexCoord4f"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2100
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2101
    const-string/jumbo v0, "s"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@12
    .line 2102
    const-string/jumbo v0, "t"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@18
    .line 2103
    const-string/jumbo v0, "r"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@1e
    .line 2104
    const-string/jumbo v0, "q"

    #@21
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@24
    .line 2105
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@27
    .line 2107
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@29
    move v1, p1

    #@2a
    move v2, p2

    #@2b
    move v3, p3

    #@2c
    move v4, p4

    #@2d
    move v5, p5

    #@2e
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4f(IFFFF)V

    #@31
    .line 2108
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@34
    .line 2098
    return-void
.end method

.method public glMultiTexCoord4x(IIIII)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "s"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "q"    # I

    #@0
    .prologue
    .line 2112
    const-string/jumbo v0, "glMultiTexCoord4x"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2113
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2114
    const-string/jumbo v0, "s"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2115
    const-string/jumbo v0, "t"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 2116
    const-string/jumbo v0, "r"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 2117
    const-string/jumbo v0, "q"

    #@21
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@24
    .line 2118
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@27
    .line 2120
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@29
    move v1, p1

    #@2a
    move v2, p2

    #@2b
    move v3, p3

    #@2c
    move v4, p4

    #@2d
    move v5, p5

    #@2e
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4x(IIIII)V

    #@31
    .line 2121
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@34
    .line 2111
    return-void
.end method

.method public glNormal3f(FFF)V
    .locals 1
    .param p1, "nx"    # F
    .param p2, "ny"    # F
    .param p3, "nz"    # F

    #@0
    .prologue
    .line 2125
    const-string/jumbo v0, "glNormal3f"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2126
    const-string/jumbo v0, "nx"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@c
    .line 2127
    const-string/jumbo v0, "ny"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@12
    .line 2128
    const-string/jumbo v0, "nz"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@18
    .line 2129
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1b
    .line 2131
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1d
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3f(FFF)V

    #@20
    .line 2132
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@23
    .line 2124
    return-void
.end method

.method public glNormal3x(III)V
    .locals 1
    .param p1, "nx"    # I
    .param p2, "ny"    # I
    .param p3, "nz"    # I

    #@0
    .prologue
    .line 2136
    const-string/jumbo v0, "glNormal3x"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2137
    const-string/jumbo v0, "nx"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2138
    const-string/jumbo v0, "ny"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2139
    const-string/jumbo v0, "nz"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 2140
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1b
    .line 2142
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1d
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3x(III)V

    #@20
    .line 2143
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@23
    .line 2135
    return-void
.end method

.method public glNormalPointer(III)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "stride"    # I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 3366
    const-string/jumbo v0, "glNormalPointer"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3367
    const-string/jumbo v0, "type"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3368
    const-string/jumbo v0, "stride"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3369
    const-string/jumbo v0, "offset"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 3370
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1b
    .line 3371
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@1d
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glNormalPointer(III)V

    #@20
    .line 3365
    return-void
.end method

.method public glNormalPointer(IILjava/nio/Buffer;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "stride"    # I
    .param p3, "pointer"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 2147
    const-string/jumbo v0, "glNormalPointer"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2148
    const-string/jumbo v0, "type"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2149
    const-string/jumbo v0, "stride"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2150
    const-string/jumbo v0, "pointer"

    #@15
    invoke-virtual {p3}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 2151
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 2152
    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    #@21
    const/4 v2, 0x3

    #@22
    move-object v1, p0

    #@23
    move v3, p1

    #@24
    move v4, p2

    #@25
    move-object v5, p3

    #@26
    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    #@29
    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    #@2b
    .line 2154
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@2d
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    #@30
    .line 2155
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@33
    .line 2146
    return-void
.end method

.method public glOrthof(FFFFFF)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    #@0
    .prologue
    .line 2160
    const-string/jumbo v0, "glOrthof"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2161
    const-string/jumbo v0, "left"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@c
    .line 2162
    const-string/jumbo v0, "right"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@12
    .line 2163
    const-string/jumbo v0, "bottom"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@18
    .line 2164
    const-string/jumbo v0, "top"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@1e
    .line 2165
    const-string/jumbo v0, "near"

    #@21
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@24
    .line 2166
    const-string/jumbo v0, "far"

    #@27
    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@2a
    .line 2167
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@2d
    .line 2169
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@2f
    move v1, p1

    #@30
    move v2, p2

    #@31
    move v3, p3

    #@32
    move v4, p4

    #@33
    move v5, p5

    #@34
    move v6, p6

    #@35
    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    #@38
    .line 2170
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@3b
    .line 2159
    return-void
.end method

.method public glOrthox(IIIIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "top"    # I
    .param p5, "near"    # I
    .param p6, "far"    # I

    #@0
    .prologue
    .line 2175
    const-string/jumbo v0, "glOrthox"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2176
    const-string/jumbo v0, "left"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2177
    const-string/jumbo v0, "right"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2178
    const-string/jumbo v0, "bottom"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 2179
    const-string/jumbo v0, "top"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 2180
    const-string/jumbo v0, "near"

    #@21
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@24
    .line 2181
    const-string/jumbo v0, "far"

    #@27
    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@2a
    .line 2182
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@2d
    .line 2184
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@2f
    move v1, p1

    #@30
    move v2, p2

    #@31
    move v3, p3

    #@32
    move v4, p4

    #@33
    move v5, p5

    #@34
    move v6, p6

    #@35
    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthox(IIIIII)V

    #@38
    .line 2185
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@3b
    .line 2174
    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # I

    #@0
    .prologue
    .line 2189
    const-string/jumbo v0, "glPixelStorei"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2190
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2191
    const-string/jumbo v0, "param"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2192
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@15
    .line 2194
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@17
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPixelStorei(II)V

    #@1a
    .line 2195
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1d
    .line 2188
    return-void
.end method

.method public glPointParameterf(IF)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # F

    #@0
    .prologue
    .line 3183
    const-string/jumbo v0, "glPointParameterf"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3184
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3185
    const-string/jumbo v0, "param"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@12
    .line 3186
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@15
    .line 3187
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@17
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterf(IF)V

    #@1a
    .line 3188
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1d
    .line 3182
    return-void
.end method

.method public glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 3202
    const-string/jumbo v0, "glPointParameterfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3203
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3204
    const-string/jumbo v0, "params"

    #@f
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 3205
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@19
    .line 3206
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@1b
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterfv(ILjava/nio/FloatBuffer;)V

    #@1e
    .line 3207
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@21
    .line 3201
    return-void
.end method

.method public glPointParameterfv(I[FI)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 3192
    const-string/jumbo v0, "glPointParameterfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3193
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3194
    const-string/jumbo v0, "params"

    #@f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 3195
    const-string/jumbo v0, "offset"

    #@19
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1c
    .line 3196
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3197
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterfv(I[FI)V

    #@24
    .line 3198
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3191
    return-void
.end method

.method public glPointParameterx(II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # I

    #@0
    .prologue
    .line 3211
    const-string/jumbo v0, "glPointParameterfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3212
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3213
    const-string/jumbo v0, "param"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3214
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@15
    .line 3215
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@17
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterx(II)V

    #@1a
    .line 3216
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1d
    .line 3210
    return-void
.end method

.method public glPointParameterxv(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 3230
    const-string/jumbo v0, "glPointParameterxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3231
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3232
    const-string/jumbo v0, "params"

    #@f
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 3233
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@19
    .line 3234
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@1b
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterxv(ILjava/nio/IntBuffer;)V

    #@1e
    .line 3235
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@21
    .line 3229
    return-void
.end method

.method public glPointParameterxv(I[II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 3220
    const-string/jumbo v0, "glPointParameterxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3221
    const-string/jumbo v0, "pname"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3222
    const-string/jumbo v0, "params"

    #@f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 3223
    const-string/jumbo v0, "offset"

    #@19
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1c
    .line 3224
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3225
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterxv(I[II)V

    #@24
    .line 3226
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3219
    return-void
.end method

.method public glPointSize(F)V
    .locals 1
    .param p1, "size"    # F

    #@0
    .prologue
    .line 2199
    const-string/jumbo v0, "glPointSize"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2200
    const-string/jumbo v0, "size"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@c
    .line 2201
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 2203
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@11
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    #@14
    .line 2204
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@17
    .line 2198
    return-void
.end method

.method public glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "stride"    # I
    .param p3, "pointer"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 3239
    const-string/jumbo v0, "glPointSizePointerOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3240
    const-string/jumbo v0, "type"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3241
    const-string/jumbo v0, "stride"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3242
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3243
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3244
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointSizePointerOES(IILjava/nio/Buffer;)V

    #@24
    .line 3245
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3238
    return-void
.end method

.method public glPointSizex(I)V
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 2208
    const-string/jumbo v0, "glPointSizex"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2209
    const-string/jumbo v0, "size"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2210
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 2212
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@11
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSizex(I)V

    #@14
    .line 2213
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@17
    .line 2207
    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1
    .param p1, "factor"    # F
    .param p2, "units"    # F

    #@0
    .prologue
    .line 2217
    const-string/jumbo v0, "glPolygonOffset"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2218
    const-string/jumbo v0, "factor"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@c
    .line 2219
    const-string/jumbo v0, "units"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@12
    .line 2220
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@15
    .line 2221
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@17
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffset(FF)V

    #@1a
    .line 2222
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1d
    .line 2216
    return-void
.end method

.method public glPolygonOffsetx(II)V
    .locals 1
    .param p1, "factor"    # I
    .param p2, "units"    # I

    #@0
    .prologue
    .line 2226
    const-string/jumbo v0, "glPolygonOffsetx"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2227
    const-string/jumbo v0, "factor"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2228
    const-string/jumbo v0, "units"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2229
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@15
    .line 2231
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@17
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    #@1a
    .line 2232
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1d
    .line 2225
    return-void
.end method

.method public glPopMatrix()V
    .locals 1

    #@0
    .prologue
    .line 2236
    const-string/jumbo v0, "glPopMatrix"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2237
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@9
    .line 2239
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@b
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    #@e
    .line 2240
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@11
    .line 2235
    return-void
.end method

.method public glPushMatrix()V
    .locals 1

    #@0
    .prologue
    .line 2244
    const-string/jumbo v0, "glPushMatrix"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2245
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@9
    .line 2247
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@b
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    #@e
    .line 2248
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@11
    .line 2243
    return-void
.end method

.method public glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .locals 4
    .param p1, "mantissa"    # Ljava/nio/IntBuffer;
    .param p2, "exponent"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    const/16 v3, 0x10

    #@2
    .line 2759
    const-string/jumbo v1, "glQueryMatrixxOES"

    #@5
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@8
    .line 2760
    const-string/jumbo v1, "mantissa"

    #@b
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 2761
    const-string/jumbo v1, "exponent"

    #@15
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 2762
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 2763
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    #@21
    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I

    #@24
    move-result v0

    #@25
    .line 2764
    .local v0, "valid":I
    const/4 v1, 0x2

    #@26
    invoke-direct {p0, v3, v1, p1}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    #@2d
    .line 2765
    const/4 v1, 0x0

    #@2e
    invoke-direct {p0, v3, v1, p2}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    #@35
    .line 2766
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@38
    .line 2767
    return v0
.end method

.method public glQueryMatrixxOES([II[II)I
    .locals 4
    .param p1, "mantissa"    # [I
    .param p2, "mantissaOffset"    # I
    .param p3, "exponent"    # [I
    .param p4, "exponentOffset"    # I

    #@0
    .prologue
    const/16 v3, 0x10

    #@2
    .line 2746
    const-string/jumbo v1, "glQueryMatrixxOES"

    #@5
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@8
    .line 2747
    const-string/jumbo v1, "mantissa"

    #@b
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 2748
    const-string/jumbo v1, "exponent"

    #@15
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 2749
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 2750
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    #@21
    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES([II[II)I

    #@24
    move-result v0

    #@25
    .line 2752
    .local v0, "valid":I
    const/4 v1, 0x2

    #@26
    invoke-direct {p0, v3, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    #@2d
    .line 2753
    const/4 v1, 0x0

    #@2e
    invoke-direct {p0, v3, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    #@35
    .line 2754
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@38
    .line 2755
    return v0
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "format"    # I
    .param p6, "type"    # I
    .param p7, "pixels"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 2253
    const-string/jumbo v0, "glReadPixels"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2254
    const-string/jumbo v0, "x"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2255
    const-string/jumbo v0, "y"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2256
    const-string/jumbo v0, "width"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 2257
    const-string/jumbo v0, "height"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 2258
    const-string/jumbo v0, "format"

    #@21
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@24
    .line 2259
    const-string/jumbo v0, "type"

    #@27
    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@2a
    .line 2260
    const-string/jumbo v0, "pixels"

    #@2d
    invoke-virtual {p7}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@34
    .line 2261
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@37
    .line 2263
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@39
    move v1, p1

    #@3a
    move v2, p2

    #@3b
    move v3, p3

    #@3c
    move v4, p4

    #@3d
    move v5, p5

    #@3e
    move v6, p6

    #@3f
    move-object v7, p7

    #@40
    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    #@43
    .line 2264
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@46
    .line 2252
    return-void
.end method

.method public glRenderbufferStorageOES(IIII)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "internalformat"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    #@0
    .prologue
    .line 3776
    const-string/jumbo v0, "glRenderbufferStorageOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3777
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3778
    const-string/jumbo v0, "internalformat"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3779
    const-string/jumbo v0, "width"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 3780
    const-string/jumbo v0, "height"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 3781
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@21
    .line 3782
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@23
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glRenderbufferStorageOES(IIII)V

    #@26
    .line 3783
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@29
    .line 3775
    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 1
    .param p1, "angle"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    #@0
    .prologue
    .line 2268
    const-string/jumbo v0, "glRotatef"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2269
    const-string/jumbo v0, "angle"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@c
    .line 2270
    const-string/jumbo v0, "x"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@12
    .line 2271
    const-string/jumbo v0, "y"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@18
    .line 2272
    const-string/jumbo v0, "z"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@1e
    .line 2273
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@21
    .line 2275
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@23
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    #@26
    .line 2276
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@29
    .line 2267
    return-void
.end method

.method public glRotatex(IIII)V
    .locals 1
    .param p1, "angle"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I

    #@0
    .prologue
    .line 2280
    const-string/jumbo v0, "glRotatex"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2281
    const-string/jumbo v0, "angle"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2282
    const-string/jumbo v0, "x"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2283
    const-string/jumbo v0, "y"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 2284
    const-string/jumbo v0, "z"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 2285
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@21
    .line 2287
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@23
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    #@26
    .line 2288
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@29
    .line 2279
    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1
    .param p1, "value"    # F
    .param p2, "invert"    # Z

    #@0
    .prologue
    .line 2292
    const-string/jumbo v0, "glSampleCoveragex"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2293
    const-string/jumbo v0, "value"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@c
    .line 2294
    const-string/jumbo v0, "invert"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    #@12
    .line 2295
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@15
    .line 2297
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@17
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoverage(FZ)V

    #@1a
    .line 2298
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1d
    .line 2291
    return-void
.end method

.method public glSampleCoveragex(IZ)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "invert"    # Z

    #@0
    .prologue
    .line 2302
    const-string/jumbo v0, "glSampleCoveragex"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2303
    const-string/jumbo v0, "value"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2304
    const-string/jumbo v0, "invert"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    #@12
    .line 2305
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@15
    .line 2307
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@17
    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoveragex(IZ)V

    #@1a
    .line 2308
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1d
    .line 2301
    return-void
.end method

.method public glScalef(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    #@0
    .prologue
    .line 2312
    const-string/jumbo v0, "glScalef"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2313
    const-string/jumbo v0, "x"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@c
    .line 2314
    const-string/jumbo v0, "y"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@12
    .line 2315
    const-string/jumbo v0, "z"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@18
    .line 2316
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1b
    .line 2318
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1d
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    #@20
    .line 2319
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@23
    .line 2311
    return-void
.end method

.method public glScalex(III)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    #@0
    .prologue
    .line 2323
    const-string/jumbo v0, "glScalex"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2324
    const-string/jumbo v0, "x"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2325
    const-string/jumbo v0, "y"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2326
    const-string/jumbo v0, "z"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 2327
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1b
    .line 2329
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1d
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    #@20
    .line 2330
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@23
    .line 2322
    return-void
.end method

.method public glScissor(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    #@0
    .prologue
    .line 2334
    const-string/jumbo v0, "glScissor"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2335
    const-string/jumbo v0, "x"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2336
    const-string/jumbo v0, "y"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2337
    const-string/jumbo v0, "width"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 2338
    const-string/jumbo v0, "height"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 2339
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@21
    .line 2341
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@23
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    #@26
    .line 2342
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@29
    .line 2333
    return-void
.end method

.method public glShadeModel(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 2346
    const-string/jumbo v0, "glShadeModel"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2347
    const-string/jumbo v0, "mode"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getShadeModel(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 2348
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@13
    .line 2350
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@15
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    #@18
    .line 2351
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@1b
    .line 2345
    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1
    .param p1, "func"    # I
    .param p2, "ref"    # I
    .param p3, "mask"    # I

    #@0
    .prologue
    .line 2355
    const-string/jumbo v0, "glStencilFunc"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2356
    const-string/jumbo v0, "func"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2357
    const-string/jumbo v0, "ref"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2358
    const-string/jumbo v0, "mask"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 2359
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1b
    .line 2361
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1d
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    #@20
    .line 2362
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@23
    .line 2354
    return-void
.end method

.method public glStencilMask(I)V
    .locals 1
    .param p1, "mask"    # I

    #@0
    .prologue
    .line 2366
    const-string/jumbo v0, "glStencilMask"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2367
    const-string/jumbo v0, "mask"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2368
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@f
    .line 2370
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@11
    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    #@14
    .line 2371
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@17
    .line 2365
    return-void
.end method

.method public glStencilOp(III)V
    .locals 1
    .param p1, "fail"    # I
    .param p2, "zfail"    # I
    .param p3, "zpass"    # I

    #@0
    .prologue
    .line 2375
    const-string/jumbo v0, "glStencilOp"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2376
    const-string/jumbo v0, "fail"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2377
    const-string/jumbo v0, "zfail"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2378
    const-string/jumbo v0, "zpass"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 2379
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1b
    .line 2381
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1d
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    #@20
    .line 2382
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@23
    .line 2374
    return-void
.end method

.method public glTexCoordPointer(IIII)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3375
    const-string/jumbo v0, "glTexCoordPointer"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3376
    const-string/jumbo v0, "size"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3377
    const-string/jumbo v0, "type"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3378
    const-string/jumbo v0, "stride"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 3379
    const-string/jumbo v0, "offset"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 3380
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@21
    .line 3381
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@23
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    #@26
    .line 3374
    return-void
.end method

.method public glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 2386
    const-string/jumbo v0, "glTexCoordPointer"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2387
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    #@9
    .line 2388
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@c
    .line 2389
    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    #@e
    move-object v1, p0

    #@f
    move v2, p1

    #@10
    move v3, p2

    #@11
    move v4, p3

    #@12
    move-object v5, p4

    #@13
    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    #@16
    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    #@18
    .line 2391
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1a
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    #@1d
    .line 2392
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@20
    .line 2385
    return-void
.end method

.method public glTexEnvf(IIF)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    #@0
    .prologue
    .line 2396
    const-string/jumbo v0, "glTexEnvf"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2397
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 2398
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 2399
    const-string/jumbo v0, "param"

    #@1d
    invoke-direct {p0, p3}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamName(F)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 2400
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@27
    .line 2402
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@29
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    #@2c
    .line 2403
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2f
    .line 2395
    return-void
.end method

.method public glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 2419
    const-string/jumbo v0, "glTexEnvfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2420
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 2421
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 2422
    const-string/jumbo v0, "params"

    #@1d
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    #@20
    move-result v1

    #@21
    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    #@24
    .line 2423
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@27
    .line 2425
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@29
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    #@2c
    .line 2426
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2f
    .line 2418
    return-void
.end method

.method public glTexEnvfv(II[FI)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 2407
    const-string/jumbo v0, "glTexEnvfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2408
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 2409
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 2410
    const-string/jumbo v0, "params"

    #@1d
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    #@20
    move-result v1

    #@21
    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    #@24
    .line 2411
    const-string/jumbo v0, "offset"

    #@27
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@2a
    .line 2412
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@2d
    .line 2414
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@2f
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(II[FI)V

    #@32
    .line 2415
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@35
    .line 2406
    return-void
.end method

.method public glTexEnvi(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    #@0
    .prologue
    .line 3249
    const-string/jumbo v0, "glTexEnvi"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3250
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3251
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3252
    const-string/jumbo v0, "param"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 3253
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1b
    .line 3254
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@1d
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvi(III)V

    #@20
    .line 3255
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@23
    .line 3248
    return-void
.end method

.method public glTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 3270
    const-string/jumbo v0, "glTexEnviv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3271
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3272
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3273
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3274
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3275
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnviv(IILjava/nio/IntBuffer;)V

    #@24
    .line 3276
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3269
    return-void
.end method

.method public glTexEnviv(II[II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3259
    const-string/jumbo v0, "glTexEnviv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3260
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3261
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3262
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3263
    const-string/jumbo v0, "offset"

    #@1f
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 3264
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 3265
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnviv(II[II)V

    #@2a
    .line 3266
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 3258
    return-void
.end method

.method public glTexEnvx(III)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    #@0
    .prologue
    .line 2430
    const-string/jumbo v0, "glTexEnvx"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2431
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 2432
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 2433
    const-string/jumbo v0, "param"

    #@1d
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@20
    .line 2434
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@23
    .line 2436
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@25
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    #@28
    .line 2437
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2b
    .line 2429
    return-void
.end method

.method public glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 2453
    const-string/jumbo v0, "glTexEnvxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2454
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 2455
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 2456
    const-string/jumbo v0, "params"

    #@1d
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    #@20
    move-result v1

    #@21
    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    #@24
    .line 2457
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@27
    .line 2459
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@29
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    #@2c
    .line 2460
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2f
    .line 2452
    return-void
.end method

.method public glTexEnvxv(II[II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 2441
    const-string/jumbo v0, "glTexEnvxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2442
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 2443
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 2444
    const-string/jumbo v0, "params"

    #@1d
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    #@20
    move-result v1

    #@21
    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    #@24
    .line 2445
    const-string/jumbo v0, "offset"

    #@27
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@2a
    .line 2446
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@2d
    .line 2448
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@2f
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(II[II)V

    #@32
    .line 2449
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@35
    .line 2440
    return-void
.end method

.method public glTexGenf(IIF)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    #@0
    .prologue
    .line 3788
    const-string/jumbo v0, "glTexGenf"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3789
    const-string/jumbo v0, "coord"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3790
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3791
    const-string/jumbo v0, "param"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@18
    .line 3792
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1b
    .line 3793
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@1d
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenf(IIF)V

    #@20
    .line 3794
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@23
    .line 3787
    return-void
.end method

.method public glTexGenfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 3811
    const-string/jumbo v0, "glTexGenfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3812
    const-string/jumbo v0, "coord"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3813
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3814
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3815
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3816
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenfv(IILjava/nio/FloatBuffer;)V

    #@24
    .line 3817
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3810
    return-void
.end method

.method public glTexGenfv(II[FI)V
    .locals 2
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3799
    const-string/jumbo v0, "glTexGenfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3800
    const-string/jumbo v0, "coord"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3801
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3802
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3803
    const-string/jumbo v0, "offset"

    #@1f
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 3804
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 3805
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenfv(II[FI)V

    #@2a
    .line 3806
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 3798
    return-void
.end method

.method public glTexGeni(III)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    #@0
    .prologue
    .line 3822
    const-string/jumbo v0, "glTexGeni"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3823
    const-string/jumbo v0, "coord"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3824
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3825
    const-string/jumbo v0, "param"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 3826
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1b
    .line 3827
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@1d
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeni(III)V

    #@20
    .line 3828
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@23
    .line 3821
    return-void
.end method

.method public glTexGeniv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 3845
    const-string/jumbo v0, "glTexGeniv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3846
    const-string/jumbo v0, "coord"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3847
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3848
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3849
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3850
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeniv(IILjava/nio/IntBuffer;)V

    #@24
    .line 3851
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3844
    return-void
.end method

.method public glTexGeniv(II[II)V
    .locals 2
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3833
    const-string/jumbo v0, "glTexGeniv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3834
    const-string/jumbo v0, "coord"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3835
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3836
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3837
    const-string/jumbo v0, "offset"

    #@1f
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 3838
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 3839
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeniv(II[II)V

    #@2a
    .line 3840
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 3832
    return-void
.end method

.method public glTexGenx(III)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    #@0
    .prologue
    .line 3856
    const-string/jumbo v0, "glTexGenx"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3857
    const-string/jumbo v0, "coord"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3858
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3859
    const-string/jumbo v0, "param"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 3860
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1b
    .line 3861
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@1d
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenx(III)V

    #@20
    .line 3862
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@23
    .line 3855
    return-void
.end method

.method public glTexGenxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 3879
    const-string/jumbo v0, "glTexGenxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3880
    const-string/jumbo v0, "coord"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3881
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3882
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3883
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3884
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenxv(IILjava/nio/IntBuffer;)V

    #@24
    .line 3885
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3878
    return-void
.end method

.method public glTexGenxv(II[II)V
    .locals 2
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3867
    const-string/jumbo v0, "glTexGenxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3868
    const-string/jumbo v0, "coord"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3869
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3870
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3871
    const-string/jumbo v0, "offset"

    #@1f
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 3872
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 3873
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenxv(II[II)V

    #@2a
    .line 3874
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 3866
    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 11
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "pixels"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 2466
    const-string/jumbo v1, "glTexImage2D"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2467
    const-string/jumbo v1, "target"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2468
    const-string/jumbo v1, "level"

    #@f
    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2469
    const-string/jumbo v1, "internalformat"

    #@15
    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 2470
    const-string/jumbo v1, "width"

    #@1b
    invoke-direct {p0, v1, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 2471
    const-string/jumbo v1, "height"

    #@21
    move/from16 v0, p5

    #@23
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@26
    .line 2472
    const-string/jumbo v1, "border"

    #@29
    move/from16 v0, p6

    #@2b
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@2e
    .line 2473
    const-string/jumbo v1, "format"

    #@31
    move/from16 v0, p7

    #@33
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@36
    .line 2474
    const-string/jumbo v1, "type"

    #@39
    move/from16 v0, p8

    #@3b
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@3e
    .line 2475
    const-string/jumbo v1, "pixels"

    #@41
    invoke-virtual/range {p9 .. p9}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@48
    .line 2476
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@4b
    .line 2478
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@4d
    move v2, p1

    #@4e
    move v3, p2

    #@4f
    move v4, p3

    #@50
    move v5, p4

    #@51
    move/from16 v6, p5

    #@53
    move/from16 v7, p6

    #@55
    move/from16 v8, p7

    #@57
    move/from16 v9, p8

    #@59
    move-object/from16 v10, p9

    #@5b
    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    #@5e
    .line 2480
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@61
    .line 2465
    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    #@0
    .prologue
    .line 2484
    const-string/jumbo v0, "glTexParameterf"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2485
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 2486
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 2487
    const-string/jumbo v0, "param"

    #@1d
    invoke-direct {p0, p3}, Landroid/opengl/GLLogWrapper;->getTextureParamName(F)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 2488
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@27
    .line 2490
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@29
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    #@2c
    .line 2491
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2f
    .line 2483
    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 3292
    const-string/jumbo v0, "glTexParameterfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3293
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3294
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3295
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3296
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3297
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    #@24
    .line 3298
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3291
    return-void
.end method

.method public glTexParameterfv(II[FI)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3281
    const-string/jumbo v0, "glTexParameterfv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3282
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3283
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3284
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3285
    const-string/jumbo v0, "offset"

    #@1f
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 3286
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 3287
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    #@2a
    .line 3288
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 3280
    return-void
.end method

.method public glTexParameteri(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    #@0
    .prologue
    .line 3302
    const-string/jumbo v0, "glTexParameterxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3303
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3304
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3305
    const-string/jumbo v0, "param"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 3306
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1b
    .line 3307
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@1d
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    #@20
    .line 3308
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@23
    .line 3301
    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 2517
    const-string/jumbo v0, "glTexParameteriv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2518
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 2519
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 2520
    const-string/jumbo v0, "params"

    #@1d
    const/4 v1, 0x4

    #@1e
    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    #@21
    .line 2521
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@24
    .line 2523
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@26
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    #@29
    .line 2524
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2c
    .line 2516
    return-void
.end method

.method public glTexParameteriv(II[II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 2506
    const-string/jumbo v0, "glTexParameteriv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2507
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 2508
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 2509
    const-string/jumbo v0, "params"

    #@1d
    const/4 v1, 0x4

    #@1e
    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    #@21
    .line 2510
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@24
    .line 2512
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@26
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    #@29
    .line 2513
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2c
    .line 2505
    return-void
.end method

.method public glTexParameterx(III)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    #@0
    .prologue
    .line 2495
    const-string/jumbo v0, "glTexParameterx"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2496
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 2497
    const-string/jumbo v0, "pname"

    #@13
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 2498
    const-string/jumbo v0, "param"

    #@1d
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@20
    .line 2499
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@23
    .line 2501
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@25
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    #@28
    .line 2502
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2b
    .line 2494
    return-void
.end method

.method public glTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 3324
    const-string/jumbo v0, "glTexParameterxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3325
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3326
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3327
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3328
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1f
    .line 3329
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@21
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterxv(IILjava/nio/IntBuffer;)V

    #@24
    .line 3330
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@27
    .line 3323
    return-void
.end method

.method public glTexParameterxv(II[II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3313
    const-string/jumbo v0, "glTexParameterxv"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3314
    const-string/jumbo v0, "target"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3315
    const-string/jumbo v0, "pname"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3316
    const-string/jumbo v0, "params"

    #@15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 3317
    const-string/jumbo v0, "offset"

    #@1f
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 3318
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@25
    .line 3319
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@27
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterxv(II[II)V

    #@2a
    .line 3320
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@2d
    .line 3312
    return-void
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 11
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "pixels"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 2530
    const-string/jumbo v1, "glTexSubImage2D"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2531
    const-string/jumbo v1, "target"

    #@9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 2532
    const-string/jumbo v1, "level"

    #@13
    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@16
    .line 2533
    const-string/jumbo v1, "xoffset"

    #@19
    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1c
    .line 2534
    const-string/jumbo v1, "yoffset"

    #@1f
    invoke-direct {p0, v1, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@22
    .line 2535
    const-string/jumbo v1, "width"

    #@25
    move/from16 v0, p5

    #@27
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@2a
    .line 2536
    const-string/jumbo v1, "height"

    #@2d
    move/from16 v0, p6

    #@2f
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@32
    .line 2537
    const-string/jumbo v1, "format"

    #@35
    move/from16 v0, p7

    #@37
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@3a
    .line 2538
    const-string/jumbo v1, "type"

    #@3d
    move/from16 v0, p8

    #@3f
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@42
    .line 2539
    const-string/jumbo v1, "pixels"

    #@45
    invoke-virtual/range {p9 .. p9}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@4c
    .line 2540
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@4f
    .line 2541
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@51
    move v2, p1

    #@52
    move v3, p2

    #@53
    move v4, p3

    #@54
    move v5, p4

    #@55
    move/from16 v6, p5

    #@57
    move/from16 v7, p6

    #@59
    move/from16 v8, p7

    #@5b
    move/from16 v9, p8

    #@5d
    move-object/from16 v10, p9

    #@5f
    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    #@62
    .line 2543
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@65
    .line 2529
    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    #@0
    .prologue
    .line 2547
    const-string/jumbo v0, "glTranslatef"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2548
    const-string/jumbo v0, "x"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@c
    .line 2549
    const-string/jumbo v0, "y"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@12
    .line 2550
    const-string/jumbo v0, "z"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    #@18
    .line 2551
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1b
    .line 2552
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1d
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    #@20
    .line 2553
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@23
    .line 2546
    return-void
.end method

.method public glTranslatex(III)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    #@0
    .prologue
    .line 2557
    const-string/jumbo v0, "glTranslatex"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2558
    const-string/jumbo v0, "x"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2559
    const-string/jumbo v0, "y"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2560
    const-string/jumbo v0, "z"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 2561
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@1b
    .line 2562
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1d
    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    #@20
    .line 2563
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@23
    .line 2556
    return-void
.end method

.method public glVertexPointer(IIII)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3385
    const-string/jumbo v0, "glVertexPointer"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3386
    const-string/jumbo v0, "size"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3387
    const-string/jumbo v0, "type"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3388
    const-string/jumbo v0, "stride"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 3389
    const-string/jumbo v0, "offset"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 3390
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@21
    .line 3391
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@23
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    #@26
    .line 3384
    return-void
.end method

.method public glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 2567
    const-string/jumbo v0, "glVertexPointer"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2568
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    #@9
    .line 2569
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@c
    .line 2570
    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    #@e
    move-object v1, p0

    #@f
    move v2, p1

    #@10
    move v3, p2

    #@11
    move v4, p3

    #@12
    move-object v5, p4

    #@13
    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    #@16
    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    #@18
    .line 2571
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@1a
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    #@1d
    .line 2572
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@20
    .line 2566
    return-void
.end method

.method public glViewport(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    #@0
    .prologue
    .line 2576
    const-string/jumbo v0, "glViewport"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 2577
    const-string/jumbo v0, "x"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 2578
    const-string/jumbo v0, "y"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 2579
    const-string/jumbo v0, "width"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 2580
    const-string/jumbo v0, "height"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 2581
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@21
    .line 2582
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@23
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    #@26
    .line 2583
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@29
    .line 2575
    return-void
.end method

.method public glWeightPointerOES(IIII)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 3440
    const-string/jumbo v0, "glWeightPointerOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3441
    const-string/jumbo v0, "size"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 3442
    const-string/jumbo v0, "type"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 3443
    const-string/jumbo v0, "stride"

    #@15
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 3444
    const-string/jumbo v0, "offset"

    #@1b
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    #@1e
    .line 3445
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@21
    .line 3446
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@23
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glWeightPointerOES(IIII)V

    #@26
    .line 3447
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@29
    .line 3439
    return-void
.end method

.method public glWeightPointerOES(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 3432
    const-string/jumbo v0, "glWeightPointerOES"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 3433
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    #@9
    .line 3434
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    #@c
    .line 3435
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@e
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glWeightPointerOES(IIILjava/nio/Buffer;)V

    #@11
    .line 3436
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    #@14
    .line 3431
    return-void
.end method
