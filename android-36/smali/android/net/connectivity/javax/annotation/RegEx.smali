.class public interface abstract annotation Landroid/net/connectivity/javax/annotation/RegEx;
.super Ljava/lang/Object;
.source "RegEx.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Landroid/net/connectivity/javax/annotation/Syntax;
    value = "RegEx"
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/net/connectivity/javax/annotation/RegEx;
        when = .enum Landroid/net/connectivity/javax/annotation/meta/When;->ALWAYS:Landroid/net/connectivity/javax/annotation/meta/When;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/javax/annotation/RegEx$Checker;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract blacklist when()Landroid/net/connectivity/javax/annotation/meta/When;
.end method
