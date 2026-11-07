.class public Lcom/android/framework/protobuf/LazyStringArrayList;
.super Lcom/android/framework/protobuf/AbstractProtobufList;
.source "LazyStringArrayList.java"

# interfaces
.implements Lcom/android/framework/protobuf/LazyStringList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;,
        Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/AbstractProtobufList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/android/framework/protobuf/LazyStringList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final blacklist EMPTY:Lcom/android/framework/protobuf/LazyStringList;

.field private static final blacklist EMPTY_LIST:Lcom/android/framework/protobuf/LazyStringArrayList;


# instance fields
.field private final blacklist list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    new-instance v0, Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/LazyStringArrayList;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/LazyStringArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/LazyStringArrayList;

    .line 67
    sget-object v0, Lcom/android/framework/protobuf/LazyStringArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/LazyStringArrayList;->makeImmutable()V

    .line 75
    sget-object v0, Lcom/android/framework/protobuf/LazyStringArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/LazyStringArrayList;

    sput-object v0, Lcom/android/framework/protobuf/LazyStringArrayList;->EMPTY:Lcom/android/framework/protobuf/LazyStringList;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 80
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/LazyStringArrayList;-><init>(I)V

    .line 81
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/LazyStringArrayList;-><init>(Ljava/util/ArrayList;)V

    .line 85
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/framework/protobuf/LazyStringList;)V
    .registers 4
    .param p1, "from"    # Lcom/android/framework/protobuf/LazyStringList;

    .line 87
    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/android/framework/protobuf/LazyStringList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->addAll(Ljava/util/Collection;)Z

    .line 90
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 98
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p1, "from":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/LazyStringArrayList;-><init>(Ljava/util/ArrayList;)V

    .line 94
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/framework/protobuf/LazyStringArrayList;I[B)Ljava/lang/Object;
    .registers 4
    .param p0, "x0"    # Lcom/android/framework/protobuf/LazyStringArrayList;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->setAndReturn(I[B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$100(Ljava/lang/Object;)[B
    .registers 2
    .param p0, "x0"    # Ljava/lang/Object;

    .line 61
    invoke-static {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/android/framework/protobuf/LazyStringArrayList;I[B)V
    .registers 3
    .param p0, "x0"    # Lcom/android/framework/protobuf/LazyStringArrayList;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->add(I[B)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/framework/protobuf/LazyStringArrayList;ILcom/android/framework/protobuf/ByteString;)Ljava/lang/Object;
    .registers 4
    .param p0, "x0"    # Lcom/android/framework/protobuf/LazyStringArrayList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/framework/protobuf/ByteString;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->setAndReturn(ILcom/android/framework/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$400(Ljava/lang/Object;)Lcom/android/framework/protobuf/ByteString;
    .registers 2
    .param p0, "x0"    # Ljava/lang/Object;

    .line 61
    invoke-static {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->asByteString(Ljava/lang/Object;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/android/framework/protobuf/LazyStringArrayList;ILcom/android/framework/protobuf/ByteString;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/framework/protobuf/LazyStringArrayList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/framework/protobuf/ByteString;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->add(ILcom/android/framework/protobuf/ByteString;)V

    return-void
.end method

.method private blacklist add(ILcom/android/framework/protobuf/ByteString;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "element"    # Lcom/android/framework/protobuf/ByteString;

    .line 152
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 153
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 154
    iget v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    .line 155
    return-void
.end method

.method private blacklist add(I[B)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "element"    # [B

    .line 158
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 159
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 160
    iget v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    .line 161
    return-void
.end method

.method private static blacklist asByteArray(Ljava/lang/Object;)[B
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 295
    instance-of v0, p0, [B

    if-eqz v0, :cond_8

    .line 296
    move-object v0, p0

    check-cast v0, [B

    return-object v0

    .line 297
    :cond_8
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 298
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/framework/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 300
    :cond_14
    move-object v0, p0

    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static blacklist asByteString(Ljava/lang/Object;)Lcom/android/framework/protobuf/ByteString;
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 285
    instance-of v0, p0, Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_8

    .line 286
    move-object v0, p0

    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    return-object v0

    .line 287
    :cond_8
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 288
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/framework/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 290
    :cond_14
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist asString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 275
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 276
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 277
    :cond_8
    instance-of v0, p0, Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_14

    .line 278
    move-object v0, p0

    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 280
    :cond_14
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/framework/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist emptyList()Lcom/android/framework/protobuf/LazyStringArrayList;
    .registers 1

    .line 71
    sget-object v0, Lcom/android/framework/protobuf/LazyStringArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/LazyStringArrayList;

    return-object v0
.end method

.method private blacklist setAndReturn(ILcom/android/framework/protobuf/ByteString;)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .param p2, "s"    # Lcom/android/framework/protobuf/ByteString;

    .line 260
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 261
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setAndReturn(I[B)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .param p2, "s"    # [B

    .line 270
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 271
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 61
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->add(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist add(ILjava/lang/String;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 147
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 148
    iget v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    .line 149
    return-void
.end method

.method public blacklist add(Lcom/android/framework/protobuf/ByteString;)V
    .registers 3
    .param p1, "element"    # Lcom/android/framework/protobuf/ByteString;

    .line 217
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 218
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    .line 220
    return-void
.end method

.method public blacklist add([B)V
    .registers 3
    .param p1, "element"    # [B

    .line 224
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 225
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    .line 227
    return-void
.end method

.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 61
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 174
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 178
    instance-of v0, p2, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v0, :cond_f

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    goto :goto_10

    :cond_f
    move-object v0, p2

    .line 179
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_10
    iget-object v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v1

    .line 180
    .local v1, "ret":Z
    iget v2, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    .line 181
    return v1
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 169
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public blacklist addAllByteArray(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[B>;)Z"
        }
    .end annotation

    .line 194
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 195
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 196
    .local v0, "ret":Z
    iget v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    .line 197
    return v0
.end method

.method public blacklist addAllByteString(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;)Z"
        }
    .end annotation

    .line 186
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/framework/protobuf/ByteString;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 187
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 188
    .local v0, "ret":Z
    iget v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    .line 189
    return v0
.end method

.method public blacklist asByteArrayList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 364
    new-instance v0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;-><init>(Lcom/android/framework/protobuf/LazyStringArrayList;)V

    return-object v0
.end method

.method public blacklist asByteStringList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 407
    new-instance v0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;-><init>(Lcom/android/framework/protobuf/LazyStringArrayList;)V

    return-object v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 210
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 211
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    iget v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    .line 213
    return-void
.end method

.method public bridge synthetic whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 61
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(I)Ljava/lang/String;
    .registers 6
    .param p1, "index"    # I

    .line 112
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 113
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 114
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 115
    :cond_e
    instance-of v1, v0, Lcom/android/framework/protobuf/ByteString;

    if-eqz v1, :cond_25

    .line 116
    move-object v1, v0

    check-cast v1, Lcom/android/framework/protobuf/ByteString;

    .line 117
    .local v1, "bs":Lcom/android/framework/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/android/framework/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/framework/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 119
    iget-object v3, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v3, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_24
    return-object v2

    .line 123
    .end local v1    # "bs":Lcom/android/framework/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_25
    move-object v1, v0

    check-cast v1, [B

    .line 124
    .local v1, "ba":[B
    invoke-static {v1}, Lcom/android/framework/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 125
    .restart local v2    # "s":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/framework/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 126
    iget-object v3, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v3, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_37
    return-object v2
.end method

.method public blacklist getByteArray(I)[B
    .registers 5
    .param p1, "index"    # I

    .line 246
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 247
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/framework/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    .line 248
    .local v1, "b":[B
    if-eq v1, v0, :cond_11

    .line 249
    iget-object v2, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_11
    return-object v1
.end method

.method public blacklist getByteString(I)Lcom/android/framework/protobuf/ByteString;
    .registers 5
    .param p1, "index"    # I

    .line 236
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 237
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/framework/protobuf/LazyStringArrayList;->asByteString(Ljava/lang/Object;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    .line 238
    .local v1, "b":Lcom/android/framework/protobuf/ByteString;
    if-eq v1, v0, :cond_11

    .line 239
    iget-object v2, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_11
    return-object v1
.end method

.method public blacklist getRaw(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I

    .line 231
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnderlyingElements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnmodifiableView()Lcom/android/framework/protobuf/LazyStringList;
    .registers 2

    .line 412
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->isModifiable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 413
    new-instance v0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/android/framework/protobuf/LazyStringList;)V

    return-object v0

    .line 415
    :cond_c
    return-object p0
.end method

.method public bridge synthetic whitelist test-api hashCode()I
    .registers 2

    .line 61
    invoke-super {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist isModifiable()Z
    .registers 2

    .line 61
    invoke-super {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;->isModifiable()Z

    move-result v0

    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/LazyStringList;)V
    .registers 7
    .param p1, "other"    # Lcom/android/framework/protobuf/LazyStringList;

    .line 311
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 312
    invoke-interface {p1}, Lcom/android/framework/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 313
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, [B

    if-eqz v2, :cond_27

    .line 314
    move-object v2, v1

    check-cast v2, [B

    .line 317
    .local v2, "b":[B
    iget-object v3, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    .end local v2    # "b":[B
    goto :goto_2c

    .line 319
    :cond_27
    iget-object v2, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    .end local v1    # "o":Ljava/lang/Object;
    :goto_2c
    goto :goto_b

    .line 322
    :cond_2d
    return-void
.end method

.method public bridge synthetic blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/LazyStringArrayList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/LazyStringArrayList;
    .registers 4
    .param p1, "capacity"    # I

    .line 102
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_16

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .local v0, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    new-instance v1, Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-direct {v1, v0}, Lcom/android/framework/protobuf/LazyStringArrayList;-><init>(Ljava/util/ArrayList;)V

    return-object v1

    .line 103
    .end local v0    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
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

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist remove(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 202
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 203
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 204
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    .line 205
    invoke-static {v0}, Lcom/android/framework/protobuf/LazyStringArrayList;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 61
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 61
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 61
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
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

    .line 61
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->set(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist set(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "index"    # I
    .param p2, "s"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 140
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/framework/protobuf/LazyStringArrayList;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist set(ILcom/android/framework/protobuf/ByteString;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "s"    # Lcom/android/framework/protobuf/ByteString;

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->setAndReturn(ILcom/android/framework/protobuf/ByteString;)Ljava/lang/Object;

    .line 257
    return-void
.end method

.method public blacklist set(I[B)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "s"    # [B

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->setAndReturn(I[B)Ljava/lang/Object;

    .line 267
    return-void
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
