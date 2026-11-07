.class public Landroid/icu/impl/units/UnitPreferences$UnitPreferencesSink;
.super Landroid/icu/impl/UResource$Sink;
.source "UnitPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/units/UnitPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnitPreferencesSink"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist mapToUnitPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/icu/impl/units/UnitPreferences$UnitPreference;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 195
    const-class v0, Landroid/icu/impl/units/UnitPreferences;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 199
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/units/UnitPreferences$UnitPreferencesSink;->mapToUnitPreferences:Ljava/util/HashMap;

    .line 201
    return-void
.end method

.method private blacklist insertUnitPreferences(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/icu/impl/units/UnitPreferences$UnitPreference;)V
    .registers 8
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "usage"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "unitPreferences"    # [Landroid/icu/impl/units/UnitPreferences$UnitPreference;

    .line 272
    invoke-static {p1, p2}, Landroid/icu/impl/units/UnitPreferences;->formMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/impl/units/UnitPreferences$UnitPreferencesSink;->mapToUnitPreferences:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 275
    iget-object v1, p0, Landroid/icu/impl/units/UnitPreferences$UnitPreferencesSink;->mapToUnitPreferences:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .local v1, "shouldInsert":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/icu/impl/units/UnitPreferences$UnitPreference;>;"
    goto :goto_1f

    .line 277
    .end local v1    # "shouldInsert":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/icu/impl/units/UnitPreferences$UnitPreference;>;"
    :cond_15
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 278
    .restart local v1    # "shouldInsert":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/icu/impl/units/UnitPreferences$UnitPreference;>;"
    iget-object v2, p0, Landroid/icu/impl/units/UnitPreferences$UnitPreferencesSink;->mapToUnitPreferences:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :goto_1f
    invoke-virtual {v1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    return-void
.end method


# virtual methods
.method public blacklist getMapToUnitPreferences()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/icu/impl/units/UnitPreferences$UnitPreference;",
            ">;>;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Landroid/icu/impl/units/UnitPreferences$UnitPreferencesSink;->mapToUnitPreferences:Ljava/util/HashMap;

    return-object v0
.end method

.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 25
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 215
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 217
    invoke-virtual {v1}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v2

    .line 218
    .local v2, "categoryTable":Landroid/icu/impl/UResource$Table;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    invoke-interface {v2, v3, v0, v1}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v4

    if-eqz v4, :cond_f8

    .line 219
    nop

    .line 221
    invoke-virtual {v0}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "category":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v5

    .line 223
    .local v5, "usageTable":Landroid/icu/impl/UResource$Table;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_19
    invoke-interface {v5, v6, v0, v1}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v7

    if-eqz v7, :cond_e8

    .line 224
    nop

    .line 226
    invoke-virtual {v0}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v7

    .line 227
    .local v7, "usage":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v8

    .line 228
    .local v8, "regionTable":Landroid/icu/impl/UResource$Table;
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_29
    invoke-interface {v8, v9, v0, v1}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v10

    if-eqz v10, :cond_d8

    .line 229
    nop

    .line 231
    invoke-virtual {v0}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v10

    .line 232
    .local v10, "region":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/icu/impl/UResource$Value;->getArray()Landroid/icu/impl/UResource$Array;

    move-result-object v11

    .line 233
    .local v11, "preferencesTable":Landroid/icu/impl/UResource$Array;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v12, "unitPreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/impl/units/UnitPreferences$UnitPreference;>;"
    const/4 v13, 0x0

    .local v13, "l":I
    :goto_3e
    invoke-interface {v11, v13, v1}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    move-result v14

    if-eqz v14, :cond_b5

    .line 235
    nop

    .line 237
    invoke-virtual {v1}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v14

    .line 239
    .local v14, "singlePrefTable":Landroid/icu/impl/UResource$Table;
    const/4 v15, 0x0

    .line 240
    .local v15, "unit":Ljava/lang/String;
    const-string v16, "1"

    .line 241
    .local v16, "geq":Ljava/lang/String;
    const-string v17, ""

    .line 242
    .local v17, "skeleton":Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v20, v16

    move-object/from16 v16, v2

    move-object/from16 v2, v20

    move-object/from16 v20, v17

    move/from16 v17, v3

    move-object/from16 v3, v20

    move/from16 v20, v18

    move-object/from16 v18, v5

    move/from16 v5, v20

    .local v2, "geq":Ljava/lang/String;
    .local v3, "skeleton":Ljava/lang/String;
    .local v5, "m":I
    .local v16, "categoryTable":Landroid/icu/impl/UResource$Table;
    .local v17, "i":I
    .local v18, "usageTable":Landroid/icu/impl/UResource$Table;
    :goto_62
    invoke-interface {v14, v5, v0, v1}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v19

    if-eqz v19, :cond_9f

    .line 243
    nop

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "keyString":Ljava/lang/String;
    const-string v1, "unit"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    .end local v15    # "unit":Ljava/lang/String;
    .local v1, "unit":Ljava/lang/String;
    goto :goto_98

    .line 247
    .end local v1    # "unit":Ljava/lang/String;
    .restart local v15    # "unit":Ljava/lang/String;
    :cond_7b
    const-string v1, "geq"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .end local v2    # "geq":Ljava/lang/String;
    .local v1, "geq":Ljava/lang/String;
    goto :goto_98

    .line 249
    .end local v1    # "geq":Ljava/lang/String;
    .restart local v2    # "geq":Ljava/lang/String;
    :cond_89
    const-string v1, "skeleton"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .end local v3    # "skeleton":Ljava/lang/String;
    .local v1, "skeleton":Ljava/lang/String;
    goto :goto_98

    .line 252
    .end local v1    # "skeleton":Ljava/lang/String;
    .restart local v3    # "skeleton":Ljava/lang/String;
    :cond_97
    nop

    .line 242
    .end local v0    # "keyString":Ljava/lang/String;
    :goto_98
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    goto :goto_62

    .line 255
    .end local v5    # "m":I
    :cond_9f
    nop

    .line 256
    new-instance v0, Landroid/icu/impl/units/UnitPreferences$UnitPreference;

    invoke-direct {v0, v15, v2, v3}, Landroid/icu/impl/units/UnitPreferences$UnitPreference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .end local v2    # "geq":Ljava/lang/String;
    .end local v3    # "skeleton":Ljava/lang/String;
    .end local v14    # "singlePrefTable":Landroid/icu/impl/UResource$Table;
    .end local v15    # "unit":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v5, v18

    goto :goto_3e

    .end local v16    # "categoryTable":Landroid/icu/impl/UResource$Table;
    .end local v17    # "i":I
    .end local v18    # "usageTable":Landroid/icu/impl/UResource$Table;
    .local v2, "categoryTable":Landroid/icu/impl/UResource$Table;
    .local v3, "i":I
    .local v5, "usageTable":Landroid/icu/impl/UResource$Table;
    :cond_b5
    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v5

    .line 259
    .end local v2    # "categoryTable":Landroid/icu/impl/UResource$Table;
    .end local v3    # "i":I
    .end local v5    # "usageTable":Landroid/icu/impl/UResource$Table;
    .end local v13    # "l":I
    .restart local v16    # "categoryTable":Landroid/icu/impl/UResource$Table;
    .restart local v17    # "i":I
    .restart local v18    # "usageTable":Landroid/icu/impl/UResource$Table;
    nop

    .line 260
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/icu/impl/units/UnitPreferences$UnitPreference;

    .line 264
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/units/UnitPreferences$UnitPreference;

    .line 260
    move-object/from16 v1, p0

    invoke-direct {v1, v4, v7, v10, v0}, Landroid/icu/impl/units/UnitPreferences$UnitPreferencesSink;->insertUnitPreferences(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/icu/impl/units/UnitPreferences$UnitPreference;)V

    .line 228
    .end local v10    # "region":Ljava/lang/String;
    .end local v11    # "preferencesTable":Landroid/icu/impl/UResource$Array;
    .end local v12    # "unitPreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/impl/units/UnitPreferences$UnitPreference;>;"
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v5, v18

    goto/16 :goto_29

    .end local v16    # "categoryTable":Landroid/icu/impl/UResource$Table;
    .end local v17    # "i":I
    .end local v18    # "usageTable":Landroid/icu/impl/UResource$Table;
    .restart local v2    # "categoryTable":Landroid/icu/impl/UResource$Table;
    .restart local v3    # "i":I
    .restart local v5    # "usageTable":Landroid/icu/impl/UResource$Table;
    :cond_d8
    move-object/from16 v1, p0

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v5

    .line 223
    .end local v2    # "categoryTable":Landroid/icu/impl/UResource$Table;
    .end local v3    # "i":I
    .end local v5    # "usageTable":Landroid/icu/impl/UResource$Table;
    .end local v7    # "usage":Ljava/lang/String;
    .end local v8    # "regionTable":Landroid/icu/impl/UResource$Table;
    .end local v9    # "k":I
    .restart local v16    # "categoryTable":Landroid/icu/impl/UResource$Table;
    .restart local v17    # "i":I
    .restart local v18    # "usageTable":Landroid/icu/impl/UResource$Table;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    goto/16 :goto_19

    .end local v16    # "categoryTable":Landroid/icu/impl/UResource$Table;
    .end local v17    # "i":I
    .end local v18    # "usageTable":Landroid/icu/impl/UResource$Table;
    .restart local v2    # "categoryTable":Landroid/icu/impl/UResource$Table;
    .restart local v3    # "i":I
    .restart local v5    # "usageTable":Landroid/icu/impl/UResource$Table;
    :cond_e8
    move-object/from16 v1, p0

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v5

    .line 218
    .end local v2    # "categoryTable":Landroid/icu/impl/UResource$Table;
    .end local v3    # "i":I
    .end local v4    # "category":Ljava/lang/String;
    .end local v5    # "usageTable":Landroid/icu/impl/UResource$Table;
    .end local v6    # "j":I
    .restart local v16    # "categoryTable":Landroid/icu/impl/UResource$Table;
    .restart local v17    # "i":I
    add-int/lit8 v3, v17, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .end local v17    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_9

    .line 269
    .end local v3    # "i":I
    .end local v16    # "categoryTable":Landroid/icu/impl/UResource$Table;
    .restart local v2    # "categoryTable":Landroid/icu/impl/UResource$Table;
    :cond_f8
    return-void
.end method
