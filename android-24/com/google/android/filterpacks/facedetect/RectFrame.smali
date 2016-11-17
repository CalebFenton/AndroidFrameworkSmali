.class public Lcom/google/android/filterpacks/facedetect/RectFrame;
.super Landroid/filterfw/core/NativeBuffer;
.source "RectFrame.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 78
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

.method private native nativeGetHeight(I)F
.end method

.method private native nativeGetWidth(I)F
.end method

.method private native nativeGetX(I)F
.end method

.method private native nativeGetY(I)F
.end method

.method private native nativeSetHeight(IF)Z
.end method

.method private native nativeSetWidth(IF)Z
.end method

.method private native nativeSetX(IF)Z
.end method

.method private native nativeSetY(IF)Z
.end method


# virtual methods
.method public native getElementSize()I
.end method

.method public getHeight(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/RectFrame;->assertReadable()V

    #@3
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/RectFrame;->nativeGetHeight(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getWidth(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/RectFrame;->assertReadable()V

    #@3
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/RectFrame;->nativeGetWidth(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getX(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/RectFrame;->assertReadable()V

    #@3
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/RectFrame;->nativeGetX(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getY(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/RectFrame;->assertReadable()V

    #@3
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/RectFrame;->nativeGetY(I)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public setHeight(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/RectFrame;->assertWritable()V

    #@3
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/RectFrame;->nativeSetHeight(IF)Z

    #@6
    .line 56
    return-void
.end method

.method public setWidth(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/RectFrame;->assertWritable()V

    #@3
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/RectFrame;->nativeSetWidth(IF)Z

    #@6
    .line 51
    return-void
.end method

.method public setX(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/RectFrame;->assertWritable()V

    #@3
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/RectFrame;->nativeSetX(IF)Z

    #@6
    .line 41
    return-void
.end method

.method public setY(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/RectFrame;->assertWritable()V

    #@3
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/RectFrame;->nativeSetY(IF)Z

    #@6
    .line 46
    return-void
.end method
