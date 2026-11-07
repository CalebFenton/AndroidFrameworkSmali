.class public interface abstract Landroid/view/inspector/PropertyMapper;
.super Ljava/lang/Object;
.source "PropertyMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inspector/PropertyMapper$PropertyConflictException;
    }
.end annotation


# virtual methods
.method public abstract whitelist mapBoolean(Ljava/lang/String;I)I
.end method

.method public abstract whitelist mapByte(Ljava/lang/String;I)I
.end method

.method public abstract whitelist mapChar(Ljava/lang/String;I)I
.end method

.method public abstract whitelist mapColor(Ljava/lang/String;I)I
.end method

.method public abstract whitelist mapDouble(Ljava/lang/String;I)I
.end method

.method public abstract whitelist mapFloat(Ljava/lang/String;I)I
.end method

.method public abstract whitelist mapGravity(Ljava/lang/String;I)I
.end method

.method public abstract whitelist mapInt(Ljava/lang/String;I)I
.end method

.method public abstract whitelist mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/IntFunction<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract whitelist mapIntFlag(Ljava/lang/String;ILjava/util/function/IntFunction;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/IntFunction<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation
.end method

.method public abstract whitelist mapLong(Ljava/lang/String;I)I
.end method

.method public abstract whitelist mapObject(Ljava/lang/String;I)I
.end method

.method public abstract whitelist mapResourceId(Ljava/lang/String;I)I
.end method

.method public abstract whitelist mapShort(Ljava/lang/String;I)I
.end method
