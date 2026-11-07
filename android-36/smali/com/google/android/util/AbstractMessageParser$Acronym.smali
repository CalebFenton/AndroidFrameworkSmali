.class public Lcom/google/android/util/AbstractMessageParser$Acronym;
.super Lcom/google/android/util/AbstractMessageParser$Token;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Acronym"
.end annotation


# instance fields
.field private blacklist value:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1174
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-direct {p0, v0, p1}, Lcom/google/android/util/AbstractMessageParser$Token;-><init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V

    .line 1175
    iput-object p2, p0, Lcom/google/android/util/AbstractMessageParser$Acronym;->value:Ljava/lang/String;

    .line 1176
    return-void
.end method


# virtual methods
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

    .line 1183
    invoke-super {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->getInfo()Ljava/util/List;

    move-result-object v0

    .line 1184
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Acronym;->getRawText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1185
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Acronym;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1186
    return-object v0
.end method

.method public blacklist getValue()Ljava/lang/String;
    .registers 2

    .line 1178
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Acronym;->value:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isHtml()Z
    .registers 2

    .line 1180
    const/4 v0, 0x0

    return v0
.end method
