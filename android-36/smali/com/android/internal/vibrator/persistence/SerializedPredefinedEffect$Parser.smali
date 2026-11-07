.class final Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect$Parser;
.super Ljava/lang/Object;
.source "SerializedPredefinedEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Parser"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;
    .registers 8
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const-string/jumbo v0, "predefined-effect"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 83
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 84
    .local v0, "allowHidden":Z
    :goto_d
    const-string v1, "fallback"

    const-string v2, "name"

    if-eqz v0, :cond_1b

    .line 85
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    goto :goto_22

    .line 88
    :cond_1b
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 91
    :goto_22
    sget-object v3, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "nameAttr":Ljava/lang/String;
    if-eqz v2, :cond_5e

    .line 95
    invoke-static {v2, p1}, Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;->findByName(Ljava/lang/String;I)Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;

    move-result-object v3

    .line 96
    .local v3, "effectName":Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;
    if-eqz v3, :cond_45

    .line 100
    const/4 v4, 0x1

    .line 101
    .local v4, "defaultFallback":Z
    if-eqz v0, :cond_3a

    .line 102
    sget-object v5, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v5, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_3b

    .line 103
    :cond_3a
    move v1, v4

    :goto_3b
    nop

    .line 106
    .local v1, "fallback":Z
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 108
    new-instance v5, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;

    invoke-direct {v5, v3, v1}, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;-><init>(Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;Z)V

    return-object v5

    .line 97
    .end local v1    # "fallback":Z
    .end local v4    # "defaultFallback":Z
    :cond_45
    new-instance v1, Lcom/android/internal/vibrator/persistence/XmlParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected predefined effect name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    .end local v3    # "effectName":Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;
    :cond_5e
    new-instance v1, Lcom/android/internal/vibrator/persistence/XmlParserException;

    const-string v3, "Missing predefined effect name"

    invoke-direct {v1, v3}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
