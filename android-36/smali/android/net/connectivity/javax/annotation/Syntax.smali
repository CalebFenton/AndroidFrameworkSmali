.class public interface abstract annotation Landroid/net/connectivity/javax/annotation/Syntax;
.super Ljava/lang/Object;
.source "Syntax.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Landroid/net/connectivity/javax/annotation/meta/TypeQualifier;
    applicableTo = Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/net/connectivity/javax/annotation/Syntax;
        when = .enum Landroid/net/connectivity/javax/annotation/meta/When;->ALWAYS:Landroid/net/connectivity/javax/annotation/meta/When;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract blacklist value()Ljava/lang/String;
.end method

.method public abstract blacklist when()Landroid/net/connectivity/javax/annotation/meta/When;
.end method
