.class public interface abstract annotation Landroid/annotation/PermissionMethod;
.super Ljava/lang/Object;
.source "PermissionMethod.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/annotation/PermissionMethod;
        anyOf = false
        orSelf = false
        value = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract blacklist anyOf()Z
.end method

.method public abstract blacklist orSelf()Z
.end method

.method public abstract blacklist value()[Ljava/lang/String;
.end method
