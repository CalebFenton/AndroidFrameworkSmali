.class public final Landroid/view/textclassifier/ExtrasUtils;
.super Ljava/lang/Object;
.source "ExtrasUtils.java"


# static fields
.field private static final blacklist ACTIONS_INTENTS:Ljava/lang/String; = "actions-intents"

.field private static final blacklist ACTION_INTENT:Ljava/lang/String; = "action-intent"

.field private static final blacklist ENTITY_TYPE:Ljava/lang/String; = "entity-type"

.field private static final blacklist FOREIGN_LANGUAGE:Ljava/lang/String; = "foreign-language"

.field private static final blacklist MODEL_NAME:Ljava/lang/String; = "model-name"

.field private static final blacklist SCORE:Ljava/lang/String; = "score"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static blacklist findAction(Landroid/view/textclassifier/TextClassification;Ljava/lang/String;)Landroid/app/RemoteAction;
    .registers 8
    .param p0, "classification"    # Landroid/view/textclassifier/TextClassification;
    .param p1, "intentAction"    # Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    if-eqz p0, :cond_34

    if-nez p1, :cond_6

    goto :goto_34

    .line 85
    :cond_6
    invoke-static {p0}, Landroid/view/textclassifier/ExtrasUtils;->getActionsIntents(Landroid/view/textclassifier/TextClassification;)Ljava/util/ArrayList;

    move-result-object v1

    .line 86
    .local v1, "actionIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    if-eqz v1, :cond_33

    .line 87
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 88
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v2, :cond_33

    .line 89
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 90
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_30

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 91
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    return-object v0

    .line 88
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 95
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_33
    return-object v0

    .line 83
    .end local v1    # "actionIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    :cond_34
    :goto_34
    return-object v0
.end method

.method public static blacklist findTranslateAction(Landroid/view/textclassifier/TextClassification;)Landroid/app/RemoteAction;
    .registers 2
    .param p0, "classification"    # Landroid/view/textclassifier/TextClassification;

    .line 103
    const-string v0, "android.intent.action.TRANSLATE"

    invoke-static {p0, v0}, Landroid/view/textclassifier/ExtrasUtils;->findAction(Landroid/view/textclassifier/TextClassification;Ljava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getActionIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 3
    .param p0, "container"    # Landroid/os/Bundle;

    .line 61
    const-string v0, "action-intent"

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public static blacklist getActionsIntents(Landroid/view/textclassifier/TextClassification;)Ljava/util/ArrayList;
    .registers 4
    .param p0, "classification"    # Landroid/view/textclassifier/TextClassification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextClassification;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 69
    if-nez p0, :cond_4

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_4
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "actions-intents"

    const-class v2, Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getEntityType(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2
    .param p0, "extra"    # Landroid/os/Bundle;

    .line 111
    if-nez p0, :cond_4

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_4
    const-string v0, "entity-type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getForeignLanguageExtra(Landroid/view/textclassifier/TextClassification;)Landroid/os/Bundle;
    .registers 3
    .param p0, "classification"    # Landroid/view/textclassifier/TextClassification;

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_4
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "foreign-language"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getModelName(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2
    .param p0, "extra"    # Landroid/os/Bundle;

    .line 134
    if-nez p0, :cond_4

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_4
    const-string v0, "model-name"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getScore(Landroid/os/Bundle;)F
    .registers 4
    .param p0, "extra"    # Landroid/os/Bundle;

    .line 122
    const/4 v0, -0x1

    .line 123
    .local v0, "defaultValue":I
    const/high16 v1, -0x40800000    # -1.0f

    if-nez p0, :cond_6

    .line 124
    return v1

    .line 126
    :cond_6
    const-string/jumbo v2, "score"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method
