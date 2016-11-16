.class public final Landroid/hardware/camera2/marshal/MarshalHelpers;
.super Ljava/lang/Object;
.source "MarshalHelpers.java"


# static fields
.field public static final SIZEOF_BYTE:I = 0x1

.field public static final SIZEOF_DOUBLE:I = 0x8

.field public static final SIZEOF_FLOAT:I = 0x4

.field public static final SIZEOF_INT32:I = 0x4

.field public static final SIZEOF_INT64:I = 0x8

.field public static final SIZEOF_RATIONAL:I = 0x8


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 241
    new-instance v0, Ljava/lang/AssertionError;

    #@5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@8
    throw v0
.end method

.method public static checkNativeType(I)I
    .locals 3
    .param p0, "nativeType"    # I

    #@0
    .prologue
    .line 208
    packed-switch p0, :pswitch_data_0

    #@3
    .line 218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown nativeType "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 215
    :pswitch_0
    return p0

    #@1e
    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static checkNativeTypeEquals(II)I
    .locals 5
    .param p0, "expectedNativeType"    # I
    .param p1, "actualNativeType"    # I

    #@0
    .prologue
    .line 231
    if-eq p0, p1, :cond_0

    #@2
    .line 232
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@4
    .line 233
    const-string/jumbo v1, "Expected native type %d, but got %d"

    #@7
    const/4 v2, 0x2

    #@8
    new-array v2, v2, [Ljava/lang/Object;

    #@a
    .line 234
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v3

    #@e
    const/4 v4, 0x0

    #@f
    aput-object v3, v2, v4

    #@11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v3

    #@15
    const/4 v4, 0x1

    #@16
    aput-object v3, v2, v4

    #@18
    .line 233
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 232
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 237
    :cond_0
    return p1
.end method

.method public static checkPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 87
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string/jumbo v0, "klass must not be null"

    #@3
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 89
    invoke-static {p0}, Landroid/hardware/camera2/marshal/MarshalHelpers;->isPrimitiveClass(Ljava/lang/Class;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 90
    return-object p0

    #@d
    .line 93
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Unsupported class \'"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 94
    const-string/jumbo v2, "\'; expected a metadata primitive class"

    #@22
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0
.end method

.method public static getPrimitiveTypeSize(I)I
    .locals 3
    .param p0, "nativeType"    # I

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    const/16 v0, 0x8

    #@3
    .line 55
    packed-switch p0, :pswitch_data_0

    #@6
    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Unknown type, can\'t get size for "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 57
    :pswitch_0
    const/4 v0, 0x1

    #@21
    return v0

    #@22
    .line 59
    :pswitch_1
    return v1

    #@23
    .line 61
    :pswitch_2
    return v1

    #@24
    .line 63
    :pswitch_3
    return v0

    #@25
    .line 65
    :pswitch_4
    return v0

    #@26
    .line 67
    :pswitch_5
    return v0

    #@27
    .line 55
    nop

    #@28
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static isPrimitiveClass(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 118
    if-nez p0, :cond_0

    #@4
    .line 119
    return v2

    #@5
    .line 122
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@7
    if-eq p0, v0, :cond_1

    #@9
    const-class v0, Ljava/lang/Byte;

    #@b
    if-ne p0, v0, :cond_2

    #@d
    .line 123
    :cond_1
    return v1

    #@e
    .line 124
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@10
    if-eq p0, v0, :cond_3

    #@12
    const-class v0, Ljava/lang/Integer;

    #@14
    if-ne p0, v0, :cond_4

    #@16
    .line 125
    :cond_3
    return v1

    #@17
    .line 126
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@19
    if-eq p0, v0, :cond_5

    #@1b
    const-class v0, Ljava/lang/Float;

    #@1d
    if-ne p0, v0, :cond_6

    #@1f
    .line 127
    :cond_5
    return v1

    #@20
    .line 128
    :cond_6
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@22
    if-eq p0, v0, :cond_7

    #@24
    const-class v0, Ljava/lang/Long;

    #@26
    if-ne p0, v0, :cond_8

    #@28
    .line 129
    :cond_7
    return v1

    #@29
    .line 130
    :cond_8
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@2b
    if-eq p0, v0, :cond_9

    #@2d
    const-class v0, Ljava/lang/Double;

    #@2f
    if-ne p0, v0, :cond_a

    #@31
    .line 131
    :cond_9
    return v1

    #@32
    .line 132
    :cond_a
    const-class v0, Landroid/util/Rational;

    #@34
    if-ne p0, v0, :cond_b

    #@36
    .line 133
    return v1

    #@37
    .line 136
    :cond_b
    return v2
.end method

.method public static toStringNativeType(I)Ljava/lang/String;
    .locals 2
    .param p0, "nativeType"    # I

    #@0
    .prologue
    .line 179
    packed-switch p0, :pswitch_data_0

    #@3
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "UNKNOWN("

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v1, ")"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0

    #@1f
    .line 181
    :pswitch_0
    const-string/jumbo v0, "TYPE_BYTE"

    #@22
    return-object v0

    #@23
    .line 183
    :pswitch_1
    const-string/jumbo v0, "TYPE_INT32"

    #@26
    return-object v0

    #@27
    .line 185
    :pswitch_2
    const-string/jumbo v0, "TYPE_FLOAT"

    #@2a
    return-object v0

    #@2b
    .line 187
    :pswitch_3
    const-string/jumbo v0, "TYPE_INT64"

    #@2e
    return-object v0

    #@2f
    .line 189
    :pswitch_4
    const-string/jumbo v0, "TYPE_DOUBLE"

    #@32
    return-object v0

    #@33
    .line 191
    :pswitch_5
    const-string/jumbo v0, "TYPE_RATIONAL"

    #@36
    return-object v0

    #@37
    .line 179
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static wrapClassIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 154
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@2
    if-ne p0, v0, :cond_0

    #@4
    .line 155
    const-class v0, Ljava/lang/Byte;

    #@6
    return-object v0

    #@7
    .line 156
    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@9
    if-ne p0, v0, :cond_1

    #@b
    .line 157
    const-class v0, Ljava/lang/Integer;

    #@d
    return-object v0

    #@e
    .line 158
    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@10
    if-ne p0, v0, :cond_2

    #@12
    .line 159
    const-class v0, Ljava/lang/Float;

    #@14
    return-object v0

    #@15
    .line 160
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@17
    if-ne p0, v0, :cond_3

    #@19
    .line 161
    const-class v0, Ljava/lang/Long;

    #@1b
    return-object v0

    #@1c
    .line 162
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@1e
    if-ne p0, v0, :cond_4

    #@20
    .line 163
    const-class v0, Ljava/lang/Double;

    #@22
    return-object v0

    #@23
    .line 166
    :cond_4
    return-object p0
.end method
