.class final Landroid/icu/text/ListFormatter$ContextualHandler;
.super Ljava/lang/Object;
.source "ListFormatter.java"

# interfaces
.implements Landroid/icu/text/ListFormatter$PatternHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ListFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContextualHandler"
.end annotation


# instance fields
.field private final blacklist elseEndPattern:Ljava/lang/String;

.field private final blacklist elseTwoPattern:Ljava/lang/String;

.field private final blacklist regexp:Ljava/util/regex/Pattern;

.field private final blacklist thenEndPattern:Ljava/lang/String;

.field private final blacklist thenTwoPattern:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "regexp"    # Ljava/util/regex/Pattern;
    .param p2, "thenTwo"    # Ljava/lang/String;
    .param p3, "elseTwo"    # Ljava/lang/String;
    .param p4, "thenEnd"    # Ljava/lang/String;
    .param p5, "elseEnd"    # Ljava/lang/String;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput-object p1, p0, Landroid/icu/text/ListFormatter$ContextualHandler;->regexp:Ljava/util/regex/Pattern;

    .line 432
    iput-object p2, p0, Landroid/icu/text/ListFormatter$ContextualHandler;->thenTwoPattern:Ljava/lang/String;

    .line 433
    iput-object p3, p0, Landroid/icu/text/ListFormatter$ContextualHandler;->elseTwoPattern:Ljava/lang/String;

    .line 434
    iput-object p4, p0, Landroid/icu/text/ListFormatter$ContextualHandler;->thenEndPattern:Ljava/lang/String;

    .line 435
    iput-object p5, p0, Landroid/icu/text/ListFormatter$ContextualHandler;->elseEndPattern:Ljava/lang/String;

    .line 436
    return-void
.end method


# virtual methods
.method public blacklist getEndPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 449
    iget-object v0, p0, Landroid/icu/text/ListFormatter$ContextualHandler;->regexp:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 450
    iget-object v0, p0, Landroid/icu/text/ListFormatter$ContextualHandler;->thenEndPattern:Ljava/lang/String;

    return-object v0

    .line 452
    :cond_f
    iget-object v0, p0, Landroid/icu/text/ListFormatter$ContextualHandler;->elseEndPattern:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTwoPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 440
    iget-object v0, p0, Landroid/icu/text/ListFormatter$ContextualHandler;->regexp:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 441
    iget-object v0, p0, Landroid/icu/text/ListFormatter$ContextualHandler;->thenTwoPattern:Ljava/lang/String;

    return-object v0

    .line 443
    :cond_f
    iget-object v0, p0, Landroid/icu/text/ListFormatter$ContextualHandler;->elseTwoPattern:Ljava/lang/String;

    return-object v0
.end method
