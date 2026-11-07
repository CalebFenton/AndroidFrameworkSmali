.class Ljava/util/logging/LogManager$Beans;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Beans"
.end annotation


# static fields
.field private static final greylist-max-o propertyChangeEventClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final greylist-max-o propertyChangeListenerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final greylist-max-o propertyChangeMethod:Ljava/lang/reflect/Method;

.field private static final greylist-max-o propertyEventCtor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 1742
    nop

    .line 1743
    const-string v0, "java.beans.PropertyChangeListener"

    invoke-static {v0}, Ljava/util/logging/LogManager$Beans;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/util/logging/LogManager$Beans;->propertyChangeListenerClass:Ljava/lang/Class;

    .line 1745
    nop

    .line 1746
    const-string v0, "java.beans.PropertyChangeEvent"

    invoke-static {v0}, Ljava/util/logging/LogManager$Beans;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/util/logging/LogManager$Beans;->propertyChangeEventClass:Ljava/lang/Class;

    .line 1748
    sget-object v0, Ljava/util/logging/LogManager$Beans;->propertyChangeListenerClass:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/util/logging/LogManager$Beans;->propertyChangeEventClass:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1749
    const-string v3, "propertyChange"

    invoke-static {v0, v3, v2}, Ljava/util/logging/LogManager$Beans;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ljava/util/logging/LogManager$Beans;->propertyChangeMethod:Ljava/lang/reflect/Method;

    .line 1753
    sget-object v0, Ljava/util/logging/LogManager$Beans;->propertyChangeEventClass:Ljava/lang/Class;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 1754
    invoke-static {v0, v2}, Ljava/util/logging/LogManager$Beans;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Ljava/util/logging/LogManager$Beans;->propertyEventCtor:Ljava/lang/reflect/Constructor;

    .line 1753
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1762
    :try_start_0
    const-class v0, Ljava/util/logging/LogManager$Beans;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 1763
    :catch_c
    move-exception v0

    .line 1764
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static varargs blacklist getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 1769
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_8} :catch_9

    :goto_8
    return-object v0

    .line 1770
    :catch_9
    move-exception v0

    .line 1771
    .local v0, "x":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static varargs blacklist getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1777
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    :try_start_4
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_8} :catch_9

    :goto_8
    return-object v0

    .line 1778
    :catch_9
    move-exception v0

    .line 1779
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method static greylist-max-o invokePropertyChange(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p0, "listener"    # Ljava/lang/Object;
    .param p1, "ev"    # Ljava/lang/Object;

    .line 1818
    :try_start_0
    sget-object v0, Ljava/util/logging/LogManager$Beans;->propertyChangeMethod:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_9} :catch_b

    .line 1828
    nop

    .line 1829
    return-void

    .line 1821
    :catch_b
    move-exception v0

    .line 1822
    .local v0, "x":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1823
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/Error;

    if-nez v2, :cond_22

    .line 1825
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1c

    .line 1826
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 1827
    :cond_1c
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1824
    :cond_22
    move-object v2, v1

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 1819
    .end local v0    # "x":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_26
    move-exception v0

    .line 1820
    .local v0, "x":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method static greylist-max-o isBeansPresent()Z
    .registers 1

    .line 1787
    sget-object v0, Ljava/util/logging/LogManager$Beans;->propertyChangeListenerClass:Ljava/lang/Class;

    if-eqz v0, :cond_a

    sget-object v0, Ljava/util/logging/LogManager$Beans;->propertyChangeEventClass:Ljava/lang/Class;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static greylist-max-o newPropertyChangeEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .line 1799
    :try_start_0
    sget-object v0, Ljava/util/logging/LogManager$Beans;->propertyEventCtor:Ljava/lang/reflect/Constructor;

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_a} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_a} :catch_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 1802
    :catch_b
    move-exception v0

    .line 1803
    .local v0, "x":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1804
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/Error;

    if-nez v2, :cond_22

    .line 1806
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1c

    .line 1807
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 1808
    :cond_1c
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1805
    :cond_22
    move-object v2, v1

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 1800
    .end local v0    # "x":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_26
    move-exception v0

    .line 1801
    .local v0, "x":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
