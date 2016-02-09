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
.field private html:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;

    #@0
    .prologue
    .line 725
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@2
    invoke-direct {p0, v0, p1}, Lcom/google/android/util/AbstractMessageParser$Token;-><init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V

    #@5
    .line 726
    iput-object p2, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    #@7
    .line 724
    return-void
.end method

.method private static trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 751
    const/4 v0, 0x0

    #@1
    .line 752
    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 753
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v1

    #@b
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    #@e
    move-result v1

    #@f
    .line 752
    if-eqz v1, :cond_0

    #@11
    .line 754
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 756
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    return-object v1
.end method

.method public static trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 760
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    .line 761
    .local v0, "index":I
    :goto_0
    if-lez v0, :cond_0

    #@7
    add-int/lit8 v1, v0, -0x1

    #@9
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v1

    #@d
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 762
    add-int/lit8 v0, v0, -0x1

    #@15
    goto :goto_0

    #@16
    .line 764
    :cond_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method


# virtual methods
.method public getInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 737
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public isHtml()Z
    .locals 1

    #@0
    .prologue
    .line 729
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public toHtml(Z)Ljava/lang/String;
    .locals 1
    .param p1, "caps"    # Z

    #@0
    .prologue
    .line 731
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    #@b
    goto :goto_0
.end method

.method public trimLeadingWhitespace()V
    .locals 1

    #@0
    .prologue
    .line 741
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->text:Ljava/lang/String;

    #@2
    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$Html;->trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->text:Ljava/lang/String;

    #@8
    .line 742
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    #@a
    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$Html;->trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    #@10
    .line 740
    return-void
.end method

.method public trimTrailingWhitespace()V
    .locals 1

    #@0
    .prologue
    .line 746
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->text:Ljava/lang/String;

    #@2
    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$Html;->trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->text:Ljava/lang/String;

    #@8
    .line 747
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    #@a
    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$Html;->trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    #@10
    .line 745
    return-void
.end method
