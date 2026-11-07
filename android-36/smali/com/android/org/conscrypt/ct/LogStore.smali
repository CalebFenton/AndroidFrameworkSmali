.class public interface abstract Lcom/android/org/conscrypt/ct/LogStore;
.super Ljava/lang/Object;
.source "LogStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ct/LogStore$State;
    }
.end annotation


# virtual methods
.method public abstract blacklist getCompatVersion()I
.end method

.method public abstract blacklist getKnownLog([B)Lcom/android/org/conscrypt/ct/LogInfo;
.end method

.method public abstract blacklist getMajorVersion()I
.end method

.method public abstract blacklist getMinCompatVersionAvailable()I
.end method

.method public abstract blacklist getMinorVersion()I
.end method

.method public abstract blacklist getState()Lcom/android/org/conscrypt/ct/LogStore$State;
.end method

.method public abstract blacklist getTimestamp()J
.end method
