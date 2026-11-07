.class public interface abstract Landroid/util/AttributeSet;
.super Ljava/lang/Object;
.source "AttributeSet.java"


# virtual methods
.method public abstract whitelist getAttributeBooleanValue(IZ)Z
.end method

.method public abstract whitelist getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract whitelist test-api getAttributeCount()I
.end method

.method public abstract whitelist getAttributeFloatValue(IF)F
.end method

.method public abstract whitelist getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
.end method

.method public abstract whitelist getAttributeIntValue(II)I
.end method

.method public abstract whitelist getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract whitelist getAttributeListValue(I[Ljava/lang/String;I)I
.end method

.method public abstract whitelist getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
.end method

.method public abstract whitelist test-api getAttributeName(I)Ljava/lang/String;
.end method

.method public abstract whitelist getAttributeNameResource(I)I
.end method

.method public whitelist getAttributeNamespace(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getAttributeResourceValue(II)I
.end method

.method public abstract whitelist getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract whitelist getAttributeUnsignedIntValue(II)I
.end method

.method public abstract whitelist getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract whitelist test-api getAttributeValue(I)Ljava/lang/String;
.end method

.method public abstract whitelist test-api getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract whitelist getClassAttribute()Ljava/lang/String;
.end method

.method public abstract whitelist getIdAttribute()Ljava/lang/String;
.end method

.method public abstract whitelist getIdAttributeResourceValue(I)I
.end method

.method public abstract whitelist test-api getPositionDescription()Ljava/lang/String;
.end method

.method public abstract whitelist getStyleAttribute()I
.end method
