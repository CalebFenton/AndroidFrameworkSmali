.class public final Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature;
.super Ljava/lang/Object;
.source "BaseFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature$ParsedFlagName;
    }
.end annotation


# static fields
.field public static final blacklist FLAG_PREFIX:Ljava/lang/String; = "ChromiumBaseFeature_"

.field public static final blacklist PARAM_DELIMITER:Ljava/lang/String; = "_PARAM_"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist applyOverride(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;Ljava/util/Map;)V
    .registers 6
    .param p0, "flagName"    # Ljava/lang/String;
    .param p1, "flagValue"    # Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p2, "featureStateBuilders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;>;"
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature;->parseFlagName(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature$ParsedFlagName;

    move-result-object v0

    .line 90
    .local v0, "parsedFlagName":Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature$ParsedFlagName;
    if-nez v0, :cond_7

    return-void

    .line 92
    :cond_7
    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature$ParsedFlagName;->featureName:Ljava/lang/String;

    .line 93
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;

    .line 94
    .local v1, "featureStateBuilder":Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;
    if-nez v1, :cond_1a

    .line 95
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->newBuilder()Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;

    move-result-object v1

    .line 96
    iget-object v2, v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature$ParsedFlagName;->featureName:Ljava/lang/String;

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_1a
    iget-object v2, v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature$ParsedFlagName;->paramName:Ljava/lang/String;

    if-nez v2, :cond_22

    .line 100
    invoke-static {p1, v1}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature;->applyStateOverride(Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;)V

    goto :goto_27

    .line 102
    :cond_22
    iget-object v2, v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature$ParsedFlagName;->paramName:Ljava/lang/String;

    invoke-static {v2, p1, v1}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature;->applyParamOverride(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;)V

    .line 104
    :goto_27
    return-void
.end method

.method private static blacklist applyParamOverride(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;)V
    .registers 7
    .param p0, "paramName"    # Ljava/lang/String;
    .param p1, "value"    # Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;
    .param p2, "featureStateBuilder"    # Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;

    .line 146
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->getType()Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    move-result-object v0

    .line 148
    .local v0, "valueType":Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;
    sget-object v1, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature$1;->$SwitchMap$org$chromium$net$httpflags$ResolvedFlags$Value$Type:[I

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7a

    .line 175
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported HTTP flag value type for base::Feature param `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "`: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :pswitch_32
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->getBytesValue()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v1

    .line 173
    .local v1, "rawValue":Landroid/net/connectivity/com/google/protobuf/ByteString;
    goto :goto_76

    .line 169
    .end local v1    # "rawValue":Landroid/net/connectivity/com/google/protobuf/ByteString;
    :pswitch_37
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->getStringValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyFrom(Ljava/lang/String;Ljava/nio/charset/Charset;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v1

    .line 170
    .restart local v1    # "rawValue":Landroid/net/connectivity/com/google/protobuf/ByteString;
    goto :goto_76

    .line 164
    .end local v1    # "rawValue":Landroid/net/connectivity/com/google/protobuf/ByteString;
    :pswitch_42
    nop

    .line 166
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->getFloatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 165
    invoke-static {v1, v2}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyFrom(Ljava/lang/String;Ljava/nio/charset/Charset;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v1

    .line 167
    .restart local v1    # "rawValue":Landroid/net/connectivity/com/google/protobuf/ByteString;
    goto :goto_76

    .line 155
    .end local v1    # "rawValue":Landroid/net/connectivity/com/google/protobuf/ByteString;
    :pswitch_52
    nop

    .line 157
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->getIntValue()J

    move-result-wide v1

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 156
    invoke-static {v1, v2}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyFrom(Ljava/lang/String;Ljava/nio/charset/Charset;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v1

    .line 159
    .restart local v1    # "rawValue":Landroid/net/connectivity/com/google/protobuf/ByteString;
    goto :goto_76

    .line 152
    .end local v1    # "rawValue":Landroid/net/connectivity/com/google/protobuf/ByteString;
    :pswitch_64
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->getBoolValue()Z

    move-result v1

    if-eqz v1, :cond_6d

    const-string v1, "true"

    goto :goto_6f

    :cond_6d
    const-string v1, "false"

    :goto_6f
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 151
    invoke-static {v1, v2}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyFrom(Ljava/lang/String;Ljava/nio/charset/Charset;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v1

    .line 153
    .restart local v1    # "rawValue":Landroid/net/connectivity/com/google/protobuf/ByteString;
    nop

    .line 181
    :goto_76
    invoke-virtual {p2, p0, v1}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->putParams(Ljava/lang/String;Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;

    .line 182
    return-void

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_64
        :pswitch_52
        :pswitch_42
        :pswitch_37
        :pswitch_32
    .end packed-switch
.end method

.method private static blacklist applyStateOverride(Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;)V
    .registers 6
    .param p0, "value"    # Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;
    .param p1, "featureStateBuilder"    # Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;

    .line 132
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->getType()Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    move-result-object v0

    .line 133
    .local v0, "valueType":Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;
    sget-object v1, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->BOOL:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    if-ne v0, v1, :cond_10

    .line 139
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->getBoolValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->setEnabled(Z)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;

    .line 140
    return-void

    .line 134
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP flag has type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but only boolean flags are supported as base::Feature overrides"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getOverrides(Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;
    .registers 7
    .param p0, "flags"    # Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v0, "featureStateBuilders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;->flags()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 66
    .local v2, "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;>;"
    :try_start_1d
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;

    invoke-static {v3, v4, v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature;->applyOverride(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;Ljava/util/Map;)V
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_2c} :catch_2e

    .line 73
    nop

    .line 74
    .end local v2    # "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;>;"
    goto :goto_11

    .line 67
    .restart local v2    # "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;>;"
    :catch_2e
    move-exception v1

    .line 68
    .local v1, "exception":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse HTTP flag `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 70
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "` as a base::Feature override"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 76
    .end local v1    # "exception":Ljava/lang/RuntimeException;
    .end local v2    # "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;>;"
    :cond_54
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->newBuilder()Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;

    move-result-object v1

    .line 78
    .local v1, "builder":Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 79
    .local v3, "featureStateBuilder":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;>;"
    nop

    .line 80
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;

    invoke-virtual {v5}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->build()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    .line 79
    invoke-virtual {v1, v4, v5}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;->putFeatureStates(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;

    .line 81
    .end local v3    # "featureStateBuilder":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;>;"
    goto :goto_60

    .line 82
    :cond_83
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;->build()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    return-object v2
.end method

.method private static blacklist parseFlagName(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature$ParsedFlagName;
    .registers 6
    .param p0, "flagName"    # Ljava/lang/String;

    .line 113
    const-string v0, "ChromiumBaseFeature_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    .line 114
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "flagNameWithoutPrefix":Ljava/lang/String;
    new-instance v1, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature$ParsedFlagName;

    invoke-direct {v1, v2}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature$ParsedFlagName;-><init>(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature-IA;)V

    .line 118
    .local v1, "parsed":Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature$ParsedFlagName;
    const-string v2, "_PARAM_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 119
    .local v3, "delimiterIndex":I
    if-gez v3, :cond_22

    .line 120
    iput-object v0, v1, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature$ParsedFlagName;->featureName:Ljava/lang/String;

    goto :goto_35

    .line 122
    :cond_22
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature$ParsedFlagName;->featureName:Ljava/lang/String;

    .line 123
    nop

    .line 124
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature$ParsedFlagName;->paramName:Ljava/lang/String;

    .line 126
    :goto_35
    return-object v1
.end method
