.class public interface abstract Landroid/content/SharedPreferences;
.super Ljava/lang/Object;
.source "SharedPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SharedPreferences$Editor;,
        Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    }
.end annotation


# virtual methods
.method public abstract whitelist contains(Ljava/lang/String;)Z
.end method

.method public abstract whitelist edit()Landroid/content/SharedPreferences$Editor;
.end method

.method public abstract whitelist getAll()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end method

.method public abstract whitelist getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract whitelist getFloat(Ljava/lang/String;F)F
.end method

.method public abstract whitelist getInt(Ljava/lang/String;I)I
.end method

.method public abstract whitelist getLong(Ljava/lang/String;J)J
.end method

.method public abstract whitelist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract whitelist getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
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
.end method

.method public abstract whitelist registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
.end method

.method public abstract whitelist unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
.end method
