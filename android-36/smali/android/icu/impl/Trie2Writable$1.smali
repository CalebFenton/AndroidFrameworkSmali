.class synthetic Landroid/icu/impl/Trie2Writable$1;
.super Ljava/lang/Object;
.source "Trie2Writable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Trie2Writable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$android$icu$impl$Trie2$ValueWidth:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1137
    invoke-static {}, Landroid/icu/impl/Trie2$ValueWidth;->values()[Landroid/icu/impl/Trie2$ValueWidth;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/icu/impl/Trie2Writable$1;->$SwitchMap$android$icu$impl$Trie2$ValueWidth:[I

    :try_start_9
    sget-object v0, Landroid/icu/impl/Trie2Writable$1;->$SwitchMap$android$icu$impl$Trie2$ValueWidth:[I

    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    invoke-virtual {v1}, Landroid/icu/impl/Trie2$ValueWidth;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Landroid/icu/impl/Trie2Writable$1;->$SwitchMap$android$icu$impl$Trie2$ValueWidth:[I

    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_32:Landroid/icu/impl/Trie2$ValueWidth;

    invoke-virtual {v1}, Landroid/icu/impl/Trie2$ValueWidth;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    return-void
.end method
