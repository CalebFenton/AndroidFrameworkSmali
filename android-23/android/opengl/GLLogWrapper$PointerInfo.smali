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
.field public mPointer:Ljava/nio/Buffer;

.field public mSize:I

.field public mStride:I

.field public mTempByteBuffer:Ljava/nio/ByteBuffer;

.field public mType:I

.field final synthetic this$0:Landroid/opengl/GLLogWrapper;


# direct methods
.method public constructor <init>(Landroid/opengl/GLLogWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/opengl/GLLogWrapper;

    #@0
    .prologue
    .line 3905
    iput-object p1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->this$0:Landroid/opengl/GLLogWrapper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/opengl/GLLogWrapper;
    .param p2, "size"    # I
    .param p3, "type"    # I
    .param p4, "stride"    # I
    .param p5, "pointer"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 3908
    iput-object p1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->this$0:Landroid/opengl/GLLogWrapper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3909
    iput p2, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mSize:I

    #@7
    .line 3910
    iput p3, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mType:I

    #@9
    .line 3911
    iput p4, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    #@b
    .line 3912
    iput-object p5, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mPointer:Ljava/nio/Buffer;

    #@d
    .line 3908
    return-void
.end method


# virtual methods
.method public bindByteBuffer()V
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3937
    iget-object v1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mPointer:Ljava/nio/Buffer;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    iput-object v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    #@7
    .line 3936
    return-void

    #@8
    .line 3937
    :cond_0
    iget-object v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->this$0:Landroid/opengl/GLLogWrapper;

    #@a
    iget-object v1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mPointer:Ljava/nio/Buffer;

    #@c
    const/4 v2, -0x1

    #@d
    invoke-static {v0, v2, v1}, Landroid/opengl/GLLogWrapper;->-wrap0(Landroid/opengl/GLLogWrapper;ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    #@10
    move-result-object v0

    #@11
    goto :goto_0
.end method

.method public getStride()I
    .locals 2

    #@0
    .prologue
    .line 3933
    iget v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    #@2
    if-lez v0, :cond_0

    #@4
    iget v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    iget v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mType:I

    #@9
    invoke-virtual {p0, v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->sizeof(I)I

    #@c
    move-result v0

    #@d
    iget v1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mSize:I

    #@f
    mul-int/2addr v0, v1

    #@10
    goto :goto_0
.end method

.method public sizeof(I)I
    .locals 2
    .param p1, "type"    # I

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    const/4 v0, 0x1

    #@2
    .line 3916
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 3928
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 3918
    :sswitch_0
    return v0

    #@8
    .line 3920
    :sswitch_1
    return v0

    #@9
    .line 3922
    :sswitch_2
    const/4 v0, 0x2

    #@a
    return v0

    #@b
    .line 3924
    :sswitch_3
    return v1

    #@c
    .line 3926
    :sswitch_4
    return v1

    #@d
    .line 3916
    nop

    #@e
    :sswitch_data_0
    .sparse-switch
        0x1400 -> :sswitch_1
        0x1401 -> :sswitch_0
        0x1402 -> :sswitch_2
        0x1406 -> :sswitch_4
        0x140c -> :sswitch_3
    .end sparse-switch
.end method

.method public unbindByteBuffer()V
    .locals 1

    #@0
    .prologue
    .line 3941
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    #@3
    .line 3940
    return-void
.end method
