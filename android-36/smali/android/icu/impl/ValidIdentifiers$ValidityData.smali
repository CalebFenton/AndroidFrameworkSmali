.class Landroid/icu/impl/ValidIdentifiers$ValidityData;
.super Ljava/lang/Object;
.source "ValidIdentifiers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ValidIdentifiers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValidityData"
.end annotation


# static fields
.field static final blacklist data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/impl/ValidIdentifiers$Datatype;",
            "Ljava/util/Map<",
            "Landroid/icu/impl/ValidIdentifiers$Datasubtype;",
            "Landroid/icu/impl/ValidIdentifiers$ValiditySet;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 17

    .line 132
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/icu/impl/ValidIdentifiers$Datatype;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 133
    .local v0, "_data":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/util/Map<Landroid/icu/impl/ValidIdentifiers$Datasubtype;Landroid/icu/impl/ValidIdentifiers$ValiditySet;>;>;"
    const-string v1, "supplementalData"

    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v3, "android/icu/impl/data/icudata"

    invoke-static {v3, v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 137
    .local v1, "suppData":Landroid/icu/util/UResourceBundle;
    const-string v2, "idValidity"

    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 138
    .local v2, "validityInfo":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v3

    .line 139
    .local v3, "datatypeIterator":Landroid/icu/util/UResourceBundleIterator;
    :goto_1b
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 140
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v4

    .line 141
    .local v4, "datatype":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, "rawKey":Ljava/lang/String;
    invoke-static {v5}, Landroid/icu/impl/ValidIdentifiers$Datatype;->valueOf(Ljava/lang/String;)Landroid/icu/impl/ValidIdentifiers$Datatype;

    move-result-object v6

    .line 143
    .local v6, "key":Landroid/icu/impl/ValidIdentifiers$Datatype;
    new-instance v7, Ljava/util/EnumMap;

    const-class v8, Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    invoke-direct {v7, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 144
    .local v7, "values":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/impl/ValidIdentifiers$Datasubtype;Landroid/icu/impl/ValidIdentifiers$ValiditySet;>;"
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v8

    .line 145
    .local v8, "datasubtypeIterator":Landroid/icu/util/UResourceBundleIterator;
    :goto_38
    invoke-virtual {v8}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_87

    .line 146
    invoke-virtual {v8}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v9

    .line 147
    .local v9, "datasubtype":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 148
    .local v10, "rawsubkey":Ljava/lang/String;
    invoke-static {v10}, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->valueOf(Ljava/lang/String;)Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    move-result-object v11

    .line 150
    .local v11, "subkey":Landroid/icu/impl/ValidIdentifiers$Datasubtype;
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 151
    .local v12, "subvalues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v13

    if-nez v13, :cond_5f

    .line 152
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v12}, Landroid/icu/impl/ValidIdentifiers$ValidityData;->addRange(Ljava/lang/String;Ljava/util/Set;)V

    move-object/from16 v16, v1

    goto :goto_75

    .line 154
    :cond_5f
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v13

    array-length v15, v13

    const/4 v14, 0x0

    :goto_65
    if-ge v14, v15, :cond_73

    move-object/from16 v16, v1

    .end local v1    # "suppData":Landroid/icu/util/UResourceBundle;
    .local v16, "suppData":Landroid/icu/util/UResourceBundle;
    aget-object v1, v13, v14

    .line 155
    .local v1, "string":Ljava/lang/String;
    invoke-static {v1, v12}, Landroid/icu/impl/ValidIdentifiers$ValidityData;->addRange(Ljava/lang/String;Ljava/util/Set;)V

    .line 154
    .end local v1    # "string":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v16

    goto :goto_65

    .end local v16    # "suppData":Landroid/icu/util/UResourceBundle;
    .local v1, "suppData":Landroid/icu/util/UResourceBundle;
    :cond_73
    move-object/from16 v16, v1

    .line 158
    .end local v1    # "suppData":Landroid/icu/util/UResourceBundle;
    .restart local v16    # "suppData":Landroid/icu/util/UResourceBundle;
    :goto_75
    new-instance v1, Landroid/icu/impl/ValidIdentifiers$ValiditySet;

    sget-object v13, Landroid/icu/impl/ValidIdentifiers$Datatype;->subdivision:Landroid/icu/impl/ValidIdentifiers$Datatype;

    if-ne v6, v13, :cond_7d

    const/4 v14, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v14, 0x0

    :goto_7e
    invoke-direct {v1, v12, v14}, Landroid/icu/impl/ValidIdentifiers$ValiditySet;-><init>(Ljava/util/Set;Z)V

    invoke-interface {v7, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .end local v9    # "datasubtype":Landroid/icu/util/UResourceBundle;
    .end local v10    # "rawsubkey":Ljava/lang/String;
    .end local v11    # "subkey":Landroid/icu/impl/ValidIdentifiers$Datasubtype;
    .end local v12    # "subvalues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, v16

    goto :goto_38

    .line 145
    .end local v16    # "suppData":Landroid/icu/util/UResourceBundle;
    .restart local v1    # "suppData":Landroid/icu/util/UResourceBundle;
    :cond_87
    move-object/from16 v16, v1

    .line 160
    .end local v1    # "suppData":Landroid/icu/util/UResourceBundle;
    .end local v8    # "datasubtypeIterator":Landroid/icu/util/UResourceBundleIterator;
    .restart local v16    # "suppData":Landroid/icu/util/UResourceBundle;
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .end local v4    # "datatype":Landroid/icu/util/UResourceBundle;
    .end local v5    # "rawKey":Ljava/lang/String;
    .end local v6    # "key":Landroid/icu/impl/ValidIdentifiers$Datatype;
    .end local v7    # "values":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/impl/ValidIdentifiers$Datasubtype;Landroid/icu/impl/ValidIdentifiers$ValiditySet;>;"
    move-object/from16 v1, v16

    goto :goto_1b

    .line 139
    .end local v16    # "suppData":Landroid/icu/util/UResourceBundle;
    .restart local v1    # "suppData":Landroid/icu/util/UResourceBundle;
    :cond_93
    move-object/from16 v16, v1

    .line 162
    .end local v1    # "suppData":Landroid/icu/util/UResourceBundle;
    .end local v3    # "datatypeIterator":Landroid/icu/util/UResourceBundleIterator;
    .restart local v16    # "suppData":Landroid/icu/util/UResourceBundle;
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Landroid/icu/impl/ValidIdentifiers$ValidityData;->data:Ljava/util/Map;

    .line 163
    .end local v0    # "_data":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/util/Map<Landroid/icu/impl/ValidIdentifiers$Datasubtype;Landroid/icu/impl/ValidIdentifiers$ValiditySet;>;>;"
    .end local v2    # "validityInfo":Landroid/icu/util/UResourceBundle;
    .end local v16    # "suppData":Landroid/icu/util/UResourceBundle;
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addRange(Ljava/lang/String;Ljava/util/Set;)V
    .registers 6
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 165
    .local p1, "subvalues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 166
    const/16 v0, 0x7e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 167
    .local v0, "pos":I
    if-gez v0, :cond_10

    .line 168
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 170
    :cond_10
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, p1}, Landroid/icu/impl/StringRange;->expand(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;

    .line 172
    :goto_1e
    return-void
.end method
