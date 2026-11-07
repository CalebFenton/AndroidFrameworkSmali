.class public Landroid/util/LongSparseArray$StringParcelling;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Lcom/android/internal/util/Parcelling;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/LongSparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringParcelling"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Parcelling<",
        "Landroid/util/LongSparseArray<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist parcel(Landroid/util/LongSparseArray;Landroid/os/Parcel;I)V
    .registers 8
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "parcelFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 505
    .local p1, "array":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    if-nez p1, :cond_7

    .line 506
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    return-void

    .line 510
    :cond_7
    invoke-static {p1}, Landroid/util/LongSparseArray;->-$$Nest$fgetmSize(Landroid/util/LongSparseArray;)I

    move-result v0

    .line 512
    .local v0, "size":I
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    invoke-static {p1}, Landroid/util/LongSparseArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseArray;)[J

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 515
    invoke-static {p1}, Landroid/util/LongSparseArray;->-$$Nest$fgetmValues(Landroid/util/LongSparseArray;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, [Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public bridge synthetic blacklist parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 501
    check-cast p1, Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LongSparseArray$StringParcelling;->parcel(Landroid/util/LongSparseArray;Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist unparcel(Landroid/os/Parcel;)Landroid/util/LongSparseArray;
    .registers 11
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 521
    .local v0, "size":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 522
    const/4 v1, 0x0

    return-object v1

    .line 525
    :cond_9
    new-instance v1, Landroid/util/LongSparseArray;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 526
    .local v1, "array":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    invoke-static {v1, v0}, Landroid/util/LongSparseArray;->-$$Nest$fputmSize(Landroid/util/LongSparseArray;I)V

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/LongSparseArray;->-$$Nest$fputmKeys(Landroid/util/LongSparseArray;[J)V

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/LongSparseArray;->-$$Nest$fputmValues(Landroid/util/LongSparseArray;[Ljava/lang/Object;)V

    .line 531
    invoke-static {v1}, Landroid/util/LongSparseArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseArray;)[J

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-lt v3, v0, :cond_2a

    move v3, v4

    goto :goto_2b

    :cond_2a
    move v3, v2

    :goto_2b
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 532
    invoke-static {v1}, Landroid/util/LongSparseArray;->-$$Nest$fgetmValues(Landroid/util/LongSparseArray;)[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    if-lt v3, v0, :cond_37

    move v3, v4

    goto :goto_38

    :cond_37
    move v3, v2

    :goto_38
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 534
    if-lez v0, :cond_59

    .line 535
    invoke-static {v1}, Landroid/util/LongSparseArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseArray;)[J

    move-result-object v3

    aget-wide v5, v3, v2

    .line 536
    .local v5, "last":J
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_44
    if-ge v3, v0, :cond_59

    .line 537
    invoke-static {v1}, Landroid/util/LongSparseArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseArray;)[J

    move-result-object v7

    aget-wide v7, v7, v3

    cmp-long v7, v5, v7

    if-gez v7, :cond_52

    move v7, v4

    goto :goto_53

    :cond_52
    move v7, v2

    :goto_53
    invoke-static {v7}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 536
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 541
    .end local v3    # "i":I
    .end local v5    # "last":J
    :cond_59
    return-object v1
.end method

.method public bridge synthetic blacklist unparcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 501
    invoke-virtual {p0, p1}, Landroid/util/LongSparseArray$StringParcelling;->unparcel(Landroid/os/Parcel;)Landroid/util/LongSparseArray;

    move-result-object p1

    return-object p1
.end method
