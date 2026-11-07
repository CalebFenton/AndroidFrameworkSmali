.class public interface abstract Landroid/adservices/ondevicepersonalization/KeyValueStore;
.super Ljava/lang/Object;
.source "KeyValueStore.java"


# virtual methods
.method public abstract whitelist get(Ljava/lang/String;)[B
.end method

.method public blacklist getTableId()I
    .registers 2

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist keySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
