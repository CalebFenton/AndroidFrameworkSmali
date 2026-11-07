.class Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteStringListView;
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
    name = "ByteStringListView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Landroid/net/connectivity/com/google/protobuf/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final blacklist list:Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;)V
    .registers 2
    .param p1, "list"    # Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;

    .line 370
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 371
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteStringListView;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;

    .line 372
    return-void
.end method


# virtual methods
.method public blacklist add(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "s"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 393
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteStringListView;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;

    # invokes: Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->add(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V
    invoke-static {v0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->access$500(Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;ILandroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 394
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    .line 395
    return-void
.end method

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

    .line 367
    check-cast p2, Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteStringListView;->add(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V

    return-void
.end method

.method public blacklist get(I)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 3
    .param p1, "index"    # I

    .line 376
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteStringListView;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->getByteString(I)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
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

    .line 367
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteStringListView;->get(I)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public blacklist remove(I)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 4
    .param p1, "index"    # I

    .line 399
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteStringListView;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    .line 401
    # invokes: Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->asByteString(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/ByteString;
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->access$400(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v1

    return-object v1
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

    .line 367
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteStringListView;->remove(I)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public blacklist set(ILandroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 5
    .param p1, "index"    # I
    .param p2, "s"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 386
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteStringListView;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;

    # invokes: Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->setAndReturn(ILandroid/net/connectivity/com/google/protobuf/ByteString;)Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->access$300(Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;ILandroid/net/connectivity/com/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    .line 387
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    .line 388
    # invokes: Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->asByteString(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/ByteString;
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->access$400(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/ByteString;

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

    .line 367
    check-cast p2, Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteStringListView;->set(ILandroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 381
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList$ByteStringListView;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/LazyStringArrayList;->size()I

    move-result v0

    return v0
.end method
