.class public Ljava/lang/Object;
.source "Object.java"


# instance fields
.field private transient greylist-max-o shadow$_klass_:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o shadow$_monitor_:I


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 57
    return-void
.end method

.method static greylist identityHashCode(Ljava/lang/Object;)I
    .registers 7
    .param p0, "obj"    # Ljava/lang/Object;

    .line 129
    iget v0, p0, Ljava/lang/Object;->shadow$_monitor_:I

    .line 130
    .local v0, "lockWord":I
    const/high16 v1, -0x40000000    # -2.0f

    .line 131
    .local v1, "lockWordStateMask":I
    const/high16 v2, -0x80000000

    .line 132
    .local v2, "lockWordStateHash":I
    const v3, 0xfffffff

    .line 133
    .local v3, "lockWordHashMask":I
    const/high16 v4, -0x40000000    # -2.0f

    and-int/2addr v4, v0

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_15

    .line 134
    const v4, 0xfffffff

    and-int/2addr v4, v0

    return v4

    .line 136
    :cond_15
    invoke-static {p0}, Ljava/lang/Object;->identityHashCodeNative(Ljava/lang/Object;)I

    move-result v4

    return v4
.end method

.method private static native greylist-max-o identityHashCodeNative(Ljava/lang/Object;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o internalClone()Ljava/lang/Object;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method protected whitelist test-api clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 275
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_9

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;->internalClone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 276
    :cond_9
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t implement Cloneable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 206
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 640
    return-void
.end method

.method public final whitelist test-api getClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Ljava/lang/Object;->shadow$_klass_:Ljava/lang/Class;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 122
    invoke-static {p0}, Ljava/lang/Object;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final native whitelist test-api notify()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final native whitelist test-api notifyAll()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api wait()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 543
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 544
    return-void
.end method

.method public final whitelist test-api wait(J)V
    .registers 4
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 405
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Object;->wait(JI)V

    .line 406
    return-void
.end method

.method public final native whitelist test-api wait(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method
