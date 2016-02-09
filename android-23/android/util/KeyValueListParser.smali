.class public Landroid/util/KeyValueListParser;
.super Ljava/lang/Object;
.source "KeyValueListParser.java"


# instance fields
.field private final mSplitter:Landroid/text/TextUtils$StringSplitter;

.field private final mValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(C)V
    .locals 1
    .param p1, "delim"    # C

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    #@a
    .line 36
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    #@c
    invoke-direct {v0, p1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@f
    iput-object v0, p0, Landroid/util/KeyValueListParser;->mSplitter:Landroid/text/TextUtils$StringSplitter;

    #@11
    .line 35
    return-void
.end method


# virtual methods
.method public getFloat(Ljava/lang/String;F)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # F

    #@0
    .prologue
    .line 90
    iget-object v2, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/lang/String;

    #@8
    .line 91
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@a
    .line 93
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 94
    :catch_0
    move-exception v0

    #@10
    .line 98
    :cond_0
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # J

    #@0
    .prologue
    .line 72
    iget-object v2, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/lang/String;

    #@8
    .line 73
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@a
    .line 75
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-wide v2

    #@e
    return-wide v2

    #@f
    .line 76
    :catch_0
    move-exception v0

    #@10
    .line 80
    :cond_0
    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    #@0
    .prologue
    .line 108
    iget-object v1, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    .line 109
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    .line 110
    return-object v0

    #@b
    .line 112
    :cond_0
    return-object p2
.end method

.method public setString(Ljava/lang/String;)V
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 50
    iget-object v3, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    #@6
    .line 51
    if-eqz p1, :cond_1

    #@8
    .line 52
    iget-object v3, p0, Landroid/util/KeyValueListParser;->mSplitter:Landroid/text/TextUtils$StringSplitter;

    #@a
    invoke-interface {v3, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    #@d
    .line 53
    iget-object v3, p0, Landroid/util/KeyValueListParser;->mSplitter:Landroid/text/TextUtils$StringSplitter;

    #@f
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "pair$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/lang/String;

    #@1f
    .line 54
    .local v0, "pair":Ljava/lang/String;
    const/16 v3, 0x3d

    #@21
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    #@24
    move-result v2

    #@25
    .line 55
    .local v2, "sep":I
    if-gez v2, :cond_0

    #@27
    .line 56
    iget-object v3, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    #@29
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    #@2c
    .line 57
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@2e
    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v5, "\'"

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    const-string/jumbo v5, "\' in \'"

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    const-string/jumbo v5, "\' is not a valid key-value pair"

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    .line 57
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v3

    #@58
    .line 60
    :cond_0
    iget-object v3, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    #@5a
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    add-int/lit8 v5, v2, 0x1

    #@64
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@67
    move-result-object v5

    #@68
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@6b
    move-result-object v5

    #@6c
    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    goto :goto_0

    #@70
    .line 49
    .end local v0    # "pair":Ljava/lang/String;
    .end local v1    # "pair$iterator":Ljava/util/Iterator;
    .end local v2    # "sep":I
    :cond_1
    return-void
.end method
