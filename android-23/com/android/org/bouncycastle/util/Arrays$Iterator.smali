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
    .line 991
    .local p0, "this":Lcom/android/org/bouncycastle/util/Arrays$Iterator;, "Lcom/android/org/bouncycastle/util/Arrays$Iterator<TT;>;"
    .local p1, "dataArray":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 981
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->position:I

    #@6
    .line 993
    iput-object p1, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->dataArray:[Ljava/lang/Object;

    #@8
    .line 991
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 998
    .local p0, "this":Lcom/android/org/bouncycastle/util/Arrays$Iterator;, "Lcom/android/org/bouncycastle/util/Arrays$Iterator<TT;>;"
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
    .line 1003
    .local p0, "this":Lcom/android/org/bouncycastle/util/Arrays$Iterator;, "Lcom/android/org/bouncycastle/util/Arrays$Iterator<TT;>;"
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->dataArray:[Ljava/lang/Object;

    #@2
    iget v1, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->position:I

    #@4
    add-int/lit8 v2, v1, 0x1

    #@6
    iput v2, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->position:I

    #@8
    aget-object v0, v0, v1

    #@a
    return-object v0
.end method

.method public remove()V
    .locals 2

    #@0
    .prologue
    .line 1008
    .local p0, "this":Lcom/android/org/bouncycastle/util/Arrays$Iterator;, "Lcom/android/org/bouncycastle/util/Arrays$Iterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Cannot remove element from an Array."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
