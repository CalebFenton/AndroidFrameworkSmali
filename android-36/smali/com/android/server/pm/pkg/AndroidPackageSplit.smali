.class public interface abstract Lcom/android/server/pm/pkg/AndroidPackageSplit;
.super Ljava/lang/Object;
.source "AndroidPackageSplit.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# virtual methods
.method public abstract blacklist getClassLoaderName()Ljava/lang/String;
.end method

.method public abstract blacklist getDependencies()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackageSplit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getName()Ljava/lang/String;
.end method

.method public abstract blacklist getPath()Ljava/lang/String;
.end method

.method public abstract blacklist getRevisionCode()I
.end method

.method public abstract blacklist isHasCode()Z
.end method
