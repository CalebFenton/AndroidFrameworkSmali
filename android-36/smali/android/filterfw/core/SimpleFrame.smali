.class public Landroid/filterfw/core/SimpleFrame;
.super Landroid/filterfw/core/Frame;
.source "SimpleFrame.java"


# instance fields
.field private greylist-max-o mObject:Ljava/lang/Object;


# direct methods
.method constructor greylist-max-o <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .registers 4
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 37
    invoke-direct {p0, p1}, Landroid/filterfw/core/SimpleFrame;->initWithFormat(Landroid/filterfw/core/FrameFormat;)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/SimpleFrame;->setReusable(Z)V

    .line 39
    return-void
.end method

.method private greylist-max-o initWithFormat(Landroid/filterfw/core/FrameFormat;)V
    .registers 5
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    .line 49
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getLength()I

    move-result v0

    .line 50
    .local v0, "count":I
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v1

    .line 51
    .local v1, "baseType":I
    packed-switch v1, :pswitch_data_2a

    .line 68
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    goto :goto_28

    .line 65
    :pswitch_f
    new-array v2, v0, [D

    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    .line 66
    goto :goto_28

    .line 62
    :pswitch_14
    new-array v2, v0, [F

    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    .line 63
    goto :goto_28

    .line 59
    :pswitch_19
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    .line 60
    goto :goto_28

    .line 56
    :pswitch_1e
    new-array v2, v0, [S

    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    .line 57
    goto :goto_28

    .line 53
    :pswitch_23
    new-array v2, v0, [B

    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    .line 54
    nop

    .line 71
    :goto_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x2
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_14
        :pswitch_f
    .end packed-switch
.end method

.method private greylist-max-o setFormatObjectClass(Ljava/lang/Class;)V
    .registers 3
    .param p1, "objectClass"    # Ljava/lang/Class;

    .line 132
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 133
    .local v0, "format":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v0, p1}, Landroid/filterfw/core/MutableFrameFormat;->setObjectClass(Ljava/lang/Class;)V

    .line 134
    invoke-virtual {p0, v0}, Landroid/filterfw/core/SimpleFrame;->setFormat(Landroid/filterfw/core/FrameFormat;)V

    .line 135
    return-void
.end method

.method static greylist-max-o wrapObject(Ljava/lang/Object;Landroid/filterfw/core/FrameManager;)Landroid/filterfw/core/SimpleFrame;
    .registers 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "frameManager"    # Landroid/filterfw/core/FrameManager;

    .line 42
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/filterfw/format/ObjectFormat;->fromObject(Ljava/lang/Object;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 43
    .local v0, "format":Landroid/filterfw/core/FrameFormat;
    new-instance v1, Landroid/filterfw/core/SimpleFrame;

    invoke-direct {v1, v0, p1}, Landroid/filterfw/core/SimpleFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 44
    .local v1, "result":Landroid/filterfw/core/SimpleFrame;
    invoke-virtual {v1, p0}, Landroid/filterfw/core/SimpleFrame;->setObjectValue(Ljava/lang/Object;)V

    .line 45
    return-object v1
.end method


# virtual methods
.method public greylist-max-o getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public greylist-max-o getData()Ljava/nio/ByteBuffer;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    instance-of v0, v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public greylist-max-o getFloats()[F
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    check-cast v0, [F

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public greylist-max-o getInts()[I
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    check-cast v0, [I

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public greylist-max-o getObjectValue()Ljava/lang/Object;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method protected greylist-max-o hasNativeAllocation()Z
    .registers 2

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-o releaseNativeAllocation()V
    .registers 1

    .line 80
    return-void
.end method

.method public greylist-max-o setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 122
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->assertFrameMutable()V

    .line 123
    invoke-virtual {p0, p1}, Landroid/filterfw/core/SimpleFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public greylist-max-o setData(Ljava/nio/ByteBuffer;II)V
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 111
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->assertFrameMutable()V

    .line 112
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/SimpleFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public greylist-max-o setFloats([F)V
    .registers 2
    .param p1, "floats"    # [F

    .line 100
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->assertFrameMutable()V

    .line 101
    invoke-virtual {p0, p1}, Landroid/filterfw/core/SimpleFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method protected greylist-max-o setGenericObjectValue(Ljava/lang/Object;)V
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;

    .line 142
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    .line 143
    .local v0, "format":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_12

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/filterfw/core/SimpleFrame;->setFormatObjectClass(Ljava/lang/Class;)V

    goto :goto_20

    .line 145
    :cond_12
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 152
    :goto_20
    iput-object p1, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    .line 153
    return-void

    .line 146
    :cond_23
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to set object value of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' on SimpleFrame of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 148
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o setInts([I)V
    .registers 2
    .param p1, "ints"    # [I

    .line 89
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->assertFrameMutable()V

    .line 90
    invoke-virtual {p0, p1}, Landroid/filterfw/core/SimpleFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleFrame ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
