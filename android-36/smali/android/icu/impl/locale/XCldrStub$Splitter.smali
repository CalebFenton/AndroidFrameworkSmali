.class public Landroid/icu/impl/locale/XCldrStub$Splitter;
.super Ljava/lang/Object;
.source "XCldrStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XCldrStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Splitter"
.end annotation


# instance fields
.field greylist-max-o pattern:Ljava/util/regex/Pattern;

.field greylist-max-o trimResults:Z


# direct methods
.method public constructor blacklist <init>(C)V
    .registers 4
    .param p1, "c"    # C

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\Q"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/impl/locale/XCldrStub$Splitter;-><init>(Ljava/util/regex/Pattern;)V

    .line 316
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/regex/Pattern;)V
    .registers 3
    .param p1, "p"    # Ljava/util/regex/Pattern;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/locale/XCldrStub$Splitter;->trimResults:Z

    .line 318
    iput-object p1, p0, Landroid/icu/impl/locale/XCldrStub$Splitter;->pattern:Ljava/util/regex/Pattern;

    .line 319
    return-void
.end method

.method public static blacklist on(C)Landroid/icu/impl/locale/XCldrStub$Splitter;
    .registers 2
    .param p0, "c"    # C

    .line 321
    new-instance v0, Landroid/icu/impl/locale/XCldrStub$Splitter;

    invoke-direct {v0, p0}, Landroid/icu/impl/locale/XCldrStub$Splitter;-><init>(C)V

    return-object v0
.end method

.method public static blacklist on(Ljava/util/regex/Pattern;)Landroid/icu/impl/locale/XCldrStub$Splitter;
    .registers 2
    .param p0, "p"    # Ljava/util/regex/Pattern;

    .line 324
    new-instance v0, Landroid/icu/impl/locale/XCldrStub$Splitter;

    invoke-direct {v0, p0}, Landroid/icu/impl/locale/XCldrStub$Splitter;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method


# virtual methods
.method public blacklist split(Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 3
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 340
    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/XCldrStub$Splitter;->splitToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist splitToList(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$Splitter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "items":[Ljava/lang/String;
    iget-boolean v1, p0, Landroid/icu/impl/locale/XCldrStub$Splitter;->trimResults:Z

    if-eqz v1, :cond_19

    .line 329
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_19

    .line 330
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 333
    .end local v1    # "i":I
    :cond_19
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist trimResults()Landroid/icu/impl/locale/XCldrStub$Splitter;
    .registers 2

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/locale/XCldrStub$Splitter;->trimResults:Z

    .line 337
    return-object p0
.end method
