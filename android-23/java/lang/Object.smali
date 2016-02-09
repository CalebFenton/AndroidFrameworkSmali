.class public Ljava/lang/Object;
.source "Object.java"


# instance fields
.field private transient shadow$_klass_:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private transient shadow$_monitor_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 148
    return-void
.end method

.method private native internalClone()Ljava/lang/Object;
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 167
    instance-of v0, p0, Ljava/lang/Cloneable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 168
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Class "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 169
    const-string/jumbo v2, " doesn\'t implement Cloneable"

    #@21
    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 172
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;->internalClone()Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 205
    if-ne p0, p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "FI_EMPTY"
        }
    .end annotation

    #@0
    .prologue
    .line 237
    return-void
.end method

.method public final getClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Ljava/lang/Object;->shadow$_klass_:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 276
    iget v0, p0, Ljava/lang/Object;->shadow$_monitor_:I

    #@2
    .line 277
    .local v0, "lockWord":I
    const/high16 v3, -0x40000000    # -2.0f

    #@4
    .line 278
    .local v3, "lockWordStateMask":I
    const/high16 v2, -0x80000000

    #@6
    .line 279
    .local v2, "lockWordStateHash":I
    const v1, 0xfffffff

    #@9
    .line 280
    .local v1, "lockWordHashMask":I
    const/high16 v4, -0x40000000    # -2.0f

    #@b
    and-int/2addr v4, v0

    #@c
    const/high16 v5, -0x80000000

    #@e
    if-ne v4, v5, :cond_0

    #@10
    .line 281
    const v4, 0xfffffff

    #@13
    and-int/2addr v4, v0

    #@14
    return v4

    #@15
    .line 283
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@18
    move-result v4

    #@19
    return v4
.end method

.method public final native notify()V
.end method

.method public final native notifyAll()V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const/16 v1, 0x40

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@1a
    move-result v1

    #@1b
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public final native wait()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public final wait(J)V
    .locals 1
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 423
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Object;->wait(JI)V

    #@4
    .line 422
    return-void
.end method

.method public final native wait(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
