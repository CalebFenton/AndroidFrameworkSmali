.class Landroid/icu/impl/Trie2$1;
.super Ljava/lang/Object;
.source "Trie2.java"

# interfaces
.implements Landroid/icu/impl/Trie2$ValueMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Trie2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist map(I)I
    .registers 2
    .param p1, "in"    # I

    .line 389
    return p1
.end method
