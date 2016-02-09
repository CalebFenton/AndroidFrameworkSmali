.class public final Lsun/misc/Unsafe;
.super Ljava/lang/Object;
.source "Unsafe.java"


# static fields
.field private static final THE_ONE:Lsun/misc/Unsafe;

.field private static final theUnsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 31
    new-instance v0, Lsun/misc/Unsafe;

    #@2
    invoke-direct {v0}, Lsun/misc/Unsafe;-><init>()V

    #@5
    sput-object v0, Lsun/misc/Unsafe;->THE_ONE:Lsun/misc/Unsafe;

    #@7
    .line 33
    sget-object v0, Lsun/misc/Unsafe;->THE_ONE:Lsun/misc/Unsafe;

    #@9
    sput-object v0, Lsun/misc/Unsafe;->theUnsafe:Lsun/misc/Unsafe;

    #@b
    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static native getArrayBaseOffsetForComponentType(Ljava/lang/Class;)I
.end method

.method private static native getArrayIndexScaleForComponentType(Ljava/lang/Class;)I
.end method

.method public static getUnsafe()Lsun/misc/Unsafe;
    .locals 3

    #@0
    .prologue
    .line 49
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    .line 50
    .local v0, "calling":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    #@6
    const-class v1, Lsun/misc/Unsafe;

    #@8
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@b
    move-result-object v1

    #@c
    if-eq v0, v1, :cond_0

    #@e
    .line 51
    new-instance v1, Ljava/lang/SecurityException;

    #@10
    const-string/jumbo v2, "Unsafe access denied"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 54
    :cond_0
    sget-object v1, Lsun/misc/Unsafe;->THE_ONE:Lsun/misc/Unsafe;

    #@19
    return-object v1
.end method


# virtual methods
.method public native allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public arrayBaseOffset(Ljava/lang/Class;)I
    .locals 4
    .param p1, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 80
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 81
    .local v0, "component":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    #@6
    .line 82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Valid for array classes only: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 84
    :cond_0
    invoke-static {v0}, Lsun/misc/Unsafe;->getArrayBaseOffsetForComponentType(Ljava/lang/Class;)I

    #@23
    move-result v1

    #@24
    return v1
.end method

.method public arrayIndexScale(Ljava/lang/Class;)I
    .locals 4
    .param p1, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 94
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 95
    .local v0, "component":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    #@6
    .line 96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Valid for array classes only: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 98
    :cond_0
    invoke-static {v0}, Lsun/misc/Unsafe;->getArrayIndexScaleForComponentType(Ljava/lang/Class;)I

    #@23
    move-result v1

    #@24
    return v1
.end method

.method public native compareAndSwapInt(Ljava/lang/Object;JII)Z
.end method

.method public native compareAndSwapLong(Ljava/lang/Object;JJJ)Z
.end method

.method public native compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public native getInt(Ljava/lang/Object;J)I
.end method

.method public native getIntVolatile(Ljava/lang/Object;J)I
.end method

.method public native getLong(Ljava/lang/Object;J)J
.end method

.method public native getLongVolatile(Ljava/lang/Object;J)J
.end method

.method public native getObject(Ljava/lang/Object;J)Ljava/lang/Object;
.end method

.method public native getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;
.end method

.method public objectFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;

    #@0
    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "valid for instance fields only"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 69
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getOffset()I

    #@16
    move-result v0

    #@17
    int-to-long v0, v0

    #@18
    return-wide v0
.end method

.method public park(ZJ)V
    .locals 2
    .param p1, "absolute"    # Z
    .param p2, "time"    # J

    #@0
    .prologue
    .line 296
    if-eqz p1, :cond_0

    #@2
    .line 297
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p2, p3}, Ljava/lang/Thread;->parkUntil$(J)V

    #@9
    .line 295
    :goto_0
    return-void

    #@a
    .line 299
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p2, p3}, Ljava/lang/Thread;->parkFor$(J)V

    #@11
    goto :goto_0
.end method

.method public native putInt(Ljava/lang/Object;JI)V
.end method

.method public native putIntVolatile(Ljava/lang/Object;JI)V
.end method

.method public native putLong(Ljava/lang/Object;JJ)V
.end method

.method public native putLongVolatile(Ljava/lang/Object;JJ)V
.end method

.method public native putObject(Ljava/lang/Object;JLjava/lang/Object;)V
.end method

.method public native putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V
.end method

.method public native putOrderedInt(Ljava/lang/Object;JI)V
.end method

.method public native putOrderedLong(Ljava/lang/Object;JJ)V
.end method

.method public native putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V
.end method

.method public unpark(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 312
    instance-of v0, p1, Ljava/lang/Thread;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 313
    check-cast p1, Ljava/lang/Thread;

    #@6
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Thread;->unpark$()V

    #@9
    .line 311
    return-void

    #@a
    .line 315
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "valid for Threads only"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
.end method
