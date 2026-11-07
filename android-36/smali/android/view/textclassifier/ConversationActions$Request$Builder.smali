.class public final Landroid/view/textclassifier/ConversationActions$Request$Builder;
.super Ljava/lang/Object;
.source "ConversationActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/ConversationActions$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mConversation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ConversationActions$Message;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mHints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMaxSuggestions:I

.field private blacklist mTypeConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;


# direct methods
.method public constructor whitelist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ConversationActions$Message;",
            ">;)V"
        }
    .end annotation

    .line 465
    .local p1, "conversation":Ljava/util/List;, "Ljava/util/List<Landroid/view/textclassifier/ConversationActions$Message;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mMaxSuggestions:I

    .line 466
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mConversation:Ljava/util/List;

    .line 467
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/textclassifier/ConversationActions$Request;
    .registers 8

    .line 510
    new-instance v0, Landroid/view/textclassifier/ConversationActions$Request;

    iget-object v1, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mConversation:Ljava/util/List;

    .line 511
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 512
    iget-object v2, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mTypeConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    if-nez v2, :cond_16

    .line 513
    new-instance v2, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    invoke-direct {v2}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->build()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v2

    goto :goto_18

    .line 514
    :cond_16
    iget-object v2, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mTypeConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    :goto_18
    iget v3, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mMaxSuggestions:I

    .line 516
    iget-object v4, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mHints:Ljava/util/List;

    if-nez v4, :cond_23

    .line 517
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_29

    .line 518
    :cond_23
    iget-object v4, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mHints:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 519
    :goto_29
    iget-object v5, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v5, :cond_30

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_32

    :cond_30
    iget-object v5, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mExtras:Landroid/os/Bundle;

    :goto_32
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/ConversationActions$Request;-><init>(Ljava/util/List;Landroid/view/textclassifier/TextClassifier$EntityConfig;ILjava/util/List;Landroid/os/Bundle;Landroid/view/textclassifier/ConversationActions-IA;)V

    .line 510
    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/ConversationActions$Request$Builder;
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 503
    iput-object p1, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mExtras:Landroid/os/Bundle;

    .line 504
    return-object p0
.end method

.method public whitelist setHints(Ljava/util/List;)Landroid/view/textclassifier/ConversationActions$Request$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/textclassifier/ConversationActions$Request$Builder;"
        }
    .end annotation

    .line 475
    .local p1, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mHints:Ljava/util/List;

    .line 476
    return-object p0
.end method

.method public whitelist setMaxSuggestions(I)Landroid/view/textclassifier/ConversationActions$Request$Builder;
    .registers 4
    .param p1, "maxSuggestions"    # I

    .line 492
    const/4 v0, -0x1

    if-lt p1, v0, :cond_6

    .line 496
    iput p1, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mMaxSuggestions:I

    .line 497
    return-object p0

    .line 493
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSuggestions has to be greater than or equal to -1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTypeConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/ConversationActions$Request$Builder;
    .registers 2
    .param p1, "typeConfig"    # Landroid/view/textclassifier/TextClassifier$EntityConfig;

    .line 482
    iput-object p1, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mTypeConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    .line 483
    return-object p0
.end method
