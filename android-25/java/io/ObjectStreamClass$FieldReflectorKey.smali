.class Ljava/io/ObjectStreamClass$FieldReflectorKey;
.super Ljava/lang/ref/WeakReference;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldReflectorKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final hash:I

.field private final nullClass:Z

.field private final sigs:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;[Ljava/io/ObjectStreamField;Ljava/lang/ref/ReferenceQueue;)V
    .locals 5
    .param p2, "fields"    # [Ljava/io/ObjectStreamField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/io/ObjectStreamField;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2182
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Class<*>;>;"
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@3
    .line 2183
    if-nez p1, :cond_0

    #@5
    const/4 v3, 0x1

    #@6
    :goto_0
    iput-boolean v3, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->nullClass:Z

    #@8
    .line 2184
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    .line 2185
    .local v2, "sbuf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_1
    array-length v3, p2

    #@f
    if-ge v1, v3, :cond_1

    #@11
    .line 2186
    aget-object v0, p2, v1

    #@13
    .line 2187
    .local v0, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 2185
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_1

    #@25
    .line 2183
    .end local v0    # "f":Ljava/io/ObjectStreamField;
    .end local v1    # "i":I
    .end local v2    # "sbuf":Ljava/lang/StringBuilder;
    :cond_0
    const/4 v3, 0x0

    #@26
    goto :goto_0

    #@27
    .line 2189
    .restart local v1    # "i":I
    .restart local v2    # "sbuf":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    iput-object v3, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->sigs:Ljava/lang/String;

    #@2d
    .line 2190
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@30
    move-result v3

    #@31
    iget-object v4, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->sigs:Ljava/lang/String;

    #@33
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    #@36
    move-result v4

    #@37
    add-int/2addr v3, v4

    #@38
    iput v3, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->hash:I

    #@3a
    .line 2180
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2198
    if-ne p1, p0, :cond_0

    #@3
    .line 2199
    const/4 v2, 0x1

    #@4
    return v2

    #@5
    .line 2202
    :cond_0
    instance-of v3, p1, Ljava/io/ObjectStreamClass$FieldReflectorKey;

    #@7
    if-eqz v3, :cond_3

    #@9
    move-object v0, p1

    #@a
    .line 2203
    check-cast v0, Ljava/io/ObjectStreamClass$FieldReflectorKey;

    #@c
    .line 2205
    .local v0, "other":Ljava/io/ObjectStreamClass$FieldReflectorKey;
    iget-boolean v3, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->nullClass:Z

    #@e
    if-eqz v3, :cond_2

    #@10
    iget-boolean v3, v0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->nullClass:Z

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 2208
    :goto_0
    iget-object v2, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->sigs:Ljava/lang/String;

    #@16
    iget-object v3, v0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->sigs:Ljava/lang/String;

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    .line 2205
    :cond_1
    return v2

    #@1d
    .line 2206
    :cond_2
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$FieldReflectorKey;->get()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Ljava/lang/Class;

    #@23
    .local v1, "referent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    #@25
    .line 2207
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$FieldReflectorKey;->get()Ljava/lang/Object;

    #@28
    move-result-object v3

    #@29
    if-ne v1, v3, :cond_1

    #@2b
    goto :goto_0

    #@2c
    .line 2210
    .end local v0    # "other":Ljava/io/ObjectStreamClass$FieldReflectorKey;
    .end local v1    # "referent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 2194
    iget v0, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->hash:I

    #@2
    return v0
.end method
