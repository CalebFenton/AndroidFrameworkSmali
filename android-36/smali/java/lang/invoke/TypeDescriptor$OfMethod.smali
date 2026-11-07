.class public interface abstract Ljava/lang/invoke/TypeDescriptor$OfMethod;
.super Ljava/lang/Object;
.source "TypeDescriptor.java"

# interfaces
.implements Ljava/lang/invoke/TypeDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/TypeDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Ljava/lang/invoke/TypeDescriptor$OfField<",
        "TF;>;M::",
        "Ljava/lang/invoke/TypeDescriptor$OfMethod<",
        "TF;TM;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/invoke/TypeDescriptor;"
    }
.end annotation


# virtual methods
.method public abstract whitelist test-api changeParameterType(ILjava/lang/invoke/TypeDescriptor$OfField;)Ljava/lang/invoke/TypeDescriptor$OfMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITF;)TM;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api changeReturnType(Ljava/lang/invoke/TypeDescriptor$OfField;)Ljava/lang/invoke/TypeDescriptor$OfMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TM;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api dropParameterTypes(II)Ljava/lang/invoke/TypeDescriptor$OfMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TM;"
        }
    .end annotation
.end method

.method public varargs abstract whitelist test-api insertParameterTypes(I[Ljava/lang/invoke/TypeDescriptor$OfField;)Ljava/lang/invoke/TypeDescriptor$OfMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TF;)TM;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api parameterArray()[Ljava/lang/invoke/TypeDescriptor$OfField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TF;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api parameterCount()I
.end method

.method public abstract whitelist test-api parameterList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TF;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api parameterType(I)Ljava/lang/invoke/TypeDescriptor$OfField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TF;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api returnType()Ljava/lang/invoke/TypeDescriptor$OfField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation
.end method
