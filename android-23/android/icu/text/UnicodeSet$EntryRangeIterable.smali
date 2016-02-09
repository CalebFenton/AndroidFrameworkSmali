.class Landroid/icu/text/UnicodeSet$EntryRangeIterable;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryRangeIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/icu/text/UnicodeSet$EntryRange;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/text/UnicodeSet;


# direct methods
.method private constructor <init>(Landroid/icu/text/UnicodeSet;)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 4230
    iput-object p1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterable;->this$0:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet$EntryRangeIterable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet$EntryRangeIterable;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@3
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/text/UnicodeSet$EntryRange;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 4232
    new-instance v0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;

    #@2
    iget-object v1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterable;->this$0:Landroid/icu/text/UnicodeSet;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet$EntryRangeIterator;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet$EntryRangeIterator;)V

    #@8
    return-object v0
.end method
