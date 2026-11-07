.class final Lcom/android/org/conscrypt/EmptyArray;
.super Ljava/lang/Object;
.source "EmptyArray.java"


# static fields
.field static final blacklist BOOLEAN:[Z

.field static final blacklist BYTE:[B

.field static final blacklist CHAR:[C

.field static final blacklist CLASS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final blacklist DOUBLE:[D

.field static final blacklist INT:[I

.field static final blacklist OBJECT:[Ljava/lang/Object;

.field static final blacklist STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

.field static final blacklist STRING:[Ljava/lang/String;

.field static final blacklist THROWABLE:[Ljava/lang/Throwable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 25
    const/4 v0, 0x0

    new-array v1, v0, [Z

    sput-object v1, Lcom/android/org/conscrypt/EmptyArray;->BOOLEAN:[Z

    .line 26
    new-array v1, v0, [B

    sput-object v1, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    .line 27
    new-array v1, v0, [C

    sput-object v1, Lcom/android/org/conscrypt/EmptyArray;->CHAR:[C

    .line 28
    new-array v1, v0, [D

    sput-object v1, Lcom/android/org/conscrypt/EmptyArray;->DOUBLE:[D

    .line 29
    new-array v1, v0, [I

    sput-object v1, Lcom/android/org/conscrypt/EmptyArray;->INT:[I

    .line 31
    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lcom/android/org/conscrypt/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 32
    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lcom/android/org/conscrypt/EmptyArray;->OBJECT:[Ljava/lang/Object;

    .line 33
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/org/conscrypt/EmptyArray;->STRING:[Ljava/lang/String;

    .line 34
    new-array v1, v0, [Ljava/lang/Throwable;

    sput-object v1, Lcom/android/org/conscrypt/EmptyArray;->THROWABLE:[Ljava/lang/Throwable;

    .line 35
    new-array v0, v0, [Ljava/lang/StackTraceElement;

    sput-object v0, Lcom/android/org/conscrypt/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
