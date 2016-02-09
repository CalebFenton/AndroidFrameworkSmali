.class Lcom/android/server/policy/PolicyControl$Filter;
.super Ljava/lang/Object;
.source "PolicyControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PolicyControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Filter"
.end annotation


# static fields
.field private static final ALL:Ljava/lang/String; = "*"

.field private static final APPS:Ljava/lang/String; = "apps"


# instance fields
.field private final mBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 190
    .local p1, "whitelist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p2, "blacklist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 191
    iput-object p1, p0, Lcom/android/server/policy/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    #@5
    .line 192
    iput-object p2, p0, Lcom/android/server/policy/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    #@7
    .line 190
    return-void
.end method

.method private dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 224
    .local p2, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v2, "=("

    #@6
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 225
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    #@c
    move-result v1

    #@d
    .line 226
    .local v1, "n":I
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@10
    .line 227
    if-lez v0, :cond_0

    #@12
    const/16 v2, 0x2c

    #@14
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    #@17
    .line 228
    :cond_0
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Ljava/lang/String;

    #@1d
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    .line 226
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 230
    :cond_1
    const/16 v2, 0x29

    #@25
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    #@28
    .line 223
    return-void
.end method

.method private onBlacklist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/policy/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/server/policy/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    #@a
    const-string/jumbo v1, "*"

    #@d
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method

.method private onWhitelist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/server/policy/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    #@2
    const-string/jumbo v1, "*"

    #@5
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    iget-object v0, p0, Lcom/android/server/policy/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    #@d
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method

.method static parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 243
    if-nez p0, :cond_0

    #@4
    return-object v3

    #@5
    .line 244
    :cond_0
    new-instance v2, Landroid/util/ArraySet;

    #@7
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    #@a
    .line 245
    .local v2, "whitelist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    #@c
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@f
    .line 246
    .local v0, "blacklist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string/jumbo v3, ","

    #@12
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    const/4 v3, 0x0

    #@17
    array-length v5, v4

    #@18
    :goto_0
    if-ge v3, v5, :cond_2

    #@1a
    aget-object v1, v4, v3

    #@1c
    .line 247
    .local v1, "token":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 248
    const-string/jumbo v6, "-"

    #@23
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@26
    move-result v6

    #@27
    if-eqz v6, :cond_1

    #@29
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@2c
    move-result v6

    #@2d
    if-le v6, v7, :cond_1

    #@2f
    .line 249
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    .line 250
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@36
    .line 246
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@38
    goto :goto_0

    #@39
    .line 252
    :cond_1
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@3c
    goto :goto_1

    #@3d
    .line 255
    .end local v1    # "token":Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/android/server/policy/PolicyControl$Filter;

    #@3f
    invoke-direct {v3, v2, v0}, Lcom/android/server/policy/PolicyControl$Filter;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    #@42
    return-object v3
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 218
    const-string/jumbo v0, "Filter["

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 219
    const-string/jumbo v0, "whitelist"

    #@9
    iget-object v1, p0, Lcom/android/server/policy/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    #@b
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V

    #@e
    const/16 v0, 0x2c

    #@10
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@13
    .line 220
    const-string/jumbo v0, "blacklist"

    #@16
    iget-object v1, p0, Lcom/android/server/policy/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    #@18
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V

    #@1b
    const/16 v0, 0x5d

    #@1d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@20
    .line 217
    return-void
.end method

.method matches(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 5
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 196
    if-nez p1, :cond_0

    #@4
    return v3

    #@5
    .line 197
    :cond_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@7
    if-lt v1, v4, :cond_2

    #@9
    .line 198
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@b
    const/16 v2, 0x63

    #@d
    if-gt v1, v2, :cond_1

    #@f
    const/4 v0, 0x1

    #@10
    .line 199
    .local v0, "isApp":Z
    :goto_0
    if-eqz v0, :cond_3

    #@12
    iget-object v1, p0, Lcom/android/server/policy/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    #@14
    const-string/jumbo v2, "apps"

    #@17
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_3

    #@1d
    return v3

    #@1e
    .line 198
    .end local v0    # "isApp":Z
    :cond_1
    const/4 v0, 0x0

    #@1f
    .restart local v0    # "isApp":Z
    goto :goto_0

    #@20
    .line 197
    .end local v0    # "isApp":Z
    :cond_2
    const/4 v0, 0x0

    #@21
    .restart local v0    # "isApp":Z
    goto :goto_0

    #@22
    .line 200
    :cond_3
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@24
    invoke-direct {p0, v1}, Lcom/android/server/policy/PolicyControl$Filter;->onBlacklist(Ljava/lang/String;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_4

    #@2a
    return v3

    #@2b
    .line 201
    :cond_4
    if-eqz v0, :cond_5

    #@2d
    iget-object v1, p0, Lcom/android/server/policy/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    #@2f
    const-string/jumbo v2, "apps"

    #@32
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_5

    #@38
    return v4

    #@39
    .line 202
    :cond_5
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@3b
    invoke-direct {p0, v1}, Lcom/android/server/policy/PolicyControl$Filter;->onWhitelist(Ljava/lang/String;)Z

    #@3e
    move-result v1

    #@3f
    return v1
.end method

.method matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/server/policy/PolicyControl$Filter;->onBlacklist(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-direct {p0, p1}, Lcom/android/server/policy/PolicyControl$Filter;->onWhitelist(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 235
    new-instance v0, Ljava/io/StringWriter;

    #@2
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    #@5
    .line 236
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    #@7
    const/4 v2, 0x1

    #@8
    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@b
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    #@e
    .line 237
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method
