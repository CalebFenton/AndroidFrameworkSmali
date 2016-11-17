.class public Lcom/google/android/util/AbstractMessageParser$Part;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Part"
.end annotation


# instance fields
.field private meText:Ljava/lang/String;

.field private tokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/util/AbstractMessageParser$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1434
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    #@a
    .line 1433
    return-void
.end method

.method private getPartType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Part;->isMedia()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1443
    const-string/jumbo v0, "d"

    #@9
    return-object v0

    #@a
    .line 1444
    :cond_0
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Part;->meText:Ljava/lang/String;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1445
    const-string/jumbo v0, "m"

    #@11
    return-object v0

    #@12
    .line 1447
    :cond_1
    const-string/jumbo v0, ""

    #@15
    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/android/util/AbstractMessageParser$Token;)V
    .locals 2
    .param p1, "token"    # Lcom/google/android/util/AbstractMessageParser$Token;

    #@0
    .prologue
    .line 1471
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Part;->isMedia()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1472
    new-instance v0, Ljava/lang/AssertionError;

    #@8
    const-string/jumbo v1, "media "

    #@b
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@e
    throw v0

    #@f
    .line 1474
    :cond_0
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14
    .line 1470
    return-void
.end method

.method public getMediaToken()Lcom/google/android/util/AbstractMessageParser$Token;
    .locals 2

    #@0
    .prologue
    .line 1463
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Part;->isMedia()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1464
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Token;

    #@f
    return-object v0

    #@10
    .line 1466
    :cond_0
    const/4 v0, 0x0

    #@11
    return-object v0
.end method

.method public getRawText()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1483
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1484
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser$Part;->meText:Ljava/lang/String;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1485
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser$Part;->meText:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 1487
    :cond_0
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v2

    #@15
    if-ge v1, v2, :cond_1

    #@17
    .line 1488
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Lcom/google/android/util/AbstractMessageParser$Token;

    #@1f
    invoke-virtual {v2}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 1487
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1490
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    return-object v2
.end method

.method public getTokens()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/util/AbstractMessageParser$Token;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1494
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getType(Z)Ljava/lang/String;
    .locals 2
    .param p1, "isSend"    # Z

    #@0
    .prologue
    .line 1438
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    if-eqz p1, :cond_0

    #@7
    const-string/jumbo v0, "s"

    #@a
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser$Part;->getPartType()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0

    #@1b
    :cond_0
    const-string/jumbo v0, "r"

    #@1e
    goto :goto_0
.end method

.method public isMedia()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1452
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    const/4 v2, 0x1

    #@8
    if-ne v1, v2, :cond_0

    #@a
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Token;

    #@12
    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$Token;->isMedia()Z

    #@15
    move-result v0

    #@16
    :cond_0
    return v0
.end method

.method public setMeText(Ljava/lang/String;)V
    .locals 0
    .param p1, "meText"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1478
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$Part;->meText:Ljava/lang/String;

    #@2
    .line 1477
    return-void
.end method
