.class public Ljava/nio/charset/CoderResult;
.super Ljava/lang/Object;
.source "CoderResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/charset/CoderResult$1;,
        Ljava/nio/charset/CoderResult$2;,
        Ljava/nio/charset/CoderResult$Cache;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final CR_ERROR_MIN:I = 0x2

.field private static final CR_MALFORMED:I = 0x2

.field private static final CR_OVERFLOW:I = 0x1

.field private static final CR_UNDERFLOW:I = 0x0

.field private static final CR_UNMAPPABLE:I = 0x3

.field public static final OVERFLOW:Ljava/nio/charset/CoderResult;

.field public static final UNDERFLOW:Ljava/nio/charset/CoderResult;

.field private static malformedCache:Ljava/nio/charset/CoderResult$Cache;

.field private static final names:[Ljava/lang/String;

.field private static unmappableCache:Ljava/nio/charset/CoderResult$Cache;


# instance fields
.field private final length:I

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const-class v0, Ljava/nio/charset/CoderResult;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    move v0, v1

    #@b
    :goto_0
    sput-boolean v0, Ljava/nio/charset/CoderResult;->-assertionsDisabled:Z

    #@d
    .line 94
    const/4 v0, 0x4

    #@e
    new-array v0, v0, [Ljava/lang/String;

    #@10
    const-string/jumbo v3, "UNDERFLOW"

    #@13
    aput-object v3, v0, v1

    #@15
    const-string/jumbo v3, "OVERFLOW"

    #@18
    aput-object v3, v0, v2

    #@1a
    const-string/jumbo v3, "MALFORMED"

    #@1d
    const/4 v4, 0x2

    #@1e
    aput-object v3, v0, v4

    #@20
    const-string/jumbo v3, "UNMAPPABLE"

    #@23
    const/4 v4, 0x3

    #@24
    aput-object v3, v0, v4

    #@26
    .line 93
    sput-object v0, Ljava/nio/charset/CoderResult;->names:[Ljava/lang/String;

    #@28
    .line 186
    new-instance v0, Ljava/nio/charset/CoderResult;

    #@2a
    invoke-direct {v0, v1, v1}, Ljava/nio/charset/CoderResult;-><init>(II)V

    #@2d
    .line 185
    sput-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@2f
    .line 193
    new-instance v0, Ljava/nio/charset/CoderResult;

    #@31
    invoke-direct {v0, v2, v1}, Ljava/nio/charset/CoderResult;-><init>(II)V

    #@34
    .line 192
    sput-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    #@36
    .line 222
    new-instance v0, Ljava/nio/charset/CoderResult$1;

    #@38
    invoke-direct {v0}, Ljava/nio/charset/CoderResult$1;-><init>()V

    #@3b
    .line 221
    sput-object v0, Ljava/nio/charset/CoderResult;->malformedCache:Ljava/nio/charset/CoderResult$Cache;

    #@3d
    .line 238
    new-instance v0, Ljava/nio/charset/CoderResult$2;

    #@3f
    invoke-direct {v0}, Ljava/nio/charset/CoderResult$2;-><init>()V

    #@42
    .line 237
    sput-object v0, Ljava/nio/charset/CoderResult;->unmappableCache:Ljava/nio/charset/CoderResult$Cache;

    #@44
    .line 85
    return-void

    #@45
    :cond_0
    move v0, v2

    #@46
    goto :goto_0
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 100
    iput p1, p0, Ljava/nio/charset/CoderResult;->type:I

    #@5
    .line 101
    iput p2, p0, Ljava/nio/charset/CoderResult;->length:I

    #@7
    .line 99
    return-void
.end method

.method synthetic constructor <init>(IILjava/nio/charset/CoderResult;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Ljava/nio/charset/CoderResult;-><init>(II)V

    #@3
    return-void
.end method

.method public static malformedForLength(I)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "length"    # I

    #@0
    .prologue
    .line 234
    sget-object v0, Ljava/nio/charset/CoderResult;->malformedCache:Ljava/nio/charset/CoderResult$Cache;

    #@2
    invoke-static {v0, p0}, Ljava/nio/charset/CoderResult$Cache;->-wrap0(Ljava/nio/charset/CoderResult$Cache;I)Ljava/nio/charset/CoderResult;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static unmappableForLength(I)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "length"    # I

    #@0
    .prologue
    .line 250
    sget-object v0, Ljava/nio/charset/CoderResult;->unmappableCache:Ljava/nio/charset/CoderResult$Cache;

    #@2
    invoke-static {v0, p0}, Ljava/nio/charset/CoderResult$Cache;->-wrap0(Ljava/nio/charset/CoderResult$Cache;I)Ljava/nio/charset/CoderResult;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method


# virtual methods
.method public isError()Z
    .locals 2

    #@0
    .prologue
    .line 139
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    #@2
    const/4 v1, 0x2

    #@3
    if-lt v0, v1, :cond_0

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

.method public isMalformed()Z
    .locals 2

    #@0
    .prologue
    .line 150
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

.method public isOverflow()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 129
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

.method public isUnderflow()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 120
    iget v1, p0, Ljava/nio/charset/CoderResult;->type:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public isUnmappable()Z
    .locals 2

    #@0
    .prologue
    .line 161
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

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 175
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isError()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 176
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@b
    throw v0

    #@c
    .line 177
    :cond_0
    iget v0, p0, Ljava/nio/charset/CoderResult;->length:I

    #@e
    return v0
.end method

.method public throwException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 274
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 280
    sget-boolean v0, Ljava/nio/charset/CoderResult;->-assertionsDisabled:Z

    #@7
    if-nez v0, :cond_0

    #@9
    new-instance v0, Ljava/lang/AssertionError;

    #@b
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@e
    throw v0

    #@f
    .line 275
    :pswitch_0
    new-instance v0, Ljava/nio/BufferUnderflowException;

    #@11
    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@14
    throw v0

    #@15
    .line 276
    :pswitch_1
    new-instance v0, Ljava/nio/BufferOverflowException;

    #@17
    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    #@1a
    throw v0

    #@1b
    .line 277
    :pswitch_2
    new-instance v0, Ljava/nio/charset/MalformedInputException;

    #@1d
    iget v1, p0, Ljava/nio/charset/CoderResult;->length:I

    #@1f
    invoke-direct {v0, v1}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    #@22
    throw v0

    #@23
    .line 278
    :pswitch_3
    new-instance v0, Ljava/nio/charset/UnmappableCharacterException;

    #@25
    iget v1, p0, Ljava/nio/charset/CoderResult;->length:I

    #@27
    invoke-direct {v0, v1}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    #@2a
    throw v0

    #@2b
    .line 272
    :cond_0
    return-void

    #@2c
    .line 274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 110
    sget-object v1, Ljava/nio/charset/CoderResult;->names:[Ljava/lang/String;

    #@2
    iget v2, p0, Ljava/nio/charset/CoderResult;->type:I

    #@4
    aget-object v0, v1, v2

    #@6
    .line 111
    .local v0, "nm":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isError()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, "["

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget v2, p0, Ljava/nio/charset/CoderResult;->length:I

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, "]"

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    .end local v0    # "nm":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
