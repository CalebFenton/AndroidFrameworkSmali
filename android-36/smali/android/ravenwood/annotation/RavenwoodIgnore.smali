.class public interface abstract annotation Landroid/ravenwood/annotation/RavenwoodIgnore;
.super Ljava/lang/Object;
.source "RavenwoodIgnore.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/ravenwood/annotation/RavenwoodIgnore;
        blockedBy = {}
        bug = 0x0L
        reason = ""
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
.method public abstract blacklist blockedBy()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract blacklist bug()J
.end method

.method public abstract blacklist reason()Ljava/lang/String;
.end method
