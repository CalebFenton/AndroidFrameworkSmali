.class public interface abstract Ljava/lang/reflect/TypeVariable;
.super Ljava/lang/Object;
.source "TypeVariable.java"

# interfaces
.implements Ljava/lang/reflect/Type;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Ljava/lang/reflect/GenericDeclaration;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/Type;"
    }
.end annotation


# virtual methods
.method public abstract whitelist test-api getBounds()[Ljava/lang/reflect/Type;
.end method

.method public abstract whitelist test-api getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api getName()Ljava/lang/String;
.end method
