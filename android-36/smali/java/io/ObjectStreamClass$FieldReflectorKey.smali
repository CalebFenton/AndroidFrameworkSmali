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
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o hash:I

.field private final greylist-max-o nullClass:Z

.field private final greylist-max-o sigs:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Class;[Ljava/io/ObjectStreamField;Ljava/lang/ref/ReferenceQueue;)V
    .registers 9
    .param p2, "fields"    # [Ljava/io/ObjectStreamField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/io/ObjectStreamField;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 2386
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Class<*>;>;"
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2387
    if-nez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->nullClass:Z

    .line 2388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2389
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    array-length v2, p2

    if-ge v1, v2, :cond_27

    .line 2390
    aget-object v2, p2, v1

    .line 2391
    .local v2, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2389
    .end local v2    # "f":Ljava/io/ObjectStreamField;
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2393
    .end local v1    # "i":I
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->sigs:Ljava/lang/String;

    .line 2394
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->sigs:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->hash:I

    .line 2395
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2402
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 2403
    return v0

    .line 2406
    :cond_4
    instance-of v1, p1, Ljava/io/ObjectStreamClass$FieldReflectorKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    .line 2407
    move-object v1, p1

    check-cast v1, Ljava/io/ObjectStreamClass$FieldReflectorKey;

    .line 2409
    .local v1, "other":Ljava/io/ObjectStreamClass$FieldReflectorKey;
    iget-boolean v3, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->nullClass:Z

    if-eqz v3, :cond_15

    iget-boolean v3, v1, Ljava/io/ObjectStreamClass$FieldReflectorKey;->nullClass:Z

    if-eqz v3, :cond_2f

    goto :goto_24

    .line 2410
    :cond_15
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$FieldReflectorKey;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    move-object v4, v3

    .local v4, "referent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_2f

    .line 2411
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass$FieldReflectorKey;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_2f

    .end local v4    # "referent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_24
    iget-object v3, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->sigs:Ljava/lang/String;

    iget-object v4, v1, Ljava/io/ObjectStreamClass$FieldReflectorKey;->sigs:Ljava/lang/String;

    .line 2412
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v2

    .line 2409
    :goto_30
    return v0

    .line 2414
    .end local v1    # "other":Ljava/io/ObjectStreamClass$FieldReflectorKey;
    :cond_31
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2398
    iget v0, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->hash:I

    return v0
.end method
