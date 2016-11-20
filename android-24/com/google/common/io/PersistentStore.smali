.class public interface abstract Lcom/google/common/io/PersistentStore;
.super Ljava/lang/Object;
.source "PersistentStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/PersistentStore$PersistentStoreException;
    }
.end annotation


# virtual methods
.method public abstract deleteAllBlocks(Ljava/lang/String;)V
.end method

.method public abstract deleteBlock(Ljava/lang/String;)Z
.end method

.method public abstract listBlocks(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract readBlock(Ljava/lang/String;)[B
.end method

.method public abstract readPreference(Ljava/lang/String;)[B
.end method

.method public abstract savePreferences()V
.end method

.method public abstract setPreference(Ljava/lang/String;[B)Z
.end method

.method public abstract writeBlock([BLjava/lang/String;)I
.end method

.method public abstract writeBlockX([BLjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation
.end method
