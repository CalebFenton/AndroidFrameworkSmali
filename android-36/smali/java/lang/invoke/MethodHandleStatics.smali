.class Ljava/lang/invoke/MethodHandleStatics;
.super Ljava/lang/Object;
.source "MethodHandleStatics.java"


# static fields
.field static final blacklist UNSAFE:Ljdk/internal/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist NYI()Ljava/lang/Error;
    .registers 2

    .line 159
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static blacklist message(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 162
    if-eqz p1, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 163
    :cond_19
    return-object p0
.end method

.method private static blacklist message(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .line 166
    if-nez p1, :cond_4

    if-eqz p2, :cond_25

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 167
    :cond_25
    return-object p0
.end method

.method static blacklist newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Ljava/lang/invoke/MethodHandleStatics;->message(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2}, Ljava/lang/invoke/MethodHandleStatics;->message(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist newIllegalStateException(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist newIllegalStateException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0, p1}, Ljava/lang/invoke/MethodHandleStatics;->message(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist newInternalError(Ljava/lang/String;)Ljava/lang/InternalError;
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist newInternalError(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/InternalError;
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 132
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0, p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static blacklist newInternalError(Ljava/lang/Throwable;)Ljava/lang/InternalError;
    .registers 2
    .param p0, "cause"    # Ljava/lang/Throwable;

    .line 135
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static blacklist uncaughtException(Ljava/lang/Throwable;)Ljava/lang/Error;
    .registers 2
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 154
    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_13

    .line 155
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 156
    :cond_c
    const-string v0, "uncaught exception"

    invoke-static {v0, p0}, Ljava/lang/invoke/MethodHandleStatics;->newInternalError(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/InternalError;

    move-result-object v0

    throw v0

    .line 154
    :cond_13
    move-object v0, p0

    check-cast v0, Ljava/lang/Error;

    throw v0
.end method
