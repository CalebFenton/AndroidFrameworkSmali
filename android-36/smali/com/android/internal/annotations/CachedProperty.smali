.class public interface abstract annotation Lcom/android/internal/annotations/CachedProperty;
.super Ljava/lang/Object;
.source "CachedProperty.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/android/internal/annotations/CachedProperty;
        api = ""
        max = -0x1
        mods = {
            .enum Lcom/android/internal/annotations/CacheModifier;->STATIC:Lcom/android/internal/annotations/CacheModifier;
        }
        module = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract blacklist api()Ljava/lang/String;
.end method

.method public abstract blacklist max()I
.end method

.method public abstract blacklist mods()[Lcom/android/internal/annotations/CacheModifier;
.end method

.method public abstract blacklist module()Ljava/lang/String;
.end method
