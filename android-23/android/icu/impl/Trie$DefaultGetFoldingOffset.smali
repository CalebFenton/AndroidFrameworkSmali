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
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/Trie$DefaultGetFoldingOffset;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/impl/Trie$DefaultGetFoldingOffset;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getFoldingOffset(I)I
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 72
    return p1
.end method
