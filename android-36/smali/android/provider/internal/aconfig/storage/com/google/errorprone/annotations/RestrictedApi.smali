.class public interface abstract annotation Landroid/provider/internal/aconfig/storage/com/google/errorprone/annotations/RestrictedApi;
.super Ljava/lang/Object;
.source "RestrictedApi.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/provider/internal/aconfig/storage/com/google/errorprone/annotations/RestrictedApi;
        allowedOnPath = ""
        allowlistAnnotations = {}
        allowlistWithWarningAnnotations = {}
        link = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract blacklist allowedOnPath()Ljava/lang/String;
.end method

.method public abstract blacklist allowlistAnnotations()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist allowlistWithWarningAnnotations()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist explanation()Ljava/lang/String;
.end method

.method public abstract blacklist link()Ljava/lang/String;
.end method
