.class Landroid/opengl/GLLogWrapper$PointerInfo;
.super Ljava/lang/Object;
.source "GLLogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLLogWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PointerInfo"
.end annotation


# instance fields
.field public blacklist mPointer:Ljava/nio/Buffer;

.field public blacklist mSize:I

.field public blacklist mStride:I

.field public blacklist mTempByteBuffer:Ljava/nio/ByteBuffer;

.field public blacklist mType:I

.field final synthetic blacklist this$0:Landroid/opengl/GLLogWrapper;


# direct methods
.method public constructor blacklist <init>(Landroid/opengl/GLLogWrapper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 3905
    iput-object p1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->this$0:Landroid/opengl/GLLogWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3906
    return-void
.end method

.method public constructor blacklist <init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V
    .registers 6
    .param p2, "size"    # I
    .param p3, "type"    # I
    .param p4, "stride"    # I
    .param p5, "pointer"    # Ljava/nio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 3908
    iput-object p1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->this$0:Landroid/opengl/GLLogWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3909
    iput p2, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mSize:I

    .line 3910
    iput p3, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mType:I

    .line 3911
    iput p4, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    .line 3912
    iput-object p5, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mPointer:Ljava/nio/Buffer;

    .line 3913
    return-void
.end method


# virtual methods
.method public blacklist bindByteBuffer()V
    .registers 4

    .line 3937
    iget-object v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mPointer:Ljava/nio/Buffer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_f

    :cond_6
    iget-object v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->this$0:Landroid/opengl/GLLogWrapper;

    const/4 v1, -0x1

    iget-object v2, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mPointer:Ljava/nio/Buffer;

    invoke-static {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->-$$Nest$mtoByteBuffer(Landroid/opengl/GLLogWrapper;ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_f
    iput-object v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    .line 3938
    return-void
.end method

.method public blacklist getStride()I
    .registers 3

    .line 3933
    iget v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    if-lez v0, :cond_7

    iget v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    goto :goto_10

    :cond_7
    iget v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mType:I

    invoke-virtual {p0, v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->sizeof(I)I

    move-result v0

    iget v1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mSize:I

    mul-int/2addr v0, v1

    :goto_10
    return v0
.end method

.method public blacklist sizeof(I)I
    .registers 4
    .param p1, "type"    # I

    .line 3916
    const/4 v0, 0x4

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_e

    .line 3928
    const/4 v0, 0x0

    return v0

    .line 3924
    :sswitch_7
    return v0

    .line 3926
    :sswitch_8
    return v0

    .line 3922
    :sswitch_9
    const/4 v0, 0x2

    return v0

    .line 3918
    :sswitch_b
    return v1

    .line 3920
    :sswitch_c
    return v1

    nop

    :sswitch_data_e
    .sparse-switch
        0x1400 -> :sswitch_c
        0x1401 -> :sswitch_b
        0x1402 -> :sswitch_9
        0x1406 -> :sswitch_8
        0x140c -> :sswitch_7
    .end sparse-switch
.end method

.method public blacklist unbindByteBuffer()V
    .registers 2

    .line 3941
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    .line 3942
    return-void
.end method
