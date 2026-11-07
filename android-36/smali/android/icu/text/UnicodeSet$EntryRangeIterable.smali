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
        "Ljava/lang/Iterable<",
        "Landroid/icu/text/UnicodeSet$EntryRange;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/icu/text/UnicodeSet;


# direct methods
.method private constructor blacklist <init>(Landroid/icu/text/UnicodeSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 4432
    iput-object p1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterable;->this$0:Landroid/icu/text/UnicodeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet$EntryRangeIterable;-><init>(Landroid/icu/text/UnicodeSet;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/icu/text/UnicodeSet$EntryRange;",
            ">;"
        }
    .end annotation

    .line 4435
    new-instance v0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;

    iget-object v1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterable;->this$0:Landroid/icu/text/UnicodeSet;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet$EntryRangeIterator;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet-IA;)V

    return-object v0
.end method
