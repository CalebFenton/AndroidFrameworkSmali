.class public interface abstract annotation Landroid/provider/internal/aconfig/storage/com/google/errorprone/annotations/IncompatibleModifiers;
.super Ljava/lang/Object;
.source "IncompatibleModifiers.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/provider/internal/aconfig/storage/com/google/errorprone/annotations/IncompatibleModifiers;
        modifier = {}
        value = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract blacklist modifier()[Landroid/provider/internal/aconfig/storage/com/google/errorprone/annotations/Modifier;
.end method

.method public abstract blacklist value()[Ljavax/lang/model/element/Modifier;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
