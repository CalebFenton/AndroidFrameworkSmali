.class Landroid/icu/text/UnicodeSet$CodePointIterable;
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
    name = "CodePointIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/icu/text/UnicodeSet;

.field private final blacklist unicodeSet:Landroid/icu/text/UnicodeSet;


# direct methods
.method constructor blacklist <init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 3
    .param p2, "unicodeSet"    # Landroid/icu/text/UnicodeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 5123
    iput-object p1, p0, Landroid/icu/text/UnicodeSet$CodePointIterable;->this$0:Landroid/icu/text/UnicodeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5124
    iput-object p2, p0, Landroid/icu/text/UnicodeSet$CodePointIterable;->unicodeSet:Landroid/icu/text/UnicodeSet;

    .line 5125
    return-void
.end method


# virtual methods
.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5129
    new-instance v0, Landroid/icu/text/UnicodeSet$CodePointIterator;

    iget-object v1, p0, Landroid/icu/text/UnicodeSet$CodePointIterable;->this$0:Landroid/icu/text/UnicodeSet;

    iget-object v2, p0, Landroid/icu/text/UnicodeSet$CodePointIterable;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet$CodePointIterator;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    return-object v0
.end method
