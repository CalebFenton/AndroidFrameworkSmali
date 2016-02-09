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
.field private final namesAndValues:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/Headers$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/android/okhttp/Headers$Builder;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    invoke-static {p1}, Lcom/android/okhttp/Headers$Builder;->-get0(Lcom/android/okhttp/Headers$Builder;)Ljava/util/List;

    #@6
    move-result-object v0

    #@7
    invoke-static {p1}, Lcom/android/okhttp/Headers$Builder;->-get0(Lcom/android/okhttp/Headers$Builder;)Ljava/util/List;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@e
    move-result v1

    #@f
    new-array v1, v1, [Ljava/lang/String;

    #@11
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, [Ljava/lang/String;

    #@17
    iput-object v0, p0, Lcom/android/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    #@19
    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/Headers$Builder;Lcom/android/okhttp/Headers;)V
    .locals 0
    .param p1, "builder"    # Lcom/android/okhttp/Headers$Builder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/Headers;-><init>(Lcom/android/okhttp/Headers$Builder;)V

    #@3
    return-void
.end method

.method private constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "namesAndValues"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    iput-object p1, p0, Lcom/android/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    #@5
    .line 54
    return-void
.end method

.method private static get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "namesAndValues"    # [Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 134
    array-length v1, p0

    #@1
    add-int/lit8 v0, v1, -0x2

    #@3
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@5
    .line 135
    aget-object v1, p0, v0

    #@7
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 136
    add-int/lit8 v1, v0, 0x1

    #@f
    aget-object v1, p0, v1

    #@11
    return-object v1

    #@12
    .line 134
    :cond_0
    add-int/lit8 v0, v0, -0x2

    #@14
    goto :goto_0

    #@15
    .line 139
    :cond_1
    const/4 v1, 0x0

    #@16
    return-object v1
.end method

.method public static of(Ljava/util/Map;)Lcom/android/okhttp/Headers;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/okhttp/Headers;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, -0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 175
    if-nez p0, :cond_0

    #@4
    .line 176
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v7, "Expected map with header names and values"

    #@9
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v6

    #@d
    .line 180
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    #@10
    move-result v6

    #@11
    mul-int/lit8 v6, v6, 0x2

    #@13
    new-array v4, v6, [Ljava/lang/String;

    #@15
    .line 181
    .local v4, "namesAndValues":[Ljava/lang/String;
    const/4 v2, 0x0

    #@16
    .line 182
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@19
    move-result-object v6

    #@1a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "header$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_5

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Ljava/util/Map$Entry;

    #@2a
    .line 183
    .local v0, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2d
    move-result-object v6

    #@2e
    if-eqz v6, :cond_1

    #@30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@33
    move-result-object v6

    #@34
    if-nez v6, :cond_2

    #@36
    .line 184
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@38
    const-string/jumbo v7, "Headers cannot be null"

    #@3b
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v6

    #@3f
    .line 186
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@42
    move-result-object v6

    #@43
    check-cast v6, Ljava/lang/String;

    #@45
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    .line 187
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4c
    move-result-object v6

    #@4d
    check-cast v6, Ljava/lang/String;

    #@4f
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    .line 188
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@56
    move-result v6

    #@57
    if-eqz v6, :cond_3

    #@59
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    #@5c
    move-result v6

    #@5d
    if-eq v6, v8, :cond_4

    #@5f
    .line 189
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@61
    new-instance v7, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v8, "Unexpected header: "

    #@69
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v7

    #@6d
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v7

    #@71
    const-string/jumbo v8, ": "

    #@74
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v7

    #@78
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v7

    #@7c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v7

    #@80
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@83
    throw v6

    #@84
    .line 188
    :cond_4
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    #@87
    move-result v6

    #@88
    if-ne v6, v8, :cond_3

    #@8a
    .line 191
    aput-object v3, v4, v2

    #@8c
    .line 192
    add-int/lit8 v6, v2, 0x1

    #@8e
    aput-object v5, v4, v6

    #@90
    .line 193
    add-int/lit8 v2, v2, 0x2

    #@92
    goto :goto_0

    #@93
    .line 196
    .end local v0    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_5
    new-instance v6, Lcom/android/okhttp/Headers;

    #@95
    invoke-direct {v6, v4}, Lcom/android/okhttp/Headers;-><init>([Ljava/lang/String;)V

    #@98
    return-object v6
.end method

.method public static varargs of([Ljava/lang/String;)Lcom/android/okhttp/Headers;
    .locals 6
    .param p0, "namesAndValues"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 148
    if-eqz p0, :cond_0

    #@4
    array-length v3, p0

    #@5
    rem-int/lit8 v3, v3, 0x2

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 149
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v4, "Expected alternating header names and values"

    #@e
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v3

    #@12
    .line 153
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@15
    move-result-object p0

    #@16
    .end local p0    # "namesAndValues":[Ljava/lang/String;
    check-cast p0, [Ljava/lang/String;

    #@18
    .line 154
    .restart local p0    # "namesAndValues":[Ljava/lang/String;
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    array-length v3, p0

    #@1a
    if-ge v0, v3, :cond_3

    #@1c
    .line 155
    aget-object v3, p0, v0

    #@1e
    if-nez v3, :cond_2

    #@20
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@22
    const-string/jumbo v4, "Headers cannot be null"

    #@25
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v3

    #@29
    .line 156
    :cond_2
    aget-object v3, p0, v0

    #@2b
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    aput-object v3, p0, v0

    #@31
    .line 154
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 160
    :cond_3
    const/4 v0, 0x0

    #@35
    :goto_1
    array-length v3, p0

    #@36
    if-ge v0, v3, :cond_6

    #@38
    .line 161
    aget-object v1, p0, v0

    #@3a
    .line 162
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    #@3c
    aget-object v2, p0, v3

    #@3e
    .line 163
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_4

    #@44
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    #@47
    move-result v3

    #@48
    if-eq v3, v5, :cond_5

    #@4a
    .line 164
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4c
    new-instance v4, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v5, "Unexpected header: "

    #@54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    const-string/jumbo v5, ": "

    #@5f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v4

    #@6b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v3

    #@6f
    .line 163
    :cond_5
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    #@72
    move-result v3

    #@73
    if-ne v3, v5, :cond_4

    #@75
    .line 160
    add-int/lit8 v0, v0, 0x2

    #@77
    goto :goto_1

    #@78
    .line 168
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_6
    new-instance v3, Lcom/android/okhttp/Headers;

    #@7a
    invoke-direct {v3, p0}, Lcom/android/okhttp/Headers;-><init>([Ljava/lang/String;)V

    #@7d
    return-object v3
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Lcom/android/okhttp/Headers;->get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 70
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@a
    move-result-object v1

    #@b
    :cond_0
    return-object v1
.end method

.method public name(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 80
    mul-int/lit8 v0, p1, 0x2

    #@2
    .line 81
    .local v0, "nameIndex":I
    if-ltz v0, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    #@6
    array-length v1, v1

    #@7
    if-lt v0, v1, :cond_1

    #@9
    .line 82
    :cond_0
    const/4 v1, 0x0

    #@a
    return-object v1

    #@b
    .line 84
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    #@d
    aget-object v1, v1, v0

    #@f
    return-object v1
.end method

.method public names()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 98
    new-instance v1, Ljava/util/TreeSet;

    #@2
    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    #@4
    invoke-direct {v1, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    #@7
    .line 99
    .local v1, "result":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    #@b
    move-result v2

    #@c
    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@e
    .line 100
    invoke-virtual {p0, v0}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@15
    .line 99
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 102
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@1b
    move-result-object v3

    #@1c
    return-object v3
.end method

.method public newBuilder()Lcom/android/okhttp/Headers$Builder;
    .locals 3

    #@0
    .prologue
    .line 120
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    #@5
    .line 121
    .local v0, "result":Lcom/android/okhttp/Headers$Builder;
    invoke-static {v0}, Lcom/android/okhttp/Headers$Builder;->-get0(Lcom/android/okhttp/Headers$Builder;)Ljava/util/List;

    #@8
    move-result-object v1

    #@9
    iget-object v2, p0, Lcom/android/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    #@b
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@e
    .line 122
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    #@2
    array-length v0, v0

    #@3
    div-int/lit8 v0, v0, 0x2

    #@5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 127
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    #@9
    move-result v2

    #@a
    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@c
    .line 128
    invoke-virtual {p0, v0}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    const-string/jumbo v4, ": "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {p0, v0}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    const-string/jumbo v4, "\n"

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 127
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 130
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    return-object v3
.end method

.method public value(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 89
    mul-int/lit8 v1, p1, 0x2

    #@2
    add-int/lit8 v0, v1, 0x1

    #@4
    .line 90
    .local v0, "valueIndex":I
    if-ltz v0, :cond_0

    #@6
    iget-object v1, p0, Lcom/android/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    #@8
    array-length v1, v1

    #@9
    if-lt v0, v1, :cond_1

    #@b
    .line 91
    :cond_0
    const/4 v1, 0x0

    #@c
    return-object v1

    #@d
    .line 93
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    #@f
    aget-object v1, v1, v0

    #@11
    return-object v1
.end method

.method public values(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 107
    const/4 v1, 0x0

    #@1
    .line 108
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    #@5
    move-result v2

    #@6
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@8
    .line 109
    invoke-virtual {p0, v0}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    .line 110
    if-nez v1, :cond_0

    #@14
    new-instance v1, Ljava/util/ArrayList;

    #@16
    const/4 v3, 0x2

    #@17
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@1a
    .line 111
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@21
    .line 108
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 114
    :cond_2
    if-eqz v1, :cond_3

    #@26
    .line 115
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@29
    move-result-object v3

    #@2a
    .line 114
    :goto_1
    return-object v3

    #@2b
    .line 116
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@2e
    move-result-object v3

    #@2f
    goto :goto_1
.end method
