.class Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;
.super Ljava/util/AbstractList;
.source "LazyStringArrayList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/LazyStringArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteStringListView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/android/framework/protobuf/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final blacklist list:Lcom/android/framework/protobuf/LazyStringArrayList;


# direct methods
.method constructor blacklist <init>(Lcom/android/framework/protobuf/LazyStringArrayList;)V
    .registers 2
    .param p1, "list"    # Lcom/android/framework/protobuf/LazyStringArrayList;

    .line 370
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 371
    iput-object p1, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/android/framework/protobuf/LazyStringArrayList;

    .line 372
    return-void
.end method


# virtual methods
.method public blacklist add(ILcom/android/framework/protobuf/ByteString;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "s"    # Lcom/android/framework/protobuf/ByteString;

    .line 393
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/android/framework/protobuf/LazyStringArrayList;

    # invokes: Lcom/android/framework/protobuf/LazyStringArrayList;->add(ILcom/android/framework/protobuf/ByteString;)V
    invoke-static {v0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->access$500(Lcom/android/framework/protobuf/LazyStringArrayList;ILcom/android/framework/protobuf/ByteString;)V

    .line 394
    iget v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

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
    check-cast p2, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;->add(ILcom/android/framework/protobuf/ByteString;)V

    return-void
.end method

.method public blacklist get(I)Lcom/android/framework/protobuf/ByteString;
    .registers 3
    .param p1, "index"    # I

    .line 376
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->getByteString(I)Lcom/android/framework/protobuf/ByteString;

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
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;->get(I)Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public blacklist remove(I)Lcom/android/framework/protobuf/ByteString;
    .registers 4
    .param p1, "index"    # I

    .line 399
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    .line 401
    # invokes: Lcom/android/framework/protobuf/LazyStringArrayList;->asByteString(Ljava/lang/Object;)Lcom/android/framework/protobuf/ByteString;
    invoke-static {v0}, Lcom/android/framework/protobuf/LazyStringArrayList;->access$400(Ljava/lang/Object;)Lcom/android/framework/protobuf/ByteString;

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
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;->remove(I)Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public blacklist set(ILcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;
    .registers 5
    .param p1, "index"    # I
    .param p2, "s"    # Lcom/android/framework/protobuf/ByteString;

    .line 386
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/android/framework/protobuf/LazyStringArrayList;

    # invokes: Lcom/android/framework/protobuf/LazyStringArrayList;->setAndReturn(ILcom/android/framework/protobuf/ByteString;)Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->access$300(Lcom/android/framework/protobuf/LazyStringArrayList;ILcom/android/framework/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    .line 387
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    .line 388
    # invokes: Lcom/android/framework/protobuf/LazyStringArrayList;->asByteString(Ljava/lang/Object;)Lcom/android/framework/protobuf/ByteString;
    invoke-static {v0}, Lcom/android/framework/protobuf/LazyStringArrayList;->access$400(Ljava/lang/Object;)Lcom/android/framework/protobuf/ByteString;

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
    check-cast p2, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;->set(ILcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 381
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/LazyStringArrayList;->size()I

    move-result v0

    return v0
.end method
