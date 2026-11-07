.class public interface abstract annotation Landroid/annotation/ChecksSdkIntAtLeast;
.super Ljava/lang/Object;
.source "ChecksSdkIntAtLeast.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/annotation/ChecksSdkIntAtLeast;
        api = -0x1
        codename = ""
        lambda = -0x1
        parameter = -0x1
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract blacklist api()I
.end method

.method public abstract blacklist codename()Ljava/lang/String;
.end method

.method public abstract blacklist lambda()I
.end method

.method public abstract blacklist parameter()I
.end method
