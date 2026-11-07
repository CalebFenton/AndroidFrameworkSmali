.class public final Lcom/android/okhttp/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/Headers$Builder;
    }
.end annotation


# instance fields
.field private final greylist-max-o namesAndValues:[Ljava/lang/String;


# direct methods
.method private constructor greylist-max-o <init>(Lcom/android/okhttp/Headers$Builder;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    # getter for: Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;
    invoke-static {p1}, Lcom/android/okhttp/Headers$Builder;->access$000(Lcom/android/okhttp/Headers$Builder;)Ljava/util/List;

    move-result-object v0

    # getter for: Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;
    invoke-static {p1}, Lcom/android/okhttp/Headers$Builder;->access$000(Lcom/android/okhttp/Headers$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/Headers$Builder;Lcom/android/okhttp/Headers$1;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1}, Lcom/android/okhttp/Headers;-><init>(Lcom/android/okhttp/Headers$Builder;)V

    return-void
.end method

.method private constructor greylist-max-o <init>([Ljava/lang/String;)V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    return-void
.end method

.method private static greylist-max-o get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 151
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    :goto_3
    if-ltz v0, :cond_15

    .line 152
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    add-int/lit8 v0, v0, 0x1

    .line 153
    aget-object p0, p0, v0

    return-object p0

    :cond_12
    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static greylist-max-o of(Ljava/util/Map;)Lcom/android/okhttp/Headers;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/okhttp/Headers;"
        }
    .end annotation

    if-eqz p0, :cond_89

    .line 197
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 199
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 200
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7b

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7b

    .line 203
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 204
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5c

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5c

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v6, :cond_5c

    .line 208
    aput-object v4, v0, v2

    add-int/lit8 v4, v2, 0x1

    .line 209
    aput-object v3, v0, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_14

    .line 206
    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 201
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Headers cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 213
    :cond_83
    new-instance p0, Lcom/android/okhttp/Headers;

    invoke-direct {p0, v0}, Lcom/android/okhttp/Headers;-><init>([Ljava/lang/String;)V

    return-object p0

    .line 193
    :cond_89
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected map with header names and values"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs blacklist of([Ljava/lang/String;)Lcom/android/okhttp/Headers;
    .registers 7

    if-eqz p0, :cond_6c

    .line 165
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6c

    .line 170
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    .line 171
    :goto_f
    array-length v2, p0

    if-ge v1, v2, :cond_27

    .line 172
    aget-object v2, p0, v1

    if-eqz v2, :cond_1f

    .line 173
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 172
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Headers cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    move v1, v0

    .line 177
    :goto_28
    array-length v2, p0

    if-ge v1, v2, :cond_66

    .line 178
    aget-object v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    .line 179
    aget-object v3, p0, v3

    .line 180
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_47

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_47

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v5, :cond_47

    add-int/lit8 v1, v1, 0x2

    goto :goto_28

    .line 181
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 185
    :cond_66
    new-instance v0, Lcom/android/okhttp/Headers;

    invoke-direct {v0, p0}, Lcom/android/okhttp/Headers;-><init>([Ljava/lang/String;)V

    return-object v0

    .line 166
    :cond_6c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected alternating header names and values"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public greylist-max-o get(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 63
    iget-object p0, p0, Lcom/android/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/okhttp/Headers;->get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o getDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 2

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 73
    invoke-static {p0}, Lcom/android/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-o name(I)Ljava/lang/String;
    .registers 3

    mul-int/lit8 p1, p1, 0x2

    if-ltz p1, :cond_d

    .line 84
    iget-object p0, p0, Lcom/android/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v0, p0

    if-lt p1, v0, :cond_a

    goto :goto_d

    .line 87
    :cond_a
    aget-object p0, p0, p1

    return-object p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-o names()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_18

    .line 103
    invoke-virtual {p0, v2}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 105
    :cond_18
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o newBuilder()Lcom/android/okhttp/Headers$Builder;
    .registers 3

    .line 123
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 124
    # getter for: Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;
    invoke-static {v0}, Lcom/android/okhttp/Headers$Builder;->access$000(Lcom/android/okhttp/Headers$Builder;)Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lcom/android/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public greylist-max-o size()I
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    array-length p0, p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public greylist-max-o toMultimap()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 138
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2b

    .line 139
    invoke-virtual {p0, v2}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_21

    .line 142
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_21
    invoke-virtual {p0, v2}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2b
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_27

    .line 131
    invoke-virtual {p0, v2}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 133
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o value(I)Ljava/lang/String;
    .registers 3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    if-ltz p1, :cond_f

    .line 93
    iget-object p0, p0, Lcom/android/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v0, p0

    if-lt p1, v0, :cond_c

    goto :goto_f

    .line 96
    :cond_c
    aget-object p0, p0, p1

    return-object p0

    :cond_f
    :goto_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-o values(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_24

    .line 112
    invoke-virtual {p0, v2}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    if-nez v1, :cond_1a

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    :cond_1a
    invoke-virtual {p0, v2}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_24
    if-eqz v1, :cond_2b

    .line 118
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 119
    :cond_2b
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method
