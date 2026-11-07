.class public final enum Lsun/invoke/util/Wrapper;
.super Ljava/lang/Enum;
.source "Wrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/invoke/util/Wrapper$Format;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsun/invoke/util/Wrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lsun/invoke/util/Wrapper;

.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final enum blacklist BOOLEAN:Lsun/invoke/util/Wrapper;

.field public static final enum blacklist BYTE:Lsun/invoke/util/Wrapper;

.field public static final enum blacklist CHAR:Lsun/invoke/util/Wrapper;

.field public static final blacklist COUNT:I = 0xa

.field public static final enum blacklist DOUBLE:Lsun/invoke/util/Wrapper;

.field private static final blacklist DOUBLE_ZERO:Ljava/lang/Object;

.field public static final enum blacklist FLOAT:Lsun/invoke/util/Wrapper;

.field private static final blacklist FLOAT_ZERO:Ljava/lang/Object;

.field private static final blacklist FROM_CHAR:[Lsun/invoke/util/Wrapper;

.field private static final blacklist FROM_PRIM:[Lsun/invoke/util/Wrapper;

.field private static final blacklist FROM_WRAP:[Lsun/invoke/util/Wrapper;

.field public static final enum blacklist INT:Lsun/invoke/util/Wrapper;

.field public static final enum blacklist LONG:Lsun/invoke/util/Wrapper;

.field public static final enum blacklist OBJECT:Lsun/invoke/util/Wrapper;

.field public static final enum blacklist SHORT:Lsun/invoke/util/Wrapper;

.field public static final enum blacklist VOID:Lsun/invoke/util/Wrapper;


# instance fields
.field private final blacklist basicTypeChar:C

.field private final blacklist basicTypeString:Ljava/lang/String;

.field private final blacklist emptyArray:Ljava/lang/Object;

.field private final blacklist format:I

.field private final blacklist primitiveSimpleName:Ljava/lang/String;

.field private final blacklist primitiveType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist wrapperSimpleName:Ljava/lang/String;

.field private final blacklist wrapperType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic blacklist $values()[Lsun/invoke/util/Wrapper;
    .registers 10

    .line 28
    sget-object v0, Lsun/invoke/util/Wrapper;->BOOLEAN:Lsun/invoke/util/Wrapper;

    sget-object v1, Lsun/invoke/util/Wrapper;->BYTE:Lsun/invoke/util/Wrapper;

    sget-object v2, Lsun/invoke/util/Wrapper;->SHORT:Lsun/invoke/util/Wrapper;

    sget-object v3, Lsun/invoke/util/Wrapper;->CHAR:Lsun/invoke/util/Wrapper;

    sget-object v4, Lsun/invoke/util/Wrapper;->INT:Lsun/invoke/util/Wrapper;

    sget-object v5, Lsun/invoke/util/Wrapper;->LONG:Lsun/invoke/util/Wrapper;

    sget-object v6, Lsun/invoke/util/Wrapper;->FLOAT:Lsun/invoke/util/Wrapper;

    sget-object v7, Lsun/invoke/util/Wrapper;->DOUBLE:Lsun/invoke/util/Wrapper;

    sget-object v8, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    sget-object v9, Lsun/invoke/util/Wrapper;->VOID:Lsun/invoke/util/Wrapper;

    filled-new-array/range {v0 .. v9}, [Lsun/invoke/util/Wrapper;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 21

    .line 28
    nop

    .line 30
    new-instance v0, Lsun/invoke/util/Wrapper;

    const-class v3, Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    new-array v8, v10, [Z

    const/4 v1, 0x1

    invoke-static {v1}, Lsun/invoke/util/Wrapper$Format;->unsigned(I)I

    move-result v9

    const/4 v2, 0x0

    const/16 v7, 0x5a

    const-string v1, "BOOLEAN"

    const-string v4, "Boolean"

    const-string v6, "boolean"

    invoke-direct/range {v0 .. v9}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;CLjava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->BOOLEAN:Lsun/invoke/util/Wrapper;

    .line 33
    new-instance v11, Lsun/invoke/util/Wrapper;

    const-class v14, Ljava/lang/Byte;

    sget-object v16, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-array v0, v10, [B

    const/16 v1, 0x8

    invoke-static {v1}, Lsun/invoke/util/Wrapper$Format;->signed(I)I

    move-result v20

    const/4 v13, 0x1

    const/16 v18, 0x42

    const-string v12, "BYTE"

    const-string v15, "Byte"

    const-string v17, "byte"

    move-object/from16 v19, v0

    invoke-direct/range {v11 .. v20}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;CLjava/lang/Object;I)V

    sput-object v11, Lsun/invoke/util/Wrapper;->BYTE:Lsun/invoke/util/Wrapper;

    .line 34
    new-instance v0, Lsun/invoke/util/Wrapper;

    const-class v3, Ljava/lang/Short;

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-array v8, v10, [S

    const/16 v1, 0x10

    invoke-static {v1}, Lsun/invoke/util/Wrapper$Format;->signed(I)I

    move-result v9

    const/4 v2, 0x2

    const/16 v7, 0x53

    const-string v1, "SHORT"

    const-string v4, "Short"

    const-string v6, "short"

    invoke-direct/range {v0 .. v9}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;CLjava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->SHORT:Lsun/invoke/util/Wrapper;

    .line 35
    new-instance v11, Lsun/invoke/util/Wrapper;

    const-class v14, Ljava/lang/Character;

    sget-object v16, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-array v0, v10, [C

    const/16 v1, 0x10

    invoke-static {v1}, Lsun/invoke/util/Wrapper$Format;->unsigned(I)I

    move-result v20

    const/4 v13, 0x3

    const/16 v18, 0x43

    const-string v12, "CHAR"

    const-string v15, "Character"

    const-string v17, "char"

    move-object/from16 v19, v0

    invoke-direct/range {v11 .. v20}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;CLjava/lang/Object;I)V

    sput-object v11, Lsun/invoke/util/Wrapper;->CHAR:Lsun/invoke/util/Wrapper;

    .line 36
    new-instance v0, Lsun/invoke/util/Wrapper;

    const-class v3, Ljava/lang/Integer;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v8, v10, [I

    const/16 v1, 0x20

    invoke-static {v1}, Lsun/invoke/util/Wrapper$Format;->signed(I)I

    move-result v9

    const/4 v2, 0x4

    const/16 v7, 0x49

    const-string v1, "INT"

    const-string v4, "Integer"

    const-string v6, "int"

    invoke-direct/range {v0 .. v9}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;CLjava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->INT:Lsun/invoke/util/Wrapper;

    .line 37
    new-instance v11, Lsun/invoke/util/Wrapper;

    const-class v14, Ljava/lang/Long;

    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-array v0, v10, [J

    const/16 v1, 0x40

    invoke-static {v1}, Lsun/invoke/util/Wrapper$Format;->signed(I)I

    move-result v20

    const/4 v13, 0x5

    const/16 v18, 0x4a

    const-string v12, "LONG"

    const-string v15, "Long"

    const-string v17, "long"

    move-object/from16 v19, v0

    invoke-direct/range {v11 .. v20}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;CLjava/lang/Object;I)V

    sput-object v11, Lsun/invoke/util/Wrapper;->LONG:Lsun/invoke/util/Wrapper;

    .line 38
    new-instance v0, Lsun/invoke/util/Wrapper;

    const-class v3, Ljava/lang/Float;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v8, v10, [F

    const/16 v1, 0x20

    invoke-static {v1}, Lsun/invoke/util/Wrapper$Format;->floating(I)I

    move-result v9

    const/4 v2, 0x6

    const/16 v7, 0x46

    const-string v1, "FLOAT"

    const-string v4, "Float"

    const-string v6, "float"

    invoke-direct/range {v0 .. v9}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;CLjava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->FLOAT:Lsun/invoke/util/Wrapper;

    .line 39
    new-instance v11, Lsun/invoke/util/Wrapper;

    const-class v14, Ljava/lang/Double;

    sget-object v16, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-array v0, v10, [D

    const/16 v1, 0x40

    invoke-static {v1}, Lsun/invoke/util/Wrapper$Format;->floating(I)I

    move-result v20

    const/4 v13, 0x7

    const/16 v18, 0x44

    const-string v12, "DOUBLE"

    const-string v15, "Double"

    const-string v17, "double"

    move-object/from16 v19, v0

    invoke-direct/range {v11 .. v20}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;CLjava/lang/Object;I)V

    sput-object v11, Lsun/invoke/util/Wrapper;->DOUBLE:Lsun/invoke/util/Wrapper;

    .line 40
    new-instance v0, Lsun/invoke/util/Wrapper;

    const-class v3, Ljava/lang/Object;

    const-class v5, Ljava/lang/Object;

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Lsun/invoke/util/Wrapper$Format;->other(I)I

    move-result v9

    const/16 v2, 0x8

    const/16 v7, 0x4c

    const-string v1, "OBJECT"

    const-string v4, "Object"

    const-string v6, "Object"

    invoke-direct/range {v0 .. v9}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;CLjava/lang/Object;I)V

    sput-object v0, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    .line 42
    new-instance v11, Lsun/invoke/util/Wrapper;

    const-class v14, Ljava/lang/Void;

    sget-object v16, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/16 v19, 0x0

    invoke-static {v10}, Lsun/invoke/util/Wrapper$Format;->other(I)I

    move-result v20

    const/16 v13, 0x9

    const/16 v18, 0x56

    const-string v12, "VOID"

    const-string v15, "Void"

    const-string v17, "void"

    invoke-direct/range {v11 .. v20}, Lsun/invoke/util/Wrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;CLjava/lang/Object;I)V

    sput-object v11, Lsun/invoke/util/Wrapper;->VOID:Lsun/invoke/util/Wrapper;

    .line 28
    invoke-static {}, Lsun/invoke/util/Wrapper;->$values()[Lsun/invoke/util/Wrapper;

    move-result-object v0

    sput-object v0, Lsun/invoke/util/Wrapper;->$VALUES:[Lsun/invoke/util/Wrapper;

    .line 168
    nop

    .line 169
    nop

    .line 256
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lsun/invoke/util/Wrapper;->DOUBLE_ZERO:Ljava/lang/Object;

    .line 257
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lsun/invoke/util/Wrapper;->FLOAT_ZERO:Ljava/lang/Object;

    .line 358
    const/16 v0, 0x10

    new-array v0, v0, [Lsun/invoke/util/Wrapper;

    sput-object v0, Lsun/invoke/util/Wrapper;->FROM_PRIM:[Lsun/invoke/util/Wrapper;

    .line 359
    const/16 v0, 0x10

    new-array v0, v0, [Lsun/invoke/util/Wrapper;

    sput-object v0, Lsun/invoke/util/Wrapper;->FROM_WRAP:[Lsun/invoke/util/Wrapper;

    .line 360
    const/16 v0, 0x10

    new-array v0, v0, [Lsun/invoke/util/Wrapper;

    sput-object v0, Lsun/invoke/util/Wrapper;->FROM_CHAR:[Lsun/invoke/util/Wrapper;

    .line 376
    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v0

    array-length v1, v0

    :goto_14e
    if-ge v10, v1, :cond_176

    aget-object v2, v0, v10

    .line 377
    .local v2, "w":Lsun/invoke/util/Wrapper;
    iget-object v3, v2, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    invoke-static {v3}, Lsun/invoke/util/Wrapper;->hashPrim(Ljava/lang/Class;)I

    move-result v3

    .line 378
    .local v3, "pi":I
    iget-object v4, v2, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    invoke-static {v4}, Lsun/invoke/util/Wrapper;->hashWrap(Ljava/lang/Class;)I

    move-result v4

    .line 379
    .local v4, "wi":I
    iget-char v5, v2, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    invoke-static {v5}, Lsun/invoke/util/Wrapper;->hashChar(C)I

    move-result v5

    .line 380
    .local v5, "ci":I
    nop

    .line 381
    nop

    .line 382
    nop

    .line 383
    sget-object v6, Lsun/invoke/util/Wrapper;->FROM_PRIM:[Lsun/invoke/util/Wrapper;

    aput-object v2, v6, v3

    .line 384
    sget-object v6, Lsun/invoke/util/Wrapper;->FROM_WRAP:[Lsun/invoke/util/Wrapper;

    aput-object v2, v6, v4

    .line 385
    sget-object v6, Lsun/invoke/util/Wrapper;->FROM_CHAR:[Lsun/invoke/util/Wrapper;

    aput-object v2, v6, v5

    .line 376
    .end local v2    # "w":Lsun/invoke/util/Wrapper;
    .end local v3    # "pi":I
    .end local v4    # "wi":I
    .end local v5    # "ci":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_14e

    .line 388
    :cond_176
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;CLjava/lang/Object;I)V
    .registers 10
    .param p4, "wtypeName"    # Ljava/lang/String;
    .param p6, "ptypeName"    # Ljava/lang/String;
    .param p7, "tchar"    # C
    .param p8, "emptyArray"    # Ljava/lang/Object;
    .param p9, "format"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
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
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 56
    .local p3, "wtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput-object p3, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    .line 58
    iput-object p5, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    .line 59
    iput-char p7, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    .line 60
    iget-char p1, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsun/invoke/util/Wrapper;->basicTypeString:Ljava/lang/String;

    .line 61
    iput-object p8, p0, Lsun/invoke/util/Wrapper;->emptyArray:Ljava/lang/Object;

    .line 62
    iput p9, p0, Lsun/invoke/util/Wrapper;->format:I

    .line 63
    iput-object p4, p0, Lsun/invoke/util/Wrapper;->wrapperSimpleName:Ljava/lang/String;

    .line 64
    iput-object p6, p0, Lsun/invoke/util/Wrapper;->primitiveSimpleName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static blacklist asPrimitiveType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 432
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    .line 433
    .local v0, "w":Lsun/invoke/util/Wrapper;
    if-eqz v0, :cond_f

    .line 434
    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->primitiveType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p0}, Lsun/invoke/util/Wrapper;->forceType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 436
    :cond_f
    return-object p0
.end method

.method public static blacklist asWrapperType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 422
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 423
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsun/invoke/util/Wrapper;->wrapperType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 425
    :cond_f
    return-object p0
.end method

.method public static blacklist basicTypeChar(Ljava/lang/Class;)C
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)C"
        }
    .end annotation

    .line 453
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_9

    .line 454
    const/16 v0, 0x4c

    return v0

    .line 456
    :cond_9
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar()C

    move-result v0

    return v0
.end method

.method private static blacklist boolValue(B)Z
    .registers 2
    .param p0, "bits"    # B

    .line 619
    and-int/lit8 v0, p0, 0x1

    int-to-byte p0, v0

    .line 620
    if-eqz p0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static blacklist checkConvertibleFrom()Z
    .registers 10

    .line 173
    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_89

    aget-object v4, v0, v3

    .line 174
    .local v4, "w":Lsun/invoke/util/Wrapper;
    nop

    .line 175
    nop

    .line 176
    sget-object v5, Lsun/invoke/util/Wrapper;->VOID:Lsun/invoke/util/Wrapper;

    if-eq v4, v5, :cond_13

    .line 177
    nop

    .line 178
    nop

    .line 181
    :cond_13
    sget-object v5, Lsun/invoke/util/Wrapper;->CHAR:Lsun/invoke/util/Wrapper;

    if-eq v4, v5, :cond_21

    .line 182
    nop

    .line 183
    sget-object v5, Lsun/invoke/util/Wrapper;->INT:Lsun/invoke/util/Wrapper;

    invoke-virtual {v4, v5}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 184
    nop

    .line 186
    :cond_21
    sget-object v5, Lsun/invoke/util/Wrapper;->BOOLEAN:Lsun/invoke/util/Wrapper;

    if-eq v4, v5, :cond_2f

    .line 187
    nop

    .line 188
    sget-object v5, Lsun/invoke/util/Wrapper;->VOID:Lsun/invoke/util/Wrapper;

    if-eq v4, v5, :cond_2f

    sget-object v5, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    if-eq v4, v5, :cond_2f

    .line 189
    nop

    .line 192
    :cond_2f
    invoke-virtual {v4}, Lsun/invoke/util/Wrapper;->isSigned()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 193
    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_3b
    if-ge v7, v6, :cond_5a

    aget-object v8, v5, v7

    .line 194
    .local v8, "x":Lsun/invoke/util/Wrapper;
    if-ne v4, v8, :cond_42

    goto :goto_57

    .line 195
    :cond_42
    invoke-virtual {v8}, Lsun/invoke/util/Wrapper;->isFloating()Z

    move-result v9

    if-eqz v9, :cond_49

    .line 196
    goto :goto_57

    .line 197
    :cond_49
    invoke-virtual {v8}, Lsun/invoke/util/Wrapper;->isSigned()Z

    move-result v9

    if-eqz v9, :cond_57

    .line 198
    invoke-virtual {v4, v8}, Lsun/invoke/util/Wrapper;->compareTo(Ljava/lang/Enum;)I

    move-result v9

    if-gez v9, :cond_56

    .line 199
    goto :goto_57

    .line 201
    :cond_56
    nop

    .line 193
    .end local v8    # "x":Lsun/invoke/util/Wrapper;
    :cond_57
    :goto_57
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b

    .line 206
    :cond_5a
    invoke-virtual {v4}, Lsun/invoke/util/Wrapper;->isFloating()Z

    move-result v5

    if-eqz v5, :cond_85

    .line 207
    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_66
    if-ge v7, v6, :cond_85

    aget-object v8, v5, v7

    .line 208
    .restart local v8    # "x":Lsun/invoke/util/Wrapper;
    if-ne v4, v8, :cond_6d

    goto :goto_82

    .line 209
    :cond_6d
    invoke-virtual {v8}, Lsun/invoke/util/Wrapper;->isSigned()Z

    move-result v9

    if-eqz v9, :cond_74

    .line 210
    goto :goto_82

    .line 211
    :cond_74
    invoke-virtual {v8}, Lsun/invoke/util/Wrapper;->isFloating()Z

    move-result v9

    if-eqz v9, :cond_82

    .line 212
    invoke-virtual {v4, v8}, Lsun/invoke/util/Wrapper;->compareTo(Ljava/lang/Enum;)I

    move-result v9

    if-gez v9, :cond_81

    .line 213
    goto :goto_82

    .line 215
    :cond_81
    nop

    .line 207
    .end local v8    # "x":Lsun/invoke/util/Wrapper;
    :cond_82
    :goto_82
    add-int/lit8 v7, v7, 0x1

    goto :goto_66

    .line 173
    .end local v4    # "w":Lsun/invoke/util/Wrapper;
    :cond_85
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 220
    :cond_89
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist convert(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Object;
    .registers 8
    .param p1, "x"    # Ljava/lang/Object;
    .param p3, "isCast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 508
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    if-ne p0, v0, :cond_10

    .line 513
    nop

    .line 514
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_e

    .line 515
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    :cond_e
    move-object v0, p1

    .line 518
    .local v0, "result":Ljava/lang/Object;, "TT;"
    return-object v0

    .line 520
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_10
    invoke-virtual {p0, p2}, Lsun/invoke/util/Wrapper;->wrapperType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 521
    .local v0, "wtype":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 522
    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 524
    :cond_1f
    if-nez p3, :cond_37

    .line 525
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 526
    .local v1, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v2

    .line 527
    .local v2, "source":Lsun/invoke/util/Wrapper;
    if-eqz v2, :cond_32

    invoke-virtual {p0, v2}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v3

    if-eqz v3, :cond_32

    .end local v1    # "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "source":Lsun/invoke/util/Wrapper;
    goto :goto_3e

    .line 528
    .restart local v1    # "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "source":Lsun/invoke/util/Wrapper;
    :cond_32
    invoke-static {v0, v1}, Lsun/invoke/util/Wrapper;->newClassCastException(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/ClassCastException;

    move-result-object v3

    throw v3

    .line 530
    .end local v1    # "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "source":Lsun/invoke/util/Wrapper;
    :cond_37
    if-nez p1, :cond_3e

    .line 532
    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->zero()Ljava/lang/Object;

    move-result-object v1

    .line 533
    .local v1, "z":Ljava/lang/Object;, "TT;"
    return-object v1

    .line 530
    .end local v1    # "z":Ljava/lang/Object;, "TT;"
    :cond_3e
    :goto_3e
    nop

    .line 536
    invoke-virtual {p0, p1}, Lsun/invoke/util/Wrapper;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 537
    .local v1, "result":Ljava/lang/Object;, "TT;"
    nop

    .line 538
    return-object v1
.end method

.method static blacklist findPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lsun/invoke/util/Wrapper;"
        }
    .end annotation

    .line 298
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lsun/invoke/util/Wrapper;->FROM_PRIM:[Lsun/invoke/util/Wrapper;

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->hashPrim(Ljava/lang/Class;)I

    move-result v1

    aget-object v0, v0, v1

    .line 299
    .local v0, "w":Lsun/invoke/util/Wrapper;
    if-eqz v0, :cond_f

    iget-object v1, v0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    if-ne v1, p0, :cond_f

    .line 300
    return-object v0

    .line 302
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method static blacklist findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lsun/invoke/util/Wrapper;"
        }
    .end annotation

    .line 321
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lsun/invoke/util/Wrapper;->FROM_WRAP:[Lsun/invoke/util/Wrapper;

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->hashWrap(Ljava/lang/Class;)I

    move-result v1

    aget-object v0, v0, v1

    .line 322
    .local v0, "w":Lsun/invoke/util/Wrapper;
    if-eqz v0, :cond_f

    iget-object v1, v0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    if-ne v1, p0, :cond_f

    .line 323
    return-object v0

    .line 325
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist forBasicType(C)Lsun/invoke/util/Wrapper;
    .registers 7
    .param p0, "type"    # C

    .line 333
    sget-object v0, Lsun/invoke/util/Wrapper;->FROM_CHAR:[Lsun/invoke/util/Wrapper;

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->hashChar(C)I

    move-result v1

    aget-object v0, v0, v1

    .line 334
    .local v0, "w":Lsun/invoke/util/Wrapper;
    if-eqz v0, :cond_f

    iget-char v1, v0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    if-ne v1, p0, :cond_f

    .line 335
    return-object v0

    .line 337
    :cond_f
    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_26

    aget-object v4, v1, v3

    .line 338
    .local v4, "x":Lsun/invoke/util/Wrapper;
    iget-char v5, v0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    if-eq v5, p0, :cond_20

    .line 337
    .end local v4    # "x":Lsun/invoke/util/Wrapper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 339
    .restart local v4    # "x":Lsun/invoke/util/Wrapper;
    :cond_20
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 340
    .end local v4    # "x":Lsun/invoke/util/Wrapper;
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not basic type char: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/invoke/util/Wrapper;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist forBasicType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lsun/invoke/util/Wrapper;"
        }
    .end annotation

    .line 347
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 348
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    return-object v0

    .line 349
    :cond_b
    sget-object v0, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    return-object v0
.end method

.method public static blacklist forPrimitiveType(C)Lsun/invoke/util/Wrapper;
    .registers 3
    .param p0, "basicTypeChar"    # C

    .line 283
    sparse-switch p0, :sswitch_data_36

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not primitive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 291
    :sswitch_1b
    sget-object v0, Lsun/invoke/util/Wrapper;->BOOLEAN:Lsun/invoke/util/Wrapper;

    return-object v0

    .line 292
    :sswitch_1e
    sget-object v0, Lsun/invoke/util/Wrapper;->VOID:Lsun/invoke/util/Wrapper;

    return-object v0

    .line 286
    :sswitch_21
    sget-object v0, Lsun/invoke/util/Wrapper;->SHORT:Lsun/invoke/util/Wrapper;

    return-object v0

    .line 285
    :sswitch_24
    sget-object v0, Lsun/invoke/util/Wrapper;->LONG:Lsun/invoke/util/Wrapper;

    return-object v0

    .line 284
    :sswitch_27
    sget-object v0, Lsun/invoke/util/Wrapper;->INT:Lsun/invoke/util/Wrapper;

    return-object v0

    .line 289
    :sswitch_2a
    sget-object v0, Lsun/invoke/util/Wrapper;->FLOAT:Lsun/invoke/util/Wrapper;

    return-object v0

    .line 290
    :sswitch_2d
    sget-object v0, Lsun/invoke/util/Wrapper;->DOUBLE:Lsun/invoke/util/Wrapper;

    return-object v0

    .line 288
    :sswitch_30
    sget-object v0, Lsun/invoke/util/Wrapper;->CHAR:Lsun/invoke/util/Wrapper;

    return-object v0

    .line 287
    :sswitch_33
    sget-object v0, Lsun/invoke/util/Wrapper;->BYTE:Lsun/invoke/util/Wrapper;

    return-object v0

    :sswitch_data_36
    .sparse-switch
        0x42 -> :sswitch_33
        0x43 -> :sswitch_30
        0x44 -> :sswitch_2d
        0x46 -> :sswitch_2a
        0x49 -> :sswitch_27
        0x4a -> :sswitch_24
        0x53 -> :sswitch_21
        0x56 -> :sswitch_1e
        0x5a -> :sswitch_1b
    .end sparse-switch
.end method

.method public static blacklist forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lsun/invoke/util/Wrapper;"
        }
    .end annotation

    .line 271
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->findPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    .line 272
    .local v0, "w":Lsun/invoke/util/Wrapper;
    if-eqz v0, :cond_7

    return-object v0

    .line 273
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 274
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 275
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not primitive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/invoke/util/Wrapper;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist forWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lsun/invoke/util/Wrapper;"
        }
    .end annotation

    .line 312
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    .line 313
    .local v0, "w":Lsun/invoke/util/Wrapper;
    if-eqz v0, :cond_7

    return-object v0

    .line 314
    :cond_7
    invoke-static {}, Lsun/invoke/util/Wrapper;->values()[Lsun/invoke/util/Wrapper;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 315
    .local v4, "x":Lsun/invoke/util/Wrapper;
    iget-object v5, v4, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    if-eq v5, p0, :cond_18

    .line 314
    .end local v4    # "x":Lsun/invoke/util/Wrapper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 316
    .restart local v4    # "x":Lsun/invoke/util/Wrapper;
    :cond_18
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 317
    .end local v4    # "x":Lsun/invoke/util/Wrapper;
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not wrapper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/invoke/util/Wrapper;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static blacklist forceType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 547
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "exampleType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    nop

    .line 552
    move-object v0, p0

    .line 553
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    return-object v0
.end method

.method private static blacklist hashChar(C)I
    .registers 2
    .param p0, "x"    # C

    .line 373
    shr-int/lit8 v0, p0, 0x1

    add-int/2addr v0, p0

    rem-int/lit8 v0, v0, 0x10

    return v0
.end method

.method private static blacklist hashPrim(Ljava/lang/Class;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 362
    .local p0, "x":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "xn":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_d

    return v3

    .line 364
    :cond_d
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x10

    return v1
.end method

.method private static blacklist hashWrap(Ljava/lang/Class;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 367
    .local p0, "x":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "xn":Ljava/lang/String;
    const/16 v1, 0xa

    .line 369
    .local v1, "offset":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    if-ge v2, v3, :cond_10

    const/4 v2, 0x0

    return v2

    .line 370
    :cond_10
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x10

    return v2
.end method

.method public static blacklist isPrimitiveType(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 446
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public static blacklist isWrapperType(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 441
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->findWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static blacklist newClassCastException(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/ClassCastException;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassCastException;"
        }
    .end annotation

    .line 415
    .local p0, "actual":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "expected":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not compatible with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .line 627
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "x"    # Ljava/lang/Object;

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist numberValue(Ljava/lang/Object;)Ljava/lang/Number;
    .registers 2
    .param p0, "x"    # Ljava/lang/Object;

    .line 608
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    return-object v0

    .line 609
    :cond_8
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_18

    move-object v0, p0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 610
    :cond_18
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_28

    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 612
    :cond_28
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lsun/invoke/util/Wrapper;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 28
    const-class v0, Lsun/invoke/util/Wrapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/invoke/util/Wrapper;

    return-object v0
.end method

.method public static blacklist values()[Lsun/invoke/util/Wrapper;
    .registers 1

    .line 28
    sget-object v0, Lsun/invoke/util/Wrapper;->$VALUES:[Lsun/invoke/util/Wrapper;

    invoke-virtual {v0}, [Lsun/invoke/util/Wrapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/invoke/util/Wrapper;

    return-object v0
.end method


# virtual methods
.method public blacklist arrayType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->emptyArray:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public blacklist basicTypeChar()C
    .registers 2

    .line 462
    iget-char v0, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    return v0
.end method

.method public blacklist basicTypeString()Ljava/lang/String;
    .registers 2

    .line 467
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->basicTypeString:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist bitWidth()I
    .registers 2

    .line 113
    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    shr-int/lit8 v0, v0, 0x2

    and-int/lit16 v0, v0, 0x3ff

    return v0
.end method

.method public blacklist cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 495
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 504
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist copyArrayBoxing(Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .registers 9
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "apos"    # I
    .param p3, "values"    # [Ljava/lang/Object;
    .param p4, "vpos"    # I
    .param p5, "length"    # I

    .line 647
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->arrayType()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    .line 648
    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->arrayType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    :cond_11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, p5, :cond_22

    .line 650
    add-int v1, v0, p2

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 652
    .local v1, "value":Ljava/lang/Object;
    nop

    .line 653
    add-int v2, v0, p4

    aput-object v1, p3, v2

    .line 649
    .end local v1    # "value":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 655
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

.method public blacklist copyArrayUnboxing([Ljava/lang/Object;ILjava/lang/Object;II)V
    .registers 9
    .param p1, "values"    # [Ljava/lang/Object;
    .param p2, "vpos"    # I
    .param p3, "a"    # Ljava/lang/Object;
    .param p4, "apos"    # I
    .param p5, "length"    # I

    .line 638
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->arrayType()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    .line 639
    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->arrayType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    :cond_11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, p5, :cond_26

    .line 641
    add-int v1, v0, p2

    aget-object v1, p1, v1

    .line 642
    .local v1, "value":Ljava/lang/Object;
    iget-object v2, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 643
    add-int v2, v0, p4

    invoke-static {p3, v2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 640
    .end local v1    # "value":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 645
    .end local v0    # "i":I
    :cond_26
    return-void
.end method

.method public blacklist detailString()Ljava/lang/String;
    .registers 8

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsun/invoke/util/Wrapper;->wrapperSimpleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    iget-object v2, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    iget-char v3, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    .line 71
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->zero()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lsun/invoke/util/Wrapper;->format:I

    .line 72
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 70
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    return-object v0
.end method

.method public blacklist isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z
    .registers 7
    .param p1, "source"    # Lsun/invoke/util/Wrapper;

    .line 146
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 147
    :cond_4
    invoke-virtual {p0, p1}, Lsun/invoke/util/Wrapper;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_c

    .line 149
    return v2

    .line 153
    :cond_c
    iget v1, p0, Lsun/invoke/util/Wrapper;->format:I

    iget v3, p1, Lsun/invoke/util/Wrapper;->format:I

    and-int/2addr v1, v3

    and-int/lit16 v1, v1, -0x1000

    if-eqz v1, :cond_17

    move v1, v0

    goto :goto_18

    :cond_17
    move v1, v2

    .line 154
    .local v1, "floatOrSigned":Z
    :goto_18
    if-nez v1, :cond_29

    .line 155
    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->isOther()Z

    move-result v3

    if-eqz v3, :cond_21

    return v0

    .line 157
    :cond_21
    iget v3, p1, Lsun/invoke/util/Wrapper;->format:I

    const/16 v4, 0x41

    if-ne v3, v4, :cond_28

    return v0

    .line 159
    :cond_28
    return v2

    .line 162
    :cond_29
    nop

    .line 163
    nop

    .line 164
    return v0
.end method

.method public blacklist isDoubleWord()Z
    .registers 2

    .line 119
    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isFloating()Z
    .registers 3

    .line 131
    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    const/16 v1, 0x1081

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isIntegral()Z
    .registers 3

    .line 123
    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    const/16 v1, 0x1081

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isNumeric()Z
    .registers 2

    .line 121
    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    and-int/lit8 v0, v0, -0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isOther()Z
    .registers 2

    .line 133
    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    and-int/lit8 v0, v0, -0x4

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isSigned()Z
    .registers 2

    .line 127
    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isSingleWord()Z
    .registers 3

    .line 117
    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public blacklist isSubwordOrInt()Z
    .registers 2

    .line 125
    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->isIntegral()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->isSingleWord()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isUnsigned()Z
    .registers 3

    .line 129
    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_d

    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    const/16 v1, 0x1081

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public blacklist makeArray(I)Ljava/lang/Object;
    .registers 3
    .param p1, "len"    # I

    .line 632
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist primitiveSimpleName()Ljava/lang/String;
    .registers 2

    .line 475
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->primitiveSimpleName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist primitiveType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist stackSlots()I
    .registers 2

    .line 115
    iget v0, p0, Lsun/invoke/util/Wrapper;->format:I

    shr-int/lit8 v0, v0, 0x0

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public blacklist wrap(I)Ljava/lang/Object;
    .registers 4
    .param p1, "x"    # I

    .line 591
    iget-char v0, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 592
    :cond_b
    iget-char v0, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    sparse-switch v0, :sswitch_data_54

    .line 604
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "bad wrapper"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :sswitch_18
    int-to-byte v0, p1

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->boolValue(B)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 594
    :sswitch_22
    const/4 v0, 0x0

    return-object v0

    .line 599
    :sswitch_24
    int-to-short v0, p1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 593
    :sswitch_2a
    const-string v0, "cannot wrap to object type"

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 596
    :sswitch_31
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 595
    :sswitch_37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 597
    :sswitch_3c
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 598
    :sswitch_42
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 601
    :sswitch_48
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 600
    :sswitch_4e
    int-to-byte v0, p1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :sswitch_data_54
    .sparse-switch
        0x42 -> :sswitch_4e
        0x43 -> :sswitch_48
        0x44 -> :sswitch_42
        0x46 -> :sswitch_3c
        0x49 -> :sswitch_37
        0x4a -> :sswitch_31
        0x4c -> :sswitch_2a
        0x53 -> :sswitch_24
        0x56 -> :sswitch_22
        0x5a -> :sswitch_18
    .end sparse-switch
.end method

.method public blacklist wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "x"    # Ljava/lang/Object;

    .line 566
    iget-char v0, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    sparse-switch v0, :sswitch_data_68

    .line 570
    invoke-static {p1}, Lsun/invoke/util/Wrapper;->numberValue(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 571
    .local v0, "xn":Ljava/lang/Number;
    iget-char v1, p0, Lsun/invoke/util/Wrapper;->basicTypeChar:C

    sparse-switch v1, :sswitch_data_72

    .line 581
    new-instance v1, Ljava/lang/InternalError;

    const-string v2, "bad wrapper"

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 568
    .end local v0    # "xn":Ljava/lang/Number;
    :sswitch_16
    const/4 v0, 0x0

    return-object v0

    .line 567
    :sswitch_18
    return-object p1

    .line 579
    .restart local v0    # "xn":Ljava/lang/Number;
    :sswitch_19
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {v1}, Lsun/invoke/util/Wrapper;->boolValue(B)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 576
    :sswitch_26
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    .line 573
    :sswitch_30
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 572
    :sswitch_39
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 574
    :sswitch_42
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 575
    :sswitch_4b
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 578
    :sswitch_54
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    return-object v1

    .line 577
    :sswitch_5e
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    :sswitch_data_68
    .sparse-switch
        0x4c -> :sswitch_18
        0x56 -> :sswitch_16
    .end sparse-switch

    :sswitch_data_72
    .sparse-switch
        0x42 -> :sswitch_5e
        0x43 -> :sswitch_54
        0x44 -> :sswitch_4b
        0x46 -> :sswitch_42
        0x49 -> :sswitch_39
        0x4a -> :sswitch_30
        0x53 -> :sswitch_26
        0x5a -> :sswitch_19
    .end sparse-switch
.end method

.method public blacklist wrapperSimpleName()Ljava/lang/String;
    .registers 2

    .line 471
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->wrapperSimpleName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist wrapperType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist wrapperType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 404
    .local p1, "exampleType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 405
    return-object p1

    .line 406
    :cond_5
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    if-eq p1, v0, :cond_1d

    iget-object v0, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_1d

    .line 408
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1d

    .line 411
    :cond_16
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->primitiveType:Ljava/lang/Class;

    invoke-static {p1, v0}, Lsun/invoke/util/Wrapper;->newClassCastException(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    .line 409
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lsun/invoke/util/Wrapper;->wrapperType:Ljava/lang/Class;

    invoke-static {v0, p1}, Lsun/invoke/util/Wrapper;->forceType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public blacklist zero()Ljava/lang/Object;
    .registers 3

    .line 232
    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_2e

    .line 252
    const/4 v0, 0x0

    return-object v0

    .line 248
    :pswitch_a
    sget-object v0, Lsun/invoke/util/Wrapper;->DOUBLE_ZERO:Ljava/lang/Object;

    return-object v0

    .line 246
    :pswitch_d
    sget-object v0, Lsun/invoke/util/Wrapper;->FLOAT_ZERO:Ljava/lang/Object;

    return-object v0

    .line 244
    :pswitch_10
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 236
    :pswitch_17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 240
    :pswitch_1c
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 242
    :pswitch_21
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 238
    :pswitch_26
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 234
    :pswitch_2b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_26
        :pswitch_21
        :pswitch_1c
        :pswitch_17
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method public blacklist zero(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 263
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->zero()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
