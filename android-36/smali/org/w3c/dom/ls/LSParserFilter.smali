.class public interface abstract Lorg/w3c/dom/ls/LSParserFilter;
.super Ljava/lang/Object;
.source "LSParserFilter.java"


# static fields
.field public static final whitelist test-api FILTER_ACCEPT:S = 0x1s

.field public static final whitelist test-api FILTER_INTERRUPT:S = 0x4s

.field public static final whitelist test-api FILTER_REJECT:S = 0x2s

.field public static final whitelist test-api FILTER_SKIP:S = 0x3s


# virtual methods
.method public abstract whitelist test-api acceptNode(Lorg/w3c/dom/Node;)S
.end method

.method public abstract whitelist test-api getWhatToShow()I
.end method

.method public abstract whitelist test-api startElement(Lorg/w3c/dom/Element;)S
.end method
