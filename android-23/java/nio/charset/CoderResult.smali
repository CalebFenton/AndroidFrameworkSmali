.class public Ljava/nio/charset/CoderResult;
.super Ljava/lang/Object;
.source "CoderResult.java"


# static fields
.field public static final OVERFLOW:Ljava/nio/charset/CoderResult;

.field private static final TYPE_MALFORMED_INPUT:I = 0x3

.field private static final TYPE_OVERFLOW:I = 0x2

.field private static final TYPE_UNDERFLOW:I = 0x1

.field private static final TYPE_UNMAPPABLE_CHAR:I = 0x4

.field public static final UNDERFLOW:Ljava/nio/charset/CoderResult;

.field private static _malformedErrors:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/charset/CoderResult;",
            ">;"
        }
    .end annotation
.end field

.field private static _unmappableErrors:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/charset/CoderResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final length:I

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 60
    new-instance v0, Ljava/nio/charset/CoderResult;

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {v0, v1, v2}, Ljava/nio/charset/CoderResult;-><init>(II)V

    #@7
    sput-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@9
    .line 67
    new-instance v0, Ljava/nio/charset/CoderResult;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-direct {v0, v1, v2}, Ljava/nio/charset/CoderResult;-><init>(II)V

    #@f
    sput-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    #@11
    .line 73
    new-instance v0, Ljava/util/WeakHashMap;

    #@13
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@16
    sput-object v0, Ljava/nio/charset/CoderResult;->_malformedErrors:Ljava/util/WeakHashMap;

    #@18
    .line 79
    new-instance v0, Ljava/util/WeakHashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@1d
    sput-object v0, Ljava/nio/charset/CoderResult;->_unmappableErrors:Ljava/util/WeakHashMap;

    #@1f
    .line 42
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    iput p1, p0, Ljava/nio/charset/CoderResult;->type:I

    #@5
    .line 97
    iput p2, p0, Ljava/nio/charset/CoderResult;->length:I

    #@7
    .line 95
    return-void
.end method

