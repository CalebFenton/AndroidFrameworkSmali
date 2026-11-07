.class public Lcom/android/org/bouncycastle/util/Arrays$Iterator;
.super Ljava/lang/Object;
.source "Arrays.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final blacklist dataArray:[Ljava/lang/Object;

.field private blacklist position:I


# direct methods
.method public constructor blacklist <init>([Ljava/lang/Object;)V
    .registers 3

    .line 1169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1158
    iput v0, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->position:I

    .line 1170
    iput-object p1, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->dataArray:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 1175
    iget v0, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->position:I

    iget-object p0, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->dataArray:[Ljava/lang/Object;

    array-length p0, p0

    if-ge v0, p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 4

    .line 1180
    iget v0, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->position:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->dataArray:[Ljava/lang/Object;

    array-length v2, v1

    if-eq v0, v2, :cond_e

    add-int/lit8 v2, v0, 0x1

    .line 1185
    iput v2, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->position:I

    aget-object p0, v1, v0

    return-object p0

    .line 1182
    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of elements: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->position:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 1190
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot remove element from an Array."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
