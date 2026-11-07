.class public abstract Lcom/google/android/util/AbstractMessageParser$Token;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/util/AbstractMessageParser$Token$Type;
    }
.end annotation


# instance fields
.field protected blacklist text:Ljava/lang/String;

.field protected blacklist type:Lcom/google/android/util/AbstractMessageParser$Token$Type;


# direct methods
.method protected constructor blacklist <init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Lcom/google/android/util/AbstractMessageParser$Token$Type;
    .param p2, "text"    # Ljava/lang/String;

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$Token;->type:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 702
    iput-object p2, p0, Lcom/google/android/util/AbstractMessageParser$Token;->text:Ljava/lang/String;

    .line 703
    return-void
.end method


# virtual methods
.method public blacklist controlCaps()Z
    .registers 2

    .line 730
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getInfo()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 716
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    return-object v0
.end method

.method public blacklist getRawText()Ljava/lang/String;
    .registers 2

    .line 721
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Token;->text:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;
    .registers 2

    .line 706
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Token;->type:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    return-object v0
.end method

.method public blacklist isArray()Z
    .registers 2

    .line 725
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->isHtml()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract blacklist isHtml()Z
.end method

.method public blacklist isMedia()Z
    .registers 2

    .line 723
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCaps()Z
    .registers 2

    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist toHtml(Z)Ljava/lang/String;
    .registers 4
    .param p1, "caps"    # Z

    .line 727
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "not html"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
