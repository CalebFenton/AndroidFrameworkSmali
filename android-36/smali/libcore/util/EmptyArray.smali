.class public final Llibcore/util/EmptyArray;
.super Ljava/lang/Object;
.source "EmptyArray.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final blacklist ANNOTATION:[Ljava/lang/annotation/Annotation;

.field public static final blacklist test-api BOOLEAN:[Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-q test-api BYTE:[B
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist CHAR:[C

.field public static final blacklist CLASS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final blacklist DOUBLE:[D

.field public static final blacklist test-api FLOAT:[F
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-q test-api INT:[I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-q test-api LONG:[J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-q test-api OBJECT:[Ljava/lang/Object;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

.field public static final blacklist test-api STRING:[Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist THROWABLE:[Ljava/lang/Throwable;

.field public static final blacklist TYPE:[Ljava/lang/reflect/Type;

.field public static final blacklist TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 38
    const/4 v0, 0x0

    new-array v1, v0, [Z

    sput-object v1, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    .line 44
    new-array v1, v0, [B

    sput-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    .line 47
    new-array v1, v0, [C

    sput-object v1, Llibcore/util/EmptyArray;->CHAR:[C

    .line 50
    new-array v1, v0, [D

    sput-object v1, Llibcore/util/EmptyArray;->DOUBLE:[D

    .line 54
    new-array v1, v0, [F

    sput-object v1, Llibcore/util/EmptyArray;->FLOAT:[F

    .line 60
    new-array v1, v0, [I

    sput-object v1, Llibcore/util/EmptyArray;->INT:[I

    .line 66
    new-array v1, v0, [J

    sput-object v1, Llibcore/util/EmptyArray;->LONG:[J

    .line 69
    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 75
    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    .line 79
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 82
    new-array v1, v0, [Ljava/lang/Throwable;

    sput-object v1, Llibcore/util/EmptyArray;->THROWABLE:[Ljava/lang/Throwable;

    .line 85
    new-array v1, v0, [Ljava/lang/StackTraceElement;

    sput-object v1, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    .line 88
    new-array v1, v0, [Ljava/lang/reflect/Type;

    sput-object v1, Llibcore/util/EmptyArray;->TYPE:[Ljava/lang/reflect/Type;

    .line 91
    new-array v1, v0, [Ljava/lang/reflect/TypeVariable;

    sput-object v1, Llibcore/util/EmptyArray;->TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;

    .line 94
    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    sput-object v0, Llibcore/util/EmptyArray;->ANNOTATION:[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
