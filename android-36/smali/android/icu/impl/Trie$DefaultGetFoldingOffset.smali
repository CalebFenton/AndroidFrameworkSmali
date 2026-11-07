.class Landroid/icu/impl/Trie$DefaultGetFoldingOffset;
.super Ljava/lang/Object;
.source "Trie.java"

# interfaces
.implements Landroid/icu/impl/Trie$DataManipulate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Trie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultGetFoldingOffset"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/Trie-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/Trie$DefaultGetFoldingOffset;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getFoldingOffset(I)I
    .registers 2
    .param p1, "value"    # I

    .line 77
    return p1
.end method
