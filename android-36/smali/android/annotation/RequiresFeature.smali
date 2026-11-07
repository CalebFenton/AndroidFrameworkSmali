.class public interface abstract annotation Landroid/annotation/RequiresFeature;
.super Ljava/lang/Object;
.source "RequiresFeature.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/annotation/RequiresFeature;
        allOf = {}
        anyOf = {}
        enforcement = "android.content.pm.PackageManager#hasSystemFeature"
        value = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract blacklist allOf()[Ljava/lang/String;
.end method

.method public abstract blacklist anyOf()[Ljava/lang/String;
.end method

.method public abstract blacklist enforcement()Ljava/lang/String;
.end method

.method public abstract blacklist value()Ljava/lang/String;
.end method
