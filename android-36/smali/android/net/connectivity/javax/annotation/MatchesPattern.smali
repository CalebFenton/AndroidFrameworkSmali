.class public interface abstract annotation Landroid/net/connectivity/javax/annotation/MatchesPattern;
.super Ljava/lang/Object;
.source "MatchesPattern.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Landroid/net/connectivity/javax/annotation/meta/TypeQualifier;
    applicableTo = Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/net/connectivity/javax/annotation/MatchesPattern;
        flags = 0x0
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/javax/annotation/MatchesPattern$Checker;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract blacklist flags()I
.end method

.method public abstract blacklist value()Ljava/lang/String;
    .annotation runtime Landroid/net/connectivity/javax/annotation/RegEx;
    .end annotation
.end method
