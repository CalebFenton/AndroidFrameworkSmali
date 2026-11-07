.class public Ljava/nio/charset/CoderResult;
.super Ljava/lang/Object;
.source "CoderResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/charset/CoderResult$Cache;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o CR_ERROR_MIN:I = 0x2

.field private static final greylist-max-o CR_MALFORMED:I = 0x2

.field private static final greylist-max-o CR_OVERFLOW:I = 0x1

.field private static final greylist-max-o CR_UNDERFLOW:I = 0x0

.field private static final greylist-max-o CR_UNMAPPABLE:I = 0x3

.field public static final whitelist test-api OVERFLOW:Ljava/nio/charset/CoderResult;

.field public static final whitelist test-api UNDERFLOW:Ljava/nio/charset/CoderResult;

.field private static final blacklist malformed4:[Ljava/nio/charset/CoderResult;

.field private static final greylist-max-o names:[Ljava/lang/String;

.field private static final blacklist unmappable4:[Ljava/nio/charset/CoderResult;


# instance fields
.field private final greylist-max-o length:I

.field private final greylist-max-o type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 84
    nop

    .line 92
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "UNDERFLOW"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "OVERFLOW"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "MALFORMED"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "UNMAPPABLE"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Ljava/nio/charset/CoderResult;->names:[Ljava/lang/String;

    .line 183
    new-instance v1, Ljava/nio/charset/CoderResult;

    invoke-direct {v1, v3, v3}, Ljava/nio/charset/CoderResult;-><init>(II)V

    sput-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 190
    new-instance v1, Ljava/nio/charset/CoderResult;

    invoke-direct {v1, v4, v3}, Ljava/nio/charset/CoderResult;-><init>(II)V

    sput-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    .line 201
    new-instance v1, Ljava/nio/charset/CoderResult;

    invoke-direct {v1, v5, v4}, Ljava/nio/charset/CoderResult;-><init>(II)V

    new-instance v2, Ljava/nio/charset/CoderResult;

    invoke-direct {v2, v5, v5}, Ljava/nio/charset/CoderResult;-><init>(II)V

    new-instance v3, Ljava/nio/charset/CoderResult;

    invoke-direct {v3, v5, v6}, Ljava/nio/charset/CoderResult;-><init>(II)V

    new-instance v7, Ljava/nio/charset/CoderResult;

    invoke-direct {v7, v5, v0}, Ljava/nio/charset/CoderResult;-><init>(II)V

    filled-new-array {v1, v2, v3, v7}, [Ljava/nio/charset/CoderResult;

    move-result-object v1

    sput-object v1, Ljava/nio/charset/CoderResult;->malformed4:[Ljava/nio/charset/CoderResult;

    .line 226
    new-instance v1, Ljava/nio/charset/CoderResult;

    invoke-direct {v1, v6, v4}, Ljava/nio/charset/CoderResult;-><init>(II)V

    new-instance v2, Ljava/nio/charset/CoderResult;

    invoke-direct {v2, v6, v5}, Ljava/nio/charset/CoderResult;-><init>(II)V

    new-instance v3, Ljava/nio/charset/CoderResult;

    invoke-direct {v3, v6, v6}, Ljava/nio/charset/CoderResult;-><init>(II)V

    new-instance v4, Ljava/nio/charset/CoderResult;

    invoke-direct {v4, v6, v0}, Ljava/nio/charset/CoderResult;-><init>(II)V

    filled-new-array {v1, v2, v3, v4}, [Ljava/nio/charset/CoderResult;

    move-result-object v0

    sput-object v0, Ljava/nio/charset/CoderResult;->unmappable4:[Ljava/nio/charset/CoderResult;

    return-void
.end method

.method private constructor greylist-max-o <init>(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "length"    # I

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Ljava/nio/charset/CoderResult;->type:I

    .line 100
    iput p2, p0, Ljava/nio/charset/CoderResult;->length:I

    .line 101
    return-void
.end method

.method static synthetic blacklist lambda$malformedForLength$0(Ljava/lang/Integer;)Ljava/nio/charset/CoderResult;
    .registers 4
    .param p0, "n"    # Ljava/lang/Integer;

    .line 223
    new-instance v0, Ljava/nio/charset/CoderResult;

    const/4 v1, 0x2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/nio/charset/CoderResult;-><init>(II)V

    return-object v0
.end method

.method static synthetic blacklist lambda$unmappableForLength$1(Ljava/lang/Integer;)Ljava/nio/charset/CoderResult;
    .registers 4
    .param p0, "n"    # Ljava/lang/Integer;

    .line 248
    new-instance v0, Ljava/nio/charset/CoderResult;

    const/4 v1, 0x3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/nio/charset/CoderResult;-><init>(II)V

    return-object v0
.end method

.method public static whitelist test-api malformedForLength(I)Ljava/nio/charset/CoderResult;
    .registers 4
    .param p0, "length"    # I

    .line 218
    if-lez p0, :cond_20

    .line 220
    const/4 v0, 0x4

    if-gt p0, v0, :cond_c

    .line 221
    sget-object v0, Ljava/nio/charset/CoderResult;->malformed4:[Ljava/nio/charset/CoderResult;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 222
    :cond_c
    sget-object v0, Ljava/nio/charset/CoderResult$Cache;->INSTANCE:Ljava/nio/charset/CoderResult$Cache;

    iget-object v0, v0, Ljava/nio/charset/CoderResult$Cache;->malformed:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/nio/charset/CoderResult$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/nio/charset/CoderResult$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CoderResult;

    return-object v0

    .line 219
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-positive length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api unmappableForLength(I)Ljava/nio/charset/CoderResult;
    .registers 4
    .param p0, "length"    # I

    .line 243
    if-lez p0, :cond_20

    .line 245
    const/4 v0, 0x4

    if-gt p0, v0, :cond_c

    .line 246
    sget-object v0, Ljava/nio/charset/CoderResult;->unmappable4:[Ljava/nio/charset/CoderResult;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 247
    :cond_c
    sget-object v0, Ljava/nio/charset/CoderResult$Cache;->INSTANCE:Ljava/nio/charset/CoderResult$Cache;

    iget-object v0, v0, Ljava/nio/charset/CoderResult$Cache;->unmappable:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/nio/charset/CoderResult$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/nio/charset/CoderResult$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CoderResult;

    return-object v0

    .line 244
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-positive length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api isError()Z
    .registers 3

    .line 138
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api isMalformed()Z
    .registers 3

    .line 148
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api isOverflow()Z
    .registers 3

    .line 128
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public whitelist test-api isUnderflow()Z
    .registers 2

    .line 119
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api isUnmappable()Z
    .registers 3

    .line 159
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 173
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 175
    iget v0, p0, Ljava/nio/charset/CoderResult;->length:I

    return v0

    .line 174
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api throwException()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 271
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    packed-switch v0, :pswitch_data_24

    .line 277
    goto :goto_22

    .line 275
    :pswitch_6
    new-instance v0, Ljava/nio/charset/UnmappableCharacterException;

    iget v1, p0, Ljava/nio/charset/CoderResult;->length:I

    invoke-direct {v0, v1}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v0

    .line 274
    :pswitch_e
    new-instance v0, Ljava/nio/charset/MalformedInputException;

    iget v1, p0, Ljava/nio/charset/CoderResult;->length:I

    invoke-direct {v0, v1}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v0

    .line 273
    :pswitch_16
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 272
    :pswitch_1c
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 279
    :goto_22
    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_16
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 109
    sget-object v0, Ljava/nio/charset/CoderResult;->names:[Ljava/lang/String;

    iget v1, p0, Ljava/nio/charset/CoderResult;->type:I

    aget-object v0, v0, v1

    .line 110
    .local v0, "nm":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/nio/charset/CoderResult;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2d

    :cond_2c
    move-object v1, v0

    :goto_2d
    return-object v1
.end method
