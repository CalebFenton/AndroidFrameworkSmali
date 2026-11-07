.class final Ljava/lang/invoke/StaticFieldVarHandle;
.super Ljava/lang/invoke/FieldVarHandle;
.source "StaticFieldVarHandle.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist declaringClass:Ljava/lang/Class;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 26
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/reflect/Field;)V
    .registers 3
    .param p1, "staticField"    # Ljava/lang/reflect/Field;

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/invoke/FieldVarHandle;-><init>(Ljava/lang/reflect/Field;)V

    .line 31
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/StaticFieldVarHandle;->declaringClass:Ljava/lang/Class;

    .line 32
    return-void
.end method

.method static blacklist create(Ljava/lang/reflect/Field;)Ljava/lang/invoke/StaticFieldVarHandle;
    .registers 3
    .param p0, "staticField"    # Ljava/lang/reflect/Field;

    .line 35
    nop

    .line 37
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdk/internal/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    .line 38
    new-instance v0, Ljava/lang/invoke/StaticFieldVarHandle;

    invoke-direct {v0, p0}, Ljava/lang/invoke/StaticFieldVarHandle;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0
.end method
