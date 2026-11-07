.class public interface abstract Ljava/lang/invoke/TypeDescriptor$OfField;
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
    name = "OfField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Ljava/lang/invoke/TypeDescriptor$OfField<",
        "TF;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/invoke/TypeDescriptor;"
    }
.end annotation


# virtual methods
.method public abstract whitelist test-api arrayType()Ljava/lang/invoke/TypeDescriptor$OfField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api componentType()Ljava/lang/invoke/TypeDescriptor$OfField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api isArray()Z
.end method

.method public abstract whitelist test-api isPrimitive()Z
.end method