.method public static declared-synchronized malformedForLength(I)Ljava/nio/charset/CoderResult;
    .locals 6
    .param p0, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const-class v3, Ljava/nio/charset/CoderResult;

    #@2
    monitor-enter v3

    #@3
    .line 113
    if-lez p0, :cond_1

    #@5
    .line 114
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v0

    #@9
    .line 115
    .local v0, "key":Ljava/lang/Integer;
    sget-object v4, Ljava/nio/charset/CoderResult;->_malformedErrors:Ljava/util/WeakHashMap;

    #@b
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@c
    .line 116
    :try_start_1
    sget-object v2, Ljava/nio/charset/CoderResult;->_malformedErrors:Ljava/util/WeakHashMap;

    #@e
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/nio/charset/CoderResult;

    #@14
    .line 117
    .local v1, "r":Ljava/nio/charset/CoderResult;
    if-nez v1, :cond_0

    #@16
    .line 118
    new-instance v1, Ljava/nio/charset/CoderResult;

    #@18
    .end local v1    # "r":Ljava/nio/charset/CoderResult;
    const/4 v2, 0x3

    #@19
    invoke-direct {v1, v2, p0}, Ljava/nio/charset/CoderResult;-><init>(II)V

    #@1c
    .line 119
    .restart local v1    # "r":Ljava/nio/charset/CoderResult;
    sget-object v2, Ljava/nio/charset/CoderResult;->_malformedErrors:Ljava/util/WeakHashMap;

    #@1e
    invoke-virtual {v2, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    :cond_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@22
    monitor-exit v3

    #@23
    .line 121
    return-object v1

    #@24
    .line 115
    .end local v1    # "r":Ljava/nio/charset/CoderResult;
    :catchall_0
    move-exception v2

    #@25
    :try_start_3
    monitor-exit v4

    #@26
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@27
    .end local v0    # "key":Ljava/lang/Integer;
    :catchall_1
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2

    #@2a
    .line 124
    :cond_1
    :try_start_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2c
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v5, "length <= 0: "

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method public static declared-synchronized unmappableForLength(I)Ljava/nio/charset/CoderResult;
    .locals 6
    .param p0, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const-class v3, Ljava/nio/charset/CoderResult;

    #@2
    monitor-enter v3

    #@3
    .line 141
    if-lez p0, :cond_1

    #@5
    .line 142
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v0

    #@9
    .line 143
    .local v0, "key":Ljava/lang/Integer;
    sget-object v4, Ljava/nio/charset/CoderResult;->_unmappableErrors:Ljava/util/WeakHashMap;

    #@b
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@c
    .line 144
    :try_start_1
    sget-object v2, Ljava/nio/charset/CoderResult;->_unmappableErrors:Ljava/util/WeakHashMap;

    #@e
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/nio/charset/CoderResult;

    #@14
    .line 145
    .local v1, "r":Ljava/nio/charset/CoderResult;
    if-nez v1, :cond_0

    #@16
    .line 146
    new-instance v1, Ljava/nio/charset/CoderResult;

    #@18
    .end local v1    # "r":Ljava/nio/charset/CoderResult;
    const/4 v2, 0x4

    #@19
    invoke-direct {v1, v2, p0}, Ljava/nio/charset/CoderResult;-><init>(II)V

    #@1c
    .line 147
    .restart local v1    # "r":Ljava/nio/charset/CoderResult;
    sget-object v2, Ljava/nio/charset/CoderResult;->_unmappableErrors:Ljava/util/WeakHashMap;

    #@1e
    invoke-virtual {v2, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    :cond_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@22
    monitor-exit v3

    #@23
    .line 149
    return-object v1

    #@24
    .line 143
    .end local v1    # "r":Ljava/nio/charset/CoderResult;
    :catchall_0
    move-exception v2

    #@25
    :try_start_3
    monitor-exit v4

    #@26
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@27
    .end local v0    # "key":Ljava/lang/Integer;
    :catchall_1
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2

    #@2a
    .line 152
    :cond_1
    :try_start_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2c
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v5, "length <= 0: "

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method


# virtual methods
.method public isError()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 167
    iget v1, p0, Ljava/nio/charset/CoderResult;->type:I

    #@3
    const/4 v2, 0x3

    #@4
    if-eq v1, v2, :cond_0

    #@6
    iget v1, p0, Ljava/nio/charset/CoderResult;->type:I

    #@8
    const/4 v2, 0x4

    #@9
    if-ne v1, v2, :cond_1

    #@b
    :cond_0
    :goto_0
    return v0

    #@c
    :cond_1
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public isMalformed()Z
    .locals 2

    #@0
    .prologue
    .line 174
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isOverflow()Z
    .locals 2

    #@0
    .prologue
    .line 181
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isUnderflow()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 159
    iget v1, p0, Ljava/nio/charset/CoderResult;->type:I

    #@3
    if-ne v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isUnmappable()Z
    .locals 2

    #@0
    .prologue
    .line 188
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    #@2
    const/4 v1, 0x4

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public length()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    #@2
    const/4 v1, 0x3

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    #@7
    const/4 v1, 0x4

    #@8
    if-ne v0, v1, :cond_1

    #@a
    .line 200
    :cond_0
    iget v0, p0, Ljava/nio/charset/CoderResult;->length:I

    #@c
    return v0

    #@d
    .line 202
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "length meaningless for "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
.end method

.method public throwException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Ljava/nio/BufferOverflowException;,
            Ljava/nio/charset/UnmappableCharacterException;,
            Ljava/nio/charset/MalformedInputException;,
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 222
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 232
    new-instance v0, Ljava/nio/charset/CharacterCodingException;

    #@7
    invoke-direct {v0}, Ljava/nio/charset/CharacterCodingException;-><init>()V

    #@a
    throw v0

    #@b
    .line 224
    :pswitch_0
    new-instance v0, Ljava/nio/BufferUnderflowException;

    #@d
    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@10
    throw v0

    #@11
    .line 226
    :pswitch_1
    new-instance v0, Ljava/nio/BufferOverflowException;

    #@13
    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    #@16
    throw v0

    #@17
    .line 228
    :pswitch_2
    new-instance v0, Ljava/nio/charset/UnmappableCharacterException;

    #@19
    iget v1, p0, Ljava/nio/charset/CoderResult;->length:I

    #@1b
    invoke-direct {v0, v1}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    #@1e
    throw v0

    #@1f
    .line 230
    :pswitch_3
    new-instance v0, Ljava/nio/charset/MalformedInputException;

    #@21
    iget v1, p0, Ljava/nio/charset/CoderResult;->length:I

    #@23
    invoke-direct {v0, v1}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    #@26
    throw v0

    #@27
    .line 222
    nop

    #@28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 243
    const/4 v0, 0x0

    #@1
    .line 244
    .local v0, "dsc":Ljava/lang/String;
    iget v1, p0, Ljava/nio/charset/CoderResult;->type:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 260
    const-string/jumbo v0, ""

    #@9
    .line 263
    .local v0, "dsc":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, "["

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, "]"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    return-object v1

    #@31
    .line 246
    .local v0, "dsc":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "UNDERFLOW error"

    #@34
    .local v0, "dsc":Ljava/lang/String;
    goto :goto_0

    #@35
    .line 249
    .local v0, "dsc":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "OVERFLOW error"

    #@38
    .local v0, "dsc":Ljava/lang/String;
    goto :goto_0

    #@39
    .line 252
    .local v0, "dsc":Ljava/lang/String;
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v2, "Unmappable-character error with erroneous input length "

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    .line 253
    iget v2, p0, Ljava/nio/charset/CoderResult;->length:I

    #@47
    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    .local v0, "dsc":Ljava/lang/String;
    goto :goto_0

    #@50
    .line 256
    .local v0, "dsc":Ljava/lang/String;
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v2, "Malformed-input error with erroneous input length "

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    .line 257
    iget v2, p0, Ljava/nio/charset/CoderResult;->length:I

    #@5e
    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v0

    #@66
    .local v0, "dsc":Ljava/lang/String;
    goto :goto_0

    #@67
    .line 244
    nop

    #@68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
