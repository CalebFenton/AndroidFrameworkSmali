.class public final Lcom/android/internal/infra/WhitelistHelper;
.super Ljava/lang/Object;
.source "WhitelistHelper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WhitelistHelper"


# instance fields
.field private blacklist mWhitelistedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 161
    iget-object v0, p0, Lcom/android/internal/infra/WhitelistHelper;->mWhitelistedPackages:Landroid/util/ArrayMap;

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/android/internal/infra/WhitelistHelper;->mWhitelistedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_98

    .line 166
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "prefix2":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/infra/WhitelistHelper;->mWhitelistedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 168
    .local v1, "size":I
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 169
    const-string v3, " packages"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3b
    iget-object v4, p0, Lcom/android/internal/infra/WhitelistHelper;->mWhitelistedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_97

    .line 171
    iget-object v4, p0, Lcom/android/internal/infra/WhitelistHelper;->mWhitelistedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 172
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/infra/WhitelistHelper;->mWhitelistedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 173
    .local v5, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, "."

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    if-nez v5, :cond_6c

    .line 175
    const-string v6, "(whole package)"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    goto :goto_94

    .line 179
    :cond_6c
    const-string v6, "["

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 180
    const/4 v6, 0x1

    .local v6, "j":I
    :goto_7a
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_8f

    .line 181
    const-string v7, ", "

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 180
    add-int/lit8 v6, v6, 0x1

    goto :goto_7a

    .line 183
    .end local v6    # "j":I
    :cond_8f
    const-string v6, "]"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :goto_94
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 185
    .end local v3    # "i":I
    :cond_97
    return-void

    .line 162
    .end local v0    # "prefix2":Ljava/lang/String;
    .end local v1    # "size":I
    :cond_98
    :goto_98
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ": (no whitelisted packages)"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public blacklist getWhitelistedComponents(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/android/internal/infra/WhitelistHelper;->mWhitelistedPackages:Landroid/util/ArrayMap;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    iget-object v0, p0, Lcom/android/internal/infra/WhitelistHelper;->mWhitelistedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    :goto_11
    return-object v0
.end method

.method public blacklist getWhitelistedPackages()Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/android/internal/infra/WhitelistHelper;->mWhitelistedPackages:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_11

    :cond_6
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/internal/infra/WhitelistHelper;->mWhitelistedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    :goto_11
    return-object v0
.end method

.method public blacklist isWhitelisted(Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 121
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/WhitelistHelper;->getWhitelistedComponents(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 125
    .local v1, "whitelistedComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_12

    .line 126
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 129
    :cond_12
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/WhitelistHelper;->isWhitelisted(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public blacklist isWhitelisted(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 109
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/android/internal/infra/WhitelistHelper;->mWhitelistedPackages:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return v1

    .line 113
    :cond_9
    iget-object v0, p0, Lcom/android/internal/infra/WhitelistHelper;->mWhitelistedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/internal/infra/WhitelistHelper;->mWhitelistedPackages:Landroid/util/ArrayMap;

    .line 114
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    nop

    .line 113
    :goto_1c
    return v1
.end method

.method public blacklist setWhitelist(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p2, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/WhitelistHelper;->mWhitelistedPackages:Landroid/util/ArrayMap;

    .line 59
    if-nez p1, :cond_8

    if-nez p2, :cond_8

    return-void

    .line 61
    :cond_8
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_10
    if-eqz p2, :cond_21

    .line 62
    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_21

    .line 63
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Packages or Components cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_21
    :goto_21
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/infra/WhitelistHelper;->mWhitelistedPackages:Landroid/util/ArrayMap;

    .line 68
    if-eqz p1, :cond_3f

    .line 69
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 70
    iget-object v2, p0, Lcom/android/internal/infra/WhitelistHelper;->mWhitelistedPackages:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 74
    .end local v1    # "i":I
    :cond_3f
    if-eqz p2, :cond_78

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_42
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_78

    .line 76
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 77
    .local v1, "component":Landroid/content/ComponentName;
    if-nez v1, :cond_59

    .line 78
    const-string v2, "WhitelistHelper"

    const-string/jumbo v3, "setWhitelist(): component is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    goto :goto_75

    .line 82
    :cond_59
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/infra/WhitelistHelper;->mWhitelistedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 84
    .local v3, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-nez v3, :cond_72

    .line 85
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v3, v4

    .line 86
    iget-object v4, p0, Lcom/android/internal/infra/WhitelistHelper;->mWhitelistedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_72
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :goto_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 91
    .end local v0    # "i":I
    :cond_78
    return-void
.end method

.method public blacklist setWhitelist(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_5

    move-object v1, v0

    goto :goto_a

    .line 99
    :cond_5
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    :goto_a
    nop

    .line 100
    .local v1, "packageNamesSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez p2, :cond_e

    goto :goto_13

    .line 101
    :cond_e
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    :goto_13
    nop

    .line 102
    .local v0, "componentsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/infra/WhitelistHelper;->setWhitelist(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 103
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WhitelistHelper["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/infra/WhitelistHelper;->mWhitelistedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
