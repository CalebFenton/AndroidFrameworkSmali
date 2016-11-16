.class Lsun/nio/ch/Reflect;
.super Ljava/lang/Object;
.source "Reflect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/Reflect$ReflectionError;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 2
    .param p0, "ob"    # Ljava/lang/Object;
    .param p1, "f"    # Ljava/lang/reflect/Field;

    #@0
    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 136
    :catch_0
    move-exception v0

    #@6
    .line 137
    .local v0, "x":Ljava/lang/IllegalAccessException;
    new-instance v1, Lsun/nio/ch/Reflect$ReflectionError;

    #@8
    invoke-direct {v1, v0}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    #@b
    throw v1
.end method

.method static get(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1
    .param p0, "f"    # Ljava/lang/reflect/Field;

    #@0
    .prologue
    .line 142
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0}, Lsun/nio/ch/Reflect;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method static invoke(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "c"    # Ljava/lang/reflect/Constructor;
    .param p1, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v3

    #@4
    return-object v3

    #@5
    .line 75
    :catch_0
    move-exception v2

    #@6
    .line 76
    .local v2, "x":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Lsun/nio/ch/Reflect$ReflectionError;

    #@8
    invoke-direct {v3, v2}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    #@b
    throw v3

    #@c
    .line 73
    .end local v2    # "x":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    #@d
    .line 74
    .local v0, "x":Ljava/lang/IllegalAccessException;
    new-instance v3, Lsun/nio/ch/Reflect$ReflectionError;

    #@f
    invoke-direct {v3, v0}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    #@12
    throw v3

    #@13
    .line 71
    .end local v0    # "x":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    #@14
    .line 72
    .local v1, "x":Ljava/lang/InstantiationException;
    new-instance v3, Lsun/nio/ch/Reflect$ReflectionError;

    #@16
    invoke-direct {v3, v1}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    #@19
    throw v3
.end method

.method static invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "m"    # Ljava/lang/reflect/Method;
    .param p1, "ob"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 98
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v2

    #@4
    return-object v2

    #@5
    .line 101
    :catch_0
    move-exception v1

    #@6
    .line 102
    .local v1, "x":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lsun/nio/ch/Reflect$ReflectionError;

    #@8
    invoke-direct {v2, v1}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    #@b
    throw v2

    #@c
    .line 99
    .end local v1    # "x":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    #@d
    .line 100
    .local v0, "x":Ljava/lang/IllegalAccessException;
    new-instance v2, Lsun/nio/ch/Reflect$ReflectionError;

    #@f
    invoke-direct {v2, v0}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    #@12
    throw v2
.end method

.method static invokeIO(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "m"    # Ljava/lang/reflect/Method;
    .param p1, "ob"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v2

    #@4
    return-object v2

    #@5
    .line 113
    :catch_0
    move-exception v1

    #@6
    .line 114
    .local v1, "x":Ljava/lang/reflect/InvocationTargetException;
    const-class v2, Ljava/io/IOException;

    #@8
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 115
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Ljava/io/IOException;

    #@18
    throw v2

    #@19
    .line 116
    :cond_0
    new-instance v2, Lsun/nio/ch/Reflect$ReflectionError;

    #@1b
    invoke-direct {v2, v1}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    #@1e
    throw v2

    #@1f
    .line 111
    .end local v1    # "x":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    #@20
    .line 112
    .local v0, "x":Ljava/lang/IllegalAccessException;
    new-instance v2, Lsun/nio/ch/Reflect$ReflectionError;

    #@22
    invoke-direct {v2, v0}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    #@25
    throw v2
.end method

.method static lookupConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "paramTypes"    # [Ljava/lang/Class;

    #@0
    .prologue
    .line 57
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    .line 58
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@7
    move-result-object v0

    #@8
    .line 59
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-static {v0}, Lsun/nio/ch/Reflect;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 60
    return-object v0

    #@c
    .line 63
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    #@d
    .line 64
    .local v3, "x":Ljava/lang/NoSuchMethodException;
    new-instance v4, Lsun/nio/ch/Reflect$ReflectionError;

    #@f
    invoke-direct {v4, v3}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    #@12
    throw v4

    #@13
    .line 61
    .end local v3    # "x":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    #@14
    .line 62
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    new-instance v4, Lsun/nio/ch/Reflect$ReflectionError;

    #@16
    invoke-direct {v4, v2}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    #@19
    throw v4
.end method

.method static lookupField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 122
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 123
    .local v0, "cl":Ljava/lang/Class;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@7
    move-result-object v1

    #@8
    .line 124
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-static {v1}, Lsun/nio/ch/Reflect;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 125
    return-object v1

    #@c
    .line 128
    .end local v0    # "cl":Ljava/lang/Class;
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    #@d
    .line 129
    .local v3, "x":Ljava/lang/NoSuchFieldException;
    new-instance v4, Lsun/nio/ch/Reflect$ReflectionError;

    #@f
    invoke-direct {v4, v3}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    #@12
    throw v4

    #@13
    .line 126
    .end local v3    # "x":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    #@14
    .line 127
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    new-instance v4, Lsun/nio/ch/Reflect$ReflectionError;

    #@16
    invoke-direct {v4, v2}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    #@19
    throw v4
.end method

.method static varargs lookupMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "paramTypes"    # [Ljava/lang/Class;

    #@0
    .prologue
    .line 85
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 86
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@7
    move-result-object v1

    #@8
    .line 87
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-static {v1}, Lsun/nio/ch/Reflect;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 88
    return-object v1

    #@c
    .line 91
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    #@d
    .line 92
    .local v3, "x":Ljava/lang/NoSuchMethodException;
    new-instance v4, Lsun/nio/ch/Reflect$ReflectionError;

    #@f
    invoke-direct {v4, v3}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    #@12
    throw v4

    #@13
    .line 89
    .end local v3    # "x":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    #@14
    .line 90
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    new-instance v4, Lsun/nio/ch/Reflect$ReflectionError;

    #@16
    invoke-direct {v4, v2}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    #@19
    throw v4
.end method

.method static set(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 2
    .param p0, "ob"    # Ljava/lang/Object;
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .param p2, "val"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 147
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 145
    return-void

    #@4
    .line 148
    :catch_0
    move-exception v0

    #@5
    .line 149
    .local v0, "x":Ljava/lang/IllegalAccessException;
    new-instance v1, Lsun/nio/ch/Reflect$ReflectionError;

    #@7
    invoke-direct {v1, v0}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    #@a
    throw v1
.end method

.method private static setAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .locals 1
    .param p0, "ao"    # Ljava/lang/reflect/AccessibleObject;

    #@0
    .prologue
    .line 46
    new-instance v0, Lsun/nio/ch/Reflect$1;

    #@2
    invoke-direct {v0, p0}, Lsun/nio/ch/Reflect$1;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    .line 45
    return-void
.end method

.method static setBoolean(Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V
    .locals 2
    .param p0, "ob"    # Ljava/lang/Object;
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .param p2, "val"    # Z

    #@0
    .prologue
    .line 163
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 161
    return-void

    #@4
    .line 164
    :catch_0
    move-exception v0

    #@5
    .line 165
    .local v0, "x":Ljava/lang/IllegalAccessException;
    new-instance v1, Lsun/nio/ch/Reflect$ReflectionError;

    #@7
    invoke-direct {v1, v0}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    #@a
    throw v1
.end method

.method static setInt(Ljava/lang/Object;Ljava/lang/reflect/Field;I)V
    .locals 2
    .param p0, "ob"    # Ljava/lang/Object;
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .param p2, "val"    # I

    #@0
    .prologue
    .line 155
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 153
    return-void

    #@4
    .line 156
    :catch_0
    move-exception v0

    #@5
    .line 157
    .local v0, "x":Ljava/lang/IllegalAccessException;
    new-instance v1, Lsun/nio/ch/Reflect$ReflectionError;

    #@7
    invoke-direct {v1, v0}, Lsun/nio/ch/Reflect$ReflectionError;-><init>(Ljava/lang/Throwable;)V

    #@a
    throw v1
.end method
