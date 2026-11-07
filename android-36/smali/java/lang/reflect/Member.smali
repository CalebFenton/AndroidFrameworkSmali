.class public interface abstract Ljava/lang/reflect/Member;
.super Ljava/lang/Object;
.source "Member.java"


# static fields
.field public static final whitelist test-api DECLARED:I = 0x1

.field public static final whitelist test-api PUBLIC:I


# virtual methods
.method public abstract whitelist test-api getDeclaringClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api getModifiers()I
.end method

.method public abstract whitelist test-api getName()Ljava/lang/String;
.end method

.method public abstract whitelist test-api isSynthetic()Z
.end method
