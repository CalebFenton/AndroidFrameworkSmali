.class public interface abstract Landroid/preference/PreferenceDataStore;
.super Ljava/lang/Object;
.source "PreferenceDataStore.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public whitelist getBoolean(Ljava/lang/String;Z)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 195
    return p2
.end method

.method public whitelist getFloat(Ljava/lang/String;F)F
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .line 184
    return p2
.end method

.method public whitelist getInt(Ljava/lang/String;I)I
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 162
    return p2
.end method

.method public whitelist getLong(Ljava/lang/String;J)J
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .line 173
    return-wide p2
.end method

.method public whitelist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 139
    return-object p2
.end method

.method public whitelist getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-object p2
.end method

.method public whitelist putBoolean(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented on this data store"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist putFloat(Ljava/lang/String;F)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented on this data store"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist putInt(Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented on this data store"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist putLong(Ljava/lang/String;J)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented on this data store"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented on this data store"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented on this data store"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
