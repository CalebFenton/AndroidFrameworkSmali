.class Landroid/icu/impl/UnicodeRegex$1;
.super Ljava/lang/Object;
.source "UnicodeRegex.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UnicodeRegex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/UnicodeRegex;)V
    .registers 2
    .param p1, "this$0"    # Landroid/icu/impl/UnicodeRegex;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8
    .param p1, "obj0"    # Ljava/lang/Object;
    .param p2, "obj1"    # Ljava/lang/Object;

    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "arg0":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "arg1":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 375
    .local v2, "len0":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 376
    .local v3, "len1":I
    if-eq v2, v3, :cond_15

    sub-int v4, v3, v2

    return v4

    .line 377
    :cond_15
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    return v4
.end method
