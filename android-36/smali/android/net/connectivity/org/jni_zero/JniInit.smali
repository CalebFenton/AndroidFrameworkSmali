.class public Landroid/net/connectivity/org/jni_zero/JniInit;
.super Ljava/lang/Object;
.source "JniInit.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "jni_zero"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 8
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist crashIfMultiplexingMisaligned(JJ)V
    .registers 12
    .param p0, "wholeHash"    # J
    .param p2, "priorityHash"    # J

    .line 15
    const-string v0, " or "

    const-string v1, "J.N"

    :try_start_4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "WHOLE_HASH"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    .line 16
    .local v4, "javaWholeHash":J
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "PRIORITY_HASH"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v1

    .line 19
    .local v1, "javaPriorityHash":J
    cmp-long v3, v4, p0

    if-eqz v3, :cond_61

    cmp-long v3, v4, p2

    if-eqz v3, :cond_61

    cmp-long v3, v1, p0

    if-nez v3, :cond_2e

    goto :goto_61

    .line 22
    :cond_2e
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JNI Zero multiplexing hashes do not align. Native: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Java: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "wholeHash":J
    .end local p2    # "priorityHash":J
    throw v3
    :try_end_61
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_4 .. :try_end_61} :catch_62

    .line 37
    .end local v1    # "javaPriorityHash":J
    .end local v4    # "javaWholeHash":J
    .restart local p0    # "wholeHash":J
    .restart local p2    # "priorityHash":J
    :cond_61
    :goto_61
    goto :goto_64

    .line 32
    :catch_62
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    nop

    .line 38
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_64
    return-void
.end method
