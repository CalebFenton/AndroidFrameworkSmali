.class public final Llibcore/util/EmptyArray;
.super Ljava/lang/Object;
.source "EmptyArray.java"


# static fields
.field public static final BOOLEAN:[Z

.field public static final BYTE:[B

.field public static final CHAR:[C

.field public static final CLASS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final DOUBLE:[D

.field public static final FLOAT:[F

.field public static final INT:[I

.field public static final LONG:[J

.field public static final OBJECT:[Ljava/lang/Object;

.field public static final STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

.field public static final STRING:[Ljava/lang/String;

.field public static final THROWABLE:[Ljava/lang/Throwable;

.field public static final TYPE:[Ljava/lang/reflect/Type;

.field public static final TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 22
    new-array v0, v1, [Z

    #@3
    sput-object v0, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    #@5
    .line 23
    new-array v0, v1, [B

    #@7
    sput-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    #@9
    .line 24
    new-array v0, v1, [C

    #@b
    sput-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    #@d
    .line 25
    new-array v0, v1, [D

    #@f
    sput-object v0, Llibcore/util/EmptyArray;->DOUBLE:[D

    #@11
    .line 26
    new-array v0, v1, [F

    #@13
    sput-object v0, Llibcore/util/EmptyArray;->FLOAT:[F

    #@15
    .line 27
    new-array v0, v1, [I

    #@17
    sput-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@19
    .line 28
    new-array v0, v1, [J

    #@1b
    sput-object v0, Llibcore/util/EmptyArray;->LONG:[J

    #@1d
    .line 30
    new-array v0, v1, [Ljava/lang/Class;

    #@1f
    sput-object v0, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    #@21
    .line 31
    new-array v0, v1, [Ljava/lang/Object;

    #@23
    sput-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@25
    .line 32
    new-array v0, v1, [Ljava/lang/String;

    #@27
    sput-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@29
    .line 33
    new-array v0, v1, [Ljava/lang/Throwable;

    #@2b
    sput-object v0, Llibcore/util/EmptyArray;->THROWABLE:[Ljava/lang/Throwable;

    #@2d
    .line 34
    new-array v0, v1, [Ljava/lang/StackTraceElement;

    #@2f
    sput-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    #@31
    .line 35
    new-array v0, v1, [Ljava/lang/reflect/Type;

    #@33
    sput-object v0, Llibcore/util/EmptyArray;->TYPE:[Ljava/lang/reflect/Type;

    #@35
    .line 37
    new-array v0, v1, [Ljava/lang/reflect/TypeVariable;

    #@37
    .line 36
    sput-object v0, Llibcore/util/EmptyArray;->TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;

    #@39
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
