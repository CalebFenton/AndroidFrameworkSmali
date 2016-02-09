.class public Lcom/google/android/filterpacks/facedetect/LipDiff;
.super Landroid/filterfw/core/NativeBuffer;
.source "LipDiff.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 92
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

.method private native nativeGetDirectionDiff(I)F
.end method

.method private native nativeGetFaceId(I)I
.end method

.method private native nativeGetHorizontalDiff(I)F
.end method

.method private native nativeGetTotalDiff(I)F
.end method

.method private native nativeGetVerticalDiff(I)F
.end method

.method private native nativeSetDirectionDiff(IF)Z
.end method

.method private native nativeSetFaceId(II)Z
.end method

.method private native nativeSetHorizontalDiff(IF)Z
.end method

.method private native nativeSetTotalDiff(IF)Z
.end method

.method private native nativeSetVerticalDiff(IF)Z
.end method


# virtual methods
.method public getDirectionDiff(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/LipDiff;->assertReadable()V

    #@3
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/LipDiff;->nativeGetDirectionDiff(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public native getElementSize()I
.end method

.method public getFaceId(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/LipDiff;->assertReadable()V

    #@3
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/LipDiff;->nativeGetFaceId(I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getHorizontalDiff(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/LipDiff;->assertReadable()V

    #@3
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/LipDiff;->nativeGetHorizontalDiff(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getTotalDiff(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/LipDiff;->assertReadable()V

    #@3
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/LipDiff;->nativeGetTotalDiff(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getVerticalDiff(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/LipDiff;->assertReadable()V

    #@3
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/LipDiff;->nativeGetVerticalDiff(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public setDirectionDiff(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/LipDiff;->assertWritable()V

    #@3
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/LipDiff;->nativeSetDirectionDiff(IF)Z

    #@6
    .line 56
    return-void
.end method

.method public setFaceId(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/LipDiff;->assertWritable()V

    #@3
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/LipDiff;->nativeSetFaceId(II)Z

    #@6
    .line 46
    return-void
.end method

.method public setHorizontalDiff(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/LipDiff;->assertWritable()V

    #@3
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/LipDiff;->nativeSetHorizontalDiff(IF)Z

    #@6
    .line 61
    return-void
.end method

.method public setTotalDiff(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/LipDiff;->assertWritable()V

    #@3
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/LipDiff;->nativeSetTotalDiff(IF)Z

    #@6
    .line 51
    return-void
.end method

.method public setVerticalDiff(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/LipDiff;->assertWritable()V

    #@3
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/LipDiff;->nativeSetVerticalDiff(IF)Z

    #@6
    .line 66
    return-void
.end method
