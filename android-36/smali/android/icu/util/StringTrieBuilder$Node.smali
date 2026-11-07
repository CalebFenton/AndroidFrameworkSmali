.class abstract Landroid/icu/util/StringTrieBuilder$Node;
.super Ljava/lang/Object;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Node"
.end annotation


# instance fields
.field protected greylist-max-o offset:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    .line 182
    return-void
.end method


# virtual methods
.method public greylist-max-o add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;
    .registers 5
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "sValue"    # I

    .line 198
    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 189
    if-eq p0, p1, :cond_f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public final greylist-max-o getOffset()I
    .registers 2

    .line 256
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    return v0
.end method

.method public abstract whitelist test-api hashCode()I
.end method

.method public greylist-max-o markRightEdgesFirst(I)I
    .registers 3
    .param p1, "edgeNumber"    # I

    .line 237
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    if-nez v0, :cond_6

    .line 238
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    .line 240
    :cond_6
    return p1
.end method

.method public greylist-max-o register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;
    .registers 2
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;

    .line 208
    return-object p0
.end method

.method public abstract greylist-max-o write(Landroid/icu/util/StringTrieBuilder;)V
.end method

.method public final greylist-max-o writeUnlessInsideRightEdge(IILandroid/icu/util/StringTrieBuilder;)V
    .registers 5
    .param p1, "firstRight"    # I
    .param p2, "lastRight"    # I
    .param p3, "builder"    # Landroid/icu/util/StringTrieBuilder;

    .line 252
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    if-gez v0, :cond_f

    iget v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    if-lt v0, p2, :cond_c

    iget v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    if-ge p1, v0, :cond_f

    .line 253
    :cond_c
    invoke-virtual {p0, p3}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    .line 255
    :cond_f
    return-void
.end method
