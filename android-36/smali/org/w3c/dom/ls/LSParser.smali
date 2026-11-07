.class public interface abstract Lorg/w3c/dom/ls/LSParser;
.super Ljava/lang/Object;
.source "LSParser.java"


# static fields
.field public static final whitelist test-api ACTION_APPEND_AS_CHILDREN:S = 0x1s

.field public static final whitelist test-api ACTION_INSERT_AFTER:S = 0x4s

.field public static final whitelist test-api ACTION_INSERT_BEFORE:S = 0x3s

.field public static final whitelist test-api ACTION_REPLACE:S = 0x5s

.field public static final whitelist test-api ACTION_REPLACE_CHILDREN:S = 0x2s


# virtual methods
.method public abstract whitelist test-api abort()V
.end method

.method public abstract whitelist test-api getAsync()Z
.end method

.method public abstract whitelist test-api getBusy()Z
.end method

.method public abstract whitelist test-api getDomConfig()Lorg/w3c/dom/DOMConfiguration;
.end method

.method public abstract whitelist test-api getFilter()Lorg/w3c/dom/ls/LSParserFilter;
.end method

.method public abstract whitelist test-api parse(Lorg/w3c/dom/ls/LSInput;)Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;,
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api parseURI(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;,
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api parseWithContext(Lorg/w3c/dom/ls/LSInput;Lorg/w3c/dom/Node;S)Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;,
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setFilter(Lorg/w3c/dom/ls/LSParserFilter;)V
.end method
