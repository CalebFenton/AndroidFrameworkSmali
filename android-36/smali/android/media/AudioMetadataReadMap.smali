.class public interface abstract Landroid/media/AudioMetadataReadMap;
.super Ljava/lang/Object;
.source "AudioMetadataReadMap.java"


# virtual methods
.method public abstract whitelist containsKey(Landroid/media/AudioMetadata$Key;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/media/AudioMetadata$Key<",
            "TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract whitelist dup()Landroid/media/AudioMetadataMap;
.end method

.method public abstract whitelist get(Landroid/media/AudioMetadata$Key;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/media/AudioMetadata$Key<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract blacklist keySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/media/AudioMetadata$Key<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract whitelist size()I
.end method
