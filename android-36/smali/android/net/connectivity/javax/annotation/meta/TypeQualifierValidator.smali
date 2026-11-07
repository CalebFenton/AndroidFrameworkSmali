.class public interface abstract Landroid/net/connectivity/javax/annotation/meta/TypeQualifierValidator;
.super Ljava/lang/Object;
.source "TypeQualifierValidator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract blacklist forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Landroid/net/connectivity/javax/annotation/meta/When;
    .param p1    # Ljava/lang/annotation/Annotation;
        .annotation runtime Landroid/net/connectivity/javax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Landroid/net/connectivity/javax/annotation/Nonnull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/net/connectivity/javax/annotation/meta/When;"
        }
    .end annotation
.end method
