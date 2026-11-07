.class public Landroid/icu/impl/Trie2$CharSequenceValues;
.super Ljava/lang/Object;
.source "Trie2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Trie2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharSequenceValues"
.end annotation


# instance fields
.field public blacklist codePoint:I

.field public blacklist index:I

.field public blacklist value:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
