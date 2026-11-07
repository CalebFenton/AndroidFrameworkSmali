.class public Lcom/google/android/util/AbstractMessageParser$Html;
.super Lcom/google/android/util/AbstractMessageParser$Token;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Html"
.end annotation


# instance fields
.field private blacklist html:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;

    .line 739
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-direct {p0, v0, p1}, Lcom/google/android/util/AbstractMessageParser$Token;-><init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V

    .line 740
    iput-object p2, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    .line 741
    return-void
.end method

.method private static blacklist trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "text"    # Ljava/lang/String;

    .line 765
    const/4 v0, 0x0

    .line 766
    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 767
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 768
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 770
    :cond_14
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "text"    # Ljava/lang/String;

    .line 774
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 775
    .local v0, "index":I
    :goto_4
    if-lez v0, :cond_15

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 776
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 778
    :cond_15
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist getInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 751
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist isHtml()Z
    .registers 2

    .line 743
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist toHtml(Z)Ljava/lang/String;
    .registers 3
    .param p1, "caps"    # Z

    .line 745
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public blacklist trimLeadingWhitespace()V
    .registers 2

    .line 755
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$Html;->trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->text:Ljava/lang/String;

    .line 756
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$Html;->trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    .line 757
    return-void
.end method

.method public blacklist trimTrailingWhitespace()V
    .registers 2

    .line 760
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$Html;->trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->text:Ljava/lang/String;

    .line 761
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$Html;->trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    .line 762
    return-void
.end method
