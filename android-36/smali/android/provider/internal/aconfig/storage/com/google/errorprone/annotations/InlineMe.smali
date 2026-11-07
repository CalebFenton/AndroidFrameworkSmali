.class public interface abstract annotation Landroid/provider/internal/aconfig/storage/com/google/errorprone/annotations/InlineMe;
.super Ljava/lang/Object;
.source "InlineMe.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/provider/internal/aconfig/storage/com/google/errorprone/annotations/InlineMe;
        imports = {}
        staticImports = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract blacklist imports()[Ljava/lang/String;
.end method

.method public abstract blacklist replacement()Ljava/lang/String;
.end method

.method public abstract blacklist staticImports()[Ljava/lang/String;
.end method
