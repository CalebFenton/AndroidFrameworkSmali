.class public Landroid/filterfw/core/SimpleFrame;
.super Landroid/filterfw/core/Frame;
.source "SimpleFrame.java"


# instance fields
.field private mObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .locals 1
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;

    #@0
    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    #@3
    .line 37
    invoke-direct {p0, p1}, Landroid/filterfw/core/SimpleFrame;->initWithFormat(Landroid/filterfw/core/FrameFormat;)V

    #@6
    .line 38
    const/4 v0, 0x0

    #@7
    invoke-virtual {p0, v0}, Landroid/filterfw/core/SimpleFrame;->setReusable(Z)V

    #@a
    .line 35
    return-void
.end method

.method private initWithFormat(Landroid/filterfw/core/FrameFormat;)V
    .locals 3
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getLength()I

    #@3
    move-result v1

    #@4
    .line 50
    .local v1, "count":I
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    #@7
    move-result v0

    #@8
    .line 51
    .local v0, "baseType":I
    packed-switch v0, :pswitch_data_0

    #@b
    .line 68
    const/4 v2, 0x0

    #@c
    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    #@e
    .line 48
    :goto_0
    return-void

    #@f
    .line 53
    :pswitch_0
    new-array v2, v1, [B

    #@11
    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    #@13
    goto :goto_0

    #@14
    .line 56
    :pswitch_1
    new-array v2, v1, [S

    #@16
    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    #@18
    goto :goto_0

    #@19
    .line 59
    :pswitch_2
    new-array v2, v1, [I

    #@1b
    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    #@1d
    goto :goto_0

    #@1e
    .line 62
    :pswitch_3
    new-array v2, v1, [F

    #@20
    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    #@22
    goto :goto_0

    #@23
    .line 65
    :pswitch_4
    new-array v2, v1, [D

    #@25
    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    #@27
    goto :goto_0

    #@28
    .line 51
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setFormatObjectClass(Ljava/lang/Class;)V
    .locals 2
    .param p1, "objectClass"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v0

    #@8
    .line 133
    .local v0, "format":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v0, p1}, Landroid/filterfw/core/MutableFrameFormat;->setObjectClass(Ljava/lang/Class;)V

    #@b
    .line 134
    invoke-virtual {p0, v0}, Landroid/filterfw/core/SimpleFrame;->setFormat(Landroid/filterfw/core/FrameFormat;)V

    #@e
    .line 131
    return-void
.end method

.method static wrapObject(Ljava/lang/Object;Landroid/filterfw/core/FrameManager;)Landroid/filterfw/core/SimpleFrame;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "frameManager"    # Landroid/filterfw/core/FrameManager;

    #@0
    .prologue
    .line 42
    const/4 v2, 0x1

    #@1
    invoke-static {p0, v2}, Landroid/filterfw/format/ObjectFormat;->fromObject(Ljava/lang/Object;I)Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v0

    #@5
    .line 43
    .local v0, "format":Landroid/filterfw/core/FrameFormat;
    new-instance v1, Landroid/filterfw/core/SimpleFrame;

    #@7
    invoke-direct {v1, v0, p1}, Landroid/filterfw/core/SimpleFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    #@a
    .line 44
    .local v1, "result":Landroid/filterfw/core/SimpleFrame;
    invoke-virtual {v1, p0}, Landroid/filterfw/core/SimpleFrame;->setObjectValue(Ljava/lang/Object;)V

    #@d
    .line 45
    return-object v1
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    #@2
    instance-of v0, v0, Landroid/graphics/Bitmap;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    #@8
    check-cast v0, Landroid/graphics/Bitmap;

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    #@2
    instance-of v0, v0, Ljava/nio/ByteBuffer;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    #@8
    check-cast v0, Ljava/nio/ByteBuffer;

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getFloats()[F
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    #@2
    instance-of v0, v0, [F

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    #@8
    check-cast v0, [F

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getInts()[I
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    #@2
    instance-of v0, v0, [I

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    #@8
    check-cast v0, [I

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getObjectValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method protected hasNativeAllocation()Z
    .locals 1

    #@0
    .prologue
    .line 75
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected releaseNativeAllocation()V
    .locals 0

    #@0
    .prologue
    .line 79
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->assertFrameMutable()V

    #@3
    .line 123
    invoke-virtual {p0, p1}, Landroid/filterfw/core/SimpleFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    #@6
    .line 121
    return-void
.end method

.method public setData(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->assertFrameMutable()V

    #@3
    .line 112
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@6
    move-result-object v0

    #@7
    invoke-static {v0, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, v0}, Landroid/filterfw/core/SimpleFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    #@e
    .line 110
    return-void
.end method

.method public setFloats([F)V
    .locals 0
    .param p1, "floats"    # [F

    #@0
    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->assertFrameMutable()V

    #@3
    .line 101
    invoke-virtual {p0, p1}, Landroid/filterfw/core/SimpleFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    #@6
    .line 99
    return-void
.end method

.method protected setGenericObjectValue(Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@3
    move-result-object v0

    #@4
    .line 143
    .local v0, "format":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    if-nez v1, :cond_1

    #@a
    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v1

    #@e
    invoke-direct {p0, v1}, Landroid/filterfw/core/SimpleFrame;->setFormatObjectClass(Ljava/lang/Class;)V

    #@11
    .line 152
    :cond_0
    iput-object p1, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    #@13
    .line 138
    return-void

    #@14
    .line 145
    :cond_1
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_0

    #@22
    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    #@24
    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v3, "Attempting to set object value of type \'"

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    const-string/jumbo v3, "\' on "

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 148
    const-string/jumbo v3, "SimpleFrame of type \'"

    #@42
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    .line 148
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    #@49
    move-result-object v3

    #@4a
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    .line 148
    const-string/jumbo v3, "\'!"

    #@51
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    .line 146
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v1
.end method

.method public setInts([I)V
    .locals 0
    .param p1, "ints"    # [I

    #@0
    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->assertFrameMutable()V

    #@3
    .line 90
    invoke-virtual {p0, p1}, Landroid/filterfw/core/SimpleFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    #@6
    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SimpleFrame ("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, ")"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method
