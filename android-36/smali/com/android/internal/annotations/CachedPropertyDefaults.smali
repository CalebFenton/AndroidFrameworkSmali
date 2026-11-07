.class public interface abstract annotation Lcom/android/internal/annotations/CachedPropertyDefaults;
.super Ljava/lang/Object;
.source "CachedPropertyDefaults.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/android/internal/annotations/CachedPropertyDefaults;
        max = 0x20
        module = "system_server"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract blacklist max()I
.end method

.method public abstract blacklist module()Ljava/lang/String;
.end method
