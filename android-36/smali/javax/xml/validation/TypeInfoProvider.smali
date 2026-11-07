.class public abstract Ljavax/xml/validation/TypeInfoProvider;
.super Ljava/lang/Object;
.source "TypeInfoProvider.java"


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api getAttributeTypeInfo(I)Lorg/w3c/dom/TypeInfo;
.end method

.method public abstract whitelist test-api getElementTypeInfo()Lorg/w3c/dom/TypeInfo;
.end method

.method public abstract whitelist test-api isIdAttribute(I)Z
.end method

.method public abstract whitelist test-api isSpecified(I)Z
.end method
