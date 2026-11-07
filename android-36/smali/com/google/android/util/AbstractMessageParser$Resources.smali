.class public interface abstract Lcom/google/android/util/AbstractMessageParser$Resources;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Resources"
.end annotation


# virtual methods
.method public abstract blacklist getAcronyms()Lcom/google/android/util/AbstractMessageParser$TrieNode;
.end method

.method public abstract blacklist getDomainSuffixes()Lcom/google/android/util/AbstractMessageParser$TrieNode;
.end method

.method public abstract blacklist getSchemes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getSmileys()Lcom/google/android/util/AbstractMessageParser$TrieNode;
.end method
