.class public Lcom/android/org/bouncycastle/util/Arrays$Iterator;
.super Ljava/lang/Object;
.source "Arrays.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/util/Arrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Iterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final dataArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private position:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1070
    .local p1, "dataArray":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1060
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->position:I

    #@6
    .line 1072
    iput-object p1, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->dataArray:[Ljava/lang/Object;

    #@8
    .line 1070
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 1077
    iget v0, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->position:I

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->dataArray:[Ljava/lang/Object;

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 1082
    iget v0, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->position:I

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->dataArray:[Ljava/lang/Object;

    #@4
    array-length v1, v1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 1084
    new-instance v0, Ljava/util/NoSuchElementException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Out of elements: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget v2, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->position:I

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->dataArray:[Ljava/lang/Object;

    #@25
    iget v1, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->position:I

    #@27
    add-int/lit8 v2, v1, 0x1

    #@29
    iput v2, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->position:I

    #@2b
    aget-object v0, v0, v1

    #@2d
    return-object v0
.end method

.method public remove()V
    .locals 2

    #@0
    .prologue
    .line 1092
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Cannot remove element from an Array."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
