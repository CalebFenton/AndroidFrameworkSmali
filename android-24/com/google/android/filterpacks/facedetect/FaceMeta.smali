.class public Lcom/google/android/filterpacks/facedetect/FaceMeta;
.super Landroid/filterfw/core/NativeBuffer;
.source "FaceMeta.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 302
    const-string/jumbo v0, "filterpack_facedetect"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 12
    invoke-direct {p0}, Landroid/filterfw/core/NativeBuffer;-><init>()V

    #@3
    .line 11
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "count"    # I

    #@0
    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeBuffer;-><init>(I)V

    #@3
    .line 15
    return-void
.end method

.method private native nativeGetConfidence(I)F
.end method

.method private native nativeGetFaceX0(I)F
.end method

.method private native nativeGetFaceX1(I)F
.end method

.method private native nativeGetFaceY0(I)F
.end method

.method private native nativeGetFaceY1(I)F
.end method

.method private native nativeGetId(I)I
.end method

.method private native nativeGetLeftEyeX(I)F
.end method

.method private native nativeGetLeftEyeY(I)F
.end method

.method private native nativeGetLowerLipX(I)F
.end method

.method private native nativeGetLowerLipY(I)F
.end method

.method private native nativeGetMouthLeftX(I)F
.end method

.method private native nativeGetMouthLeftY(I)F
.end method

.method private native nativeGetMouthRightX(I)F
.end method

.method private native nativeGetMouthRightY(I)F
.end method

.method private native nativeGetMouthX(I)F
.end method

.method private native nativeGetMouthY(I)F
.end method

.method private native nativeGetRightEyeX(I)F
.end method

.method private native nativeGetRightEyeY(I)F
.end method

.method private native nativeGetUpperLipX(I)F
.end method

.method private native nativeGetUpperLipY(I)F
.end method

.method private native nativeSetConfidence(IF)Z
.end method

.method private native nativeSetFaceX0(IF)Z
.end method

.method private native nativeSetFaceX1(IF)Z
.end method

.method private native nativeSetFaceY0(IF)Z
.end method

.method private native nativeSetFaceY1(IF)Z
.end method

.method private native nativeSetId(II)Z
.end method

.method private native nativeSetLeftEyeX(IF)Z
.end method

.method private native nativeSetLeftEyeY(IF)Z
.end method

.method private native nativeSetLowerLipX(IF)Z
.end method

.method private native nativeSetLowerLipY(IF)Z
.end method

.method private native nativeSetMouthLeftX(IF)Z
.end method

.method private native nativeSetMouthLeftY(IF)Z
.end method

.method private native nativeSetMouthRightX(IF)Z
.end method

.method private native nativeSetMouthRightY(IF)Z
.end method

.method private native nativeSetMouthX(IF)Z
.end method

.method private native nativeSetMouthY(IF)Z
.end method

.method private native nativeSetRightEyeX(IF)Z
.end method

.method private native nativeSetRightEyeY(IF)Z
.end method

.method private native nativeSetUpperLipX(IF)Z
.end method

.method private native nativeSetUpperLipY(IF)Z
.end method


# virtual methods
.method public getConfidence(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    #@3
    .line 118
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetConfidence(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public native getElementSize()I
.end method

.method public getFaceX0(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    #@3
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetFaceX0(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getFaceX1(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    #@3
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetFaceX1(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getFaceY0(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    #@3
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetFaceY0(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getFaceY1(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    #@3
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetFaceY1(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getId(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    #@3
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetId(I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getLeftEyeX(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    #@3
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetLeftEyeX(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getLeftEyeY(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    #@3
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetLeftEyeY(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getLowerLipX(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    #@3
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetLowerLipX(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getLowerLipY(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    #@3
    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetLowerLipY(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getMouthLeftX(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    #@3
    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetMouthLeftX(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getMouthLeftY(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    #@3
    .line 103
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetMouthLeftY(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getMouthRightX(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    #@3
    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetMouthRightX(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getMouthRightY(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    #@3
    .line 113
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetMouthRightY(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getMouthX(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    #@3
    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetMouthX(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getMouthY(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    #@3
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetMouthY(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getRightEyeX(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    #@3
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetRightEyeX(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getRightEyeY(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    #@3
    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetRightEyeY(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getUpperLipX(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    #@3
    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetUpperLipX(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getUpperLipY(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    #@3
    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetUpperLipY(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public setConfidence(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    #@3
    .line 218
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetConfidence(IF)Z

    #@6
    .line 216
    return-void
.end method

.method public setFaceX0(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    #@3
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetFaceX0(IF)Z

    #@6
    .line 126
    return-void
.end method

.method public setFaceX1(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    #@3
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetFaceX1(IF)Z

    #@6
    .line 136
    return-void
.end method

.method public setFaceY0(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    #@3
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetFaceY0(IF)Z

    #@6
    .line 131
    return-void
.end method

.method public setFaceY1(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    #@3
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetFaceY1(IF)Z

    #@6
    .line 141
    return-void
.end method

.method public setId(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    #@3
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetId(II)Z

    #@6
    .line 121
    return-void
.end method

.method public setLeftEyeX(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    #@3
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetLeftEyeX(IF)Z

    #@6
    .line 146
    return-void
.end method

.method public setLeftEyeY(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    #@3
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetLeftEyeY(IF)Z

    #@6
    .line 151
    return-void
.end method

.method public setLowerLipX(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    #@3
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetLowerLipX(IF)Z

    #@6
    .line 166
    return-void
.end method

.method public setLowerLipY(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    #@3
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetLowerLipY(IF)Z

    #@6
    .line 171
    return-void
.end method

.method public setMouthLeftX(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    #@3
    .line 198
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetMouthLeftX(IF)Z

    #@6
    .line 196
    return-void
.end method

.method public setMouthLeftY(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    #@3
    .line 203
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetMouthLeftY(IF)Z

    #@6
    .line 201
    return-void
.end method

.method public setMouthRightX(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    #@3
    .line 208
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetMouthRightX(IF)Z

    #@6
    .line 206
    return-void
.end method

.method public setMouthRightY(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    #@3
    .line 213
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetMouthRightY(IF)Z

    #@6
    .line 211
    return-void
.end method

.method public setMouthX(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    #@3
    .line 188
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetMouthX(IF)Z

    #@6
    .line 186
    return-void
.end method

.method public setMouthY(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    #@3
    .line 193
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetMouthY(IF)Z

    #@6
    .line 191
    return-void
.end method

.method public setRightEyeX(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    #@3
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetRightEyeX(IF)Z

    #@6
    .line 156
    return-void
.end method

.method public setRightEyeY(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    #@3
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetRightEyeY(IF)Z

    #@6
    .line 161
    return-void
.end method

.method public setUpperLipX(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    #@3
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetUpperLipX(IF)Z

    #@6
    .line 176
    return-void
.end method

.method public setUpperLipY(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    #@3
    .line 183
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetUpperLipY(IF)Z

    #@6
    .line 181
    return-void
.end method
