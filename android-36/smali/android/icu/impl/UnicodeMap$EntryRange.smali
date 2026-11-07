.class public Landroid/icu/impl/UnicodeMap$EntryRange;
.super Ljava/lang/Object;
.source "UnicodeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UnicodeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public blacklist codepoint:I

.field public blacklist codepointEnd:I

.field public blacklist string:Ljava/lang/String;

.field public blacklist value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 982
    .local p0, "this":Landroid/icu/impl/UnicodeMap$EntryRange;, "Landroid/icu/impl/UnicodeMap$EntryRange<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 989
    .local p0, "this":Landroid/icu/impl/UnicodeMap$EntryRange;, "Landroid/icu/impl/UnicodeMap$EntryRange<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/impl/UnicodeMap$EntryRange;->string:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/icu/impl/UnicodeMap$EntryRange;->string:Ljava/lang/String;

    invoke-static {v1}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4b

    .line 990
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/icu/impl/UnicodeMap$EntryRange;->codepoint:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->hex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/impl/UnicodeMap$EntryRange;->codepoint:I

    iget v3, p0, Landroid/icu/impl/UnicodeMap$EntryRange;->codepointEnd:I

    if-ne v2, v3, :cond_29

    const-string v2, ""

    goto :goto_43

    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/icu/impl/UnicodeMap$EntryRange;->codepointEnd:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->hex(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/UnicodeMap$EntryRange;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 989
    return-object v0
.end method
