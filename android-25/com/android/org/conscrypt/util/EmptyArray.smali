.class public final Lcom/android/org/conscrypt/util/EmptyArray;
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

.field public static final INT:[I

.field public static final OBJECT:[Ljava/lang/Object;

.field public static final STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

.field public static final STRING:[Ljava/lang/String;

.field public static final THROWABLE:[Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    new-array v0, v1, [Z

    #@3
    sput-object v0, Lcom/android/org/conscrypt/util/EmptyArray;->BOOLEAN:[Z

    #@5
    .line 25
    new-array v0, v1, [B

    #@7
    sput-object v0, Lcom/android/org/conscrypt/util/EmptyArray;->BYTE:[B

    #@9
    .line 26
    new-array v0, v1, [C

    #@b
    sput-object v0, Lcom/android/org/conscrypt/util/EmptyArray;->CHAR:[C

    #@d
    .line 27
    new-array v0, v1, [D

    #@f
    sput-object v0, Lcom/android/org/conscrypt/util/EmptyArray;->DOUBLE:[D

    #@11
    .line 28
    new-array v0, v1, [I

    #@13
    sput-object v0, Lcom/android/org/conscrypt/util/EmptyArray;->INT:[I

    #@15
    .line 30
    new-array v0, v1, [Ljava/lang/Class;

    #@17
    sput-object v0, Lcom/android/org/conscrypt/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    #@19
    .line 31
    new-array v0, v1, [Ljava/lang/Object;

    #@1b
    sput-object v0, Lcom/android/org/conscrypt/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@1d
    .line 32
    new-array v0, v1, [Ljava/lang/String;

    #@1f
    sput-object v0, Lcom/android/org/conscrypt/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@21
    .line 33
    new-array v0, v1, [Ljava/lang/Throwable;

    #@23
    sput-object v0, Lcom/android/org/conscrypt/util/EmptyArray;->THROWABLE:[Ljava/lang/Throwable;

    #@25
    .line 34
    new-array v0, v1, [Ljava/lang/StackTraceElement;

    #@27
    sput-object v0, Lcom/android/org/conscrypt/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    #@29
    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
