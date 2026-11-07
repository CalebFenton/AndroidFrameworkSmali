.class public Ljava/util/HashSet;
.super Ljava/util/AbstractSet;
.source "HashSet.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final greylist-max-o PRESENT:Ljava/lang/Object;

.field static final whitelist serialVersionUID:J = -0x45bb7a6a694748ccL


# instance fields
.field transient greylist map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TE;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/HashSet;->PRESENT:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 106
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    .line 108
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 153
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    .line 155
    return-void
.end method

.method public constructor whitelist test-api <init>(IF)V
    .registers 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 137
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    .line 139
    return-void
.end method

.method constructor greylist-max-o <init>(IFZ)V
    .registers 5
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "dummy"    # Z

    .line 170
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 171
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    iput-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    .line 172
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 119
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 120
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/util/HashMap;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    .line 121
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 122
    return-void
.end method

.method public static whitelist test-api newHashSet(I)Ljava/util/HashSet;
    .registers 4
    .param p0, "numElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashSet<",
            "TT;>;"
        }
    .end annotation

    .line 397
    if-ltz p0, :cond_c

    .line 400
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/HashMap;->calculateHashMapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    return-object v0

    .line 398
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative number of elements: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 9
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 309
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    .line 312
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 313
    .local v0, "capacity":I
    if-ltz v0, :cond_98

    .line 319
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v1

    .line 320
    .local v1, "loadFactor":F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-lez v2, :cond_7f

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_7f

    .line 325
    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v1, v2, v3}, Ljava/lang/Math;->clamp(FFF)F

    move-result v1

    .line 328
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 329
    .local v2, "size":I
    if-ltz v2, :cond_66

    .line 335
    int-to-float v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v1

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v4, v3

    const/high16 v3, 0x4e800000

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v0, v3

    .line 342
    invoke-static {}, Ljdk/internal/access/SharedSecrets;->getJavaObjectInputStreamAccess()Ljdk/internal/access/JavaObjectInputStreamAccess;

    move-result-object v3

    const-class v4, [Ljava/util/Map$Entry;

    .line 343
    invoke-static {v0}, Ljava/util/HashMap;->tableSizeFor(I)I

    move-result v5

    invoke-interface {v3, p1, v4, v5}, Ljdk/internal/access/JavaObjectInputStreamAccess;->checkArray(Ljava/io/ObjectInputStream;Ljava/lang/Class;I)V

    .line 346
    instance-of v3, p0, Ljava/util/LinkedHashSet;

    if-eqz v3, :cond_4d

    .line 347
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IF)V

    goto :goto_52

    .line 348
    :cond_4d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v0, v1}, Ljava/util/HashMap;-><init>(IF)V

    :goto_52
    iput-object v3, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    .line 351
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_55
    if-ge v3, v2, :cond_65

    .line 353
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 354
    .local v4, "e":Ljava/lang/Object;, "TE;"
    iget-object v5, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    sget-object v6, Ljava/util/HashSet;->PRESENT:Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 356
    .end local v3    # "i":I
    :cond_65
    return-void

    .line 330
    :cond_66
    new-instance v3, Ljava/io/InvalidObjectException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 321
    .end local v2    # "size":I
    :cond_7f
    new-instance v2, Ljava/io/InvalidObjectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal load factor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 314
    .end local v1    # "loadFactor":F
    :cond_98
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 290
    iget-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->capacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 291
    iget-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->loadFactor()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 294
    iget-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 297
    iget-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 298
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_28

    .line 299
    :cond_36
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 229
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    sget-object v1, Ljava/util/HashSet;->PRESENT:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 253
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 254
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 265
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 266
    .local v0, "newSet":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v1, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v0, Ljava/util/HashSet;->map:Ljava/util/HashMap;
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_11

    .line 267
    return-object v0

    .line 268
    .end local v0    # "newSet":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    :catch_11
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 213
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 200
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 182
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 245
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/util/HashSet;->PRESENT:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 191
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 371
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    new-instance v0, Ljava/util/HashMap$KeySpliterator;

    iget-object v1, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v5}, Ljava/util/HashMap$KeySpliterator;-><init>(Ljava/util/HashMap;IIII)V

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 3

    .line 376
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    iget-object v1, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->keysToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 381
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    iget-object v1, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->prepareArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->keysToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
