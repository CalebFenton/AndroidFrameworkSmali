.class public interface abstract Landroid/content/SharedPreferences$Editor;
.super Ljava/lang/Object;
.source "SharedPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Editor"
.end annotation


# virtual methods
.method public abstract whitelist apply()V
.end method

.method public abstract whitelist clear()Landroid/content/SharedPreferences$Editor;
.end method

.method public abstract whitelist commit()Z
.end method

.method public abstract whitelist putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
.end method

.method public abstract whitelist putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
.end method

.method public abstract whitelist putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
.end method

.method public abstract whitelist putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
.end method

.method public abstract whitelist putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
.end method

.method public abstract whitelist putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation
.end method

.method public abstract whitelist remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
.end method
