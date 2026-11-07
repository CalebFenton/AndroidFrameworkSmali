.class public Landroid/icu/impl/ValidIdentifiers;
.super Ljava/lang/Object;
.source "ValidIdentifiers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ValidIdentifiers$ValidityData;,
        Landroid/icu/impl/ValidIdentifiers$Datasubtype;,
        Landroid/icu/impl/ValidIdentifiers$ValiditySet;,
        Landroid/icu/impl/ValidIdentifiers$Datatype;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getData()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/icu/impl/ValidIdentifiers$Datatype;",
            "Ljava/util/Map<",
            "Landroid/icu/impl/ValidIdentifiers$Datasubtype;",
            "Landroid/icu/impl/ValidIdentifiers$ValiditySet;",
            ">;>;"
        }
    .end annotation

    .line 176
    sget-object v0, Landroid/icu/impl/ValidIdentifiers$ValidityData;->data:Ljava/util/Map;

    return-object v0
.end method

.method public static blacklist isValid(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/util/Set;Ljava/lang/String;)Landroid/icu/impl/ValidIdentifiers$Datasubtype;
    .registers 8
    .param p0, "datatype"    # Landroid/icu/impl/ValidIdentifiers$Datatype;
    .param p2, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/ValidIdentifiers$Datatype;",
            "Ljava/util/Set<",
            "Landroid/icu/impl/ValidIdentifiers$Datasubtype;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/impl/ValidIdentifiers$Datasubtype;"
        }
    .end annotation

    .line 183
    .local p1, "datasubtypes":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/ValidIdentifiers$Datasubtype;>;"
    sget-object v0, Landroid/icu/impl/ValidIdentifiers$ValidityData;->data:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 184
    .local v0, "subtable":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/impl/ValidIdentifiers$Datasubtype;Landroid/icu/impl/ValidIdentifiers$ValiditySet;>;"
    if-eqz v0, :cond_2e

    .line 185
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    .line 186
    .local v2, "datasubtype":Landroid/icu/impl/ValidIdentifiers$Datasubtype;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ValidIdentifiers$ValiditySet;

    .line 187
    .local v3, "validitySet":Landroid/icu/impl/ValidIdentifiers$ValiditySet;
    if-eqz v3, :cond_2d

    .line 188
    invoke-static {p2}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/impl/ValidIdentifiers$ValiditySet;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 189
    return-object v2

    .line 192
    .end local v2    # "datasubtype":Landroid/icu/impl/ValidIdentifiers$Datasubtype;
    .end local v3    # "validitySet":Landroid/icu/impl/ValidIdentifiers$ValiditySet;
    :cond_2d
    goto :goto_e

    .line 194
    :cond_2e
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist isValid(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ValidIdentifiers$Datasubtype;
    .registers 9
    .param p0, "datatype"    # Landroid/icu/impl/ValidIdentifiers$Datatype;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/ValidIdentifiers$Datatype;",
            "Ljava/util/Set<",
            "Landroid/icu/impl/ValidIdentifiers$Datasubtype;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/impl/ValidIdentifiers$Datasubtype;"
        }
    .end annotation

    .line 198
    .local p1, "datasubtypes":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/ValidIdentifiers$Datasubtype;>;"
    sget-object v0, Landroid/icu/impl/ValidIdentifiers$ValidityData;->data:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 199
    .local v0, "subtable":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/impl/ValidIdentifiers$Datasubtype;Landroid/icu/impl/ValidIdentifiers$ValiditySet;>;"
    if-eqz v0, :cond_32

    .line 200
    invoke-static {p2}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 201
    invoke-static {p3}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 202
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    .line 203
    .local v2, "datasubtype":Landroid/icu/impl/ValidIdentifiers$Datasubtype;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ValidIdentifiers$ValiditySet;

    .line 204
    .local v3, "validitySet":Landroid/icu/impl/ValidIdentifiers$ValiditySet;
    if-eqz v3, :cond_31

    .line 205
    invoke-virtual {v3, p2, p3}, Landroid/icu/impl/ValidIdentifiers$ValiditySet;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 206
    return-object v2

    .line 209
    .end local v2    # "datasubtype":Landroid/icu/impl/ValidIdentifiers$Datasubtype;
    .end local v3    # "validitySet":Landroid/icu/impl/ValidIdentifiers$ValiditySet;
    :cond_31
    goto :goto_16

    .line 211
    :cond_32
    const/4 v1, 0x0

    return-object v1
.end method
