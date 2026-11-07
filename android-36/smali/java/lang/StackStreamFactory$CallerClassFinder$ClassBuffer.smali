.class final Ljava/lang/StackStreamFactory$CallerClassFinder$ClassBuffer;
.super Ljava/lang/StackStreamFactory$FrameBuffer;
.source "StackStreamFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StackStreamFactory$CallerClassFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClassBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/StackStreamFactory$FrameBuffer<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field blacklist classes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 690
    const-class v0, Ljava/lang/StackStreamFactory;

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "batchSize"    # I

    .line 693
    invoke-direct {p0, p1}, Ljava/lang/StackStreamFactory$FrameBuffer;-><init>(I)V

    .line 694
    new-array v0, p1, [Ljava/lang/Class;

    iput-object v0, p0, Ljava/lang/StackStreamFactory$CallerClassFinder$ClassBuffer;->classes:[Ljava/lang/Class;

    .line 695
    return-void
.end method


# virtual methods
.method final blacklist at(I)Ljava/lang/Class;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 701
    iget-object v0, p0, Ljava/lang/StackStreamFactory$CallerClassFinder$ClassBuffer;->classes:[Ljava/lang/Class;

    aget-object v0, v0, p1

    return-object v0
.end method

.method blacklist frames()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 698
    iget-object v0, p0, Ljava/lang/StackStreamFactory$CallerClassFinder$ClassBuffer;->classes:[Ljava/lang/Class;

    return-object v0
.end method

.method bridge synthetic blacklist frames()[Ljava/lang/Object;
    .registers 2

    .line 690
    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$CallerClassFinder$ClassBuffer;->frames()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method blacklist resize(II)V
    .registers 7
    .param p1, "startIndex"    # I
    .param p2, "elements"    # I

    .line 718
    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$CallerClassFinder$ClassBuffer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 721
    nop

    .line 724
    add-int v0, p1, p2

    .line 725
    .local v0, "size":I
    iget-object v1, p0, Ljava/lang/StackStreamFactory$CallerClassFinder$ClassBuffer;->classes:[Ljava/lang/Class;

    array-length v1, v1

    if-ge v1, v0, :cond_1a

    .line 728
    iget-object v1, p0, Ljava/lang/StackStreamFactory$CallerClassFinder$ClassBuffer;->classes:[Ljava/lang/Class;

    .line 729
    .local v1, "prev":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v2, v0, [Ljava/lang/Class;

    iput-object v2, p0, Ljava/lang/StackStreamFactory$CallerClassFinder$ClassBuffer;->classes:[Ljava/lang/Class;

    .line 730
    iget-object v2, p0, Ljava/lang/StackStreamFactory$CallerClassFinder$ClassBuffer;->classes:[Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 732
    .end local v1    # "prev":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1a
    iput v0, p0, Ljava/lang/StackStreamFactory$CallerClassFinder$ClassBuffer;->currentBatchSize:I

    .line 733
    return-void

    .line 719
    .end local v0    # "size":I
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "inactive frame buffer can\'t be resized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
