.class Lcom/android/framework/protobuf/ByteString$2;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/framework/protobuf/ByteString;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)I
    .registers 7
    .param p1, "former"    # Lcom/android/framework/protobuf/ByteString;
    .param p2, "latter"    # Lcom/android/framework/protobuf/ByteString;

    .line 304
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;

    move-result-object v0

    .line 305
    .local v0, "formerBytes":Lcom/android/framework/protobuf/ByteString$ByteIterator;
    invoke-virtual {p2}, Lcom/android/framework/protobuf/ByteString;->iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;

    move-result-object v1

    .line 307
    .local v1, "latterBytes":Lcom/android/framework/protobuf/ByteString$ByteIterator;
    :goto_8
    invoke-interface {v0}, Lcom/android/framework/protobuf/ByteString$ByteIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Lcom/android/framework/protobuf/ByteString$ByteIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 308
    nop

    .line 309
    invoke-interface {v0}, Lcom/android/framework/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v2

    # invokes: Lcom/android/framework/protobuf/ByteString;->toInt(B)I
    invoke-static {v2}, Lcom/android/framework/protobuf/ByteString;->access$200(B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 310
    invoke-interface {v1}, Lcom/android/framework/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v3

    # invokes: Lcom/android/framework/protobuf/ByteString;->toInt(B)I
    invoke-static {v3}, Lcom/android/framework/protobuf/ByteString;->access$200(B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    .line 311
    .local v2, "result":I
    if-eqz v2, :cond_34

    .line 312
    return v2

    .line 314
    .end local v2    # "result":I
    :cond_34
    goto :goto_8

    .line 315
    :cond_35
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
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

    .line 301
    check-cast p1, Lcom/android/framework/protobuf/ByteString;

    check-cast p2, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/ByteString$2;->compare(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)I

    move-result p1

    return p1
.end method
