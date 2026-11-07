.class public interface abstract Lorg/w3c/dom/TypeInfo;
.super Ljava/lang/Object;
.source "TypeInfo.java"


# static fields
.field public static final whitelist test-api DERIVATION_EXTENSION:I = 0x2

.field public static final whitelist test-api DERIVATION_LIST:I = 0x8

.field public static final whitelist test-api DERIVATION_RESTRICTION:I = 0x1

.field public static final whitelist test-api DERIVATION_UNION:I = 0x4


# virtual methods
.method public abstract whitelist test-api getTypeName()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getTypeNamespace()Ljava/lang/String;
.end method

.method public abstract whitelist test-api isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
.end method
