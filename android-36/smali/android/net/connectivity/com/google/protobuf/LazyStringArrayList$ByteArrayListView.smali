.class Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteArrayListView;
.super Ljava/util/AbstractList;
.source "LazyStringArrayList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayListView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "[B>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final blacklist list:Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;)V
    .registers 2
    .param p1, "list"    # Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;

    .line 327
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 328
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteArrayListView;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;

    .line 329
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api add(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 324
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteArrayListView;->add(I[B)V

    return-void
.end method

.method public blacklist add(I[B)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "s"    # [B

    .line 350
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteArrayListView;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;

    # invokes: Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->add(I[B)V
    invoke-static {v0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->access$200(Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;I[B)V

    .line 351
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    .line 352
    return-void
.end method

.method public bridge synthetic whitelist test-api get(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 324
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteArrayListView;->get(I)[B

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(I)[B
    .registers 3
    .param p1, "index"    # I

    .line 333
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteArrayListView;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->getByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api remove(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 324
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteArrayListView;->remove(I)[B

    move-result-object p1

    return-object p1
.end method

.method public blacklist remove(I)[B
    .registers 4
    .param p1, "index"    # I

    .line 356
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteArrayListView;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    .line 358
    # invokes: Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->access$100(Ljava/lang/Object;)[B

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 324
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteArrayListView;->set(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public blacklist set(I[B)[B
    .registers 5
    .param p1, "index"    # I
    .param p2, "s"    # [B

    .line 343
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteArrayListView;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;

    # invokes: Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->setAndReturn(I[B)Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->access$000(Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;I[B)Ljava/lang/Object;

    move-result-object v0

    .line 344
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    .line 345
    # invokes: Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->access$100(Ljava/lang/Object;)[B

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 338
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteArrayListView;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->size()I

    move-result v0

    return v0
.end method
