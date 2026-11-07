.class public interface abstract Lorg/w3c/dom/DOMError;
.super Ljava/lang/Object;
.source "DOMError.java"


# static fields
.field public static final whitelist test-api SEVERITY_ERROR:S = 0x2s

.field public static final whitelist test-api SEVERITY_FATAL_ERROR:S = 0x3s

.field public static final whitelist test-api SEVERITY_WARNING:S = 0x1s


# virtual methods
.method public abstract whitelist test-api getLocation()Lorg/w3c/dom/DOMLocator;
.end method

.method public abstract whitelist test-api getMessage()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getRelatedData()Ljava/lang/Object;
.end method

.method public abstract whitelist test-api getRelatedException()Ljava/lang/Object;
.end method

.method public abstract whitelist test-api getSeverity()S
.end method

.method public abstract whitelist test-api getType()Ljava/lang/String;
.end method
