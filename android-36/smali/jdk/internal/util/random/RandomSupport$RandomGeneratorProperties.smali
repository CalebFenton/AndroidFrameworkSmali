.class public interface abstract annotation Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;
.super Ljava/lang/Object;
.source "RandomSupport.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;
        equidistribution = 0x7fffffff
        group = "Legacy"
        i = 0x0
        isHardware = false
        isStochastic = false
        j = 0x0
        k = 0x0
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/util/random/RandomSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "RandomGeneratorProperties"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract blacklist equidistribution()I
.end method

.method public abstract blacklist group()Ljava/lang/String;
.end method

.method public abstract blacklist i()I
.end method

.method public abstract blacklist isHardware()Z
.end method

.method public abstract blacklist isStochastic()Z
.end method

.method public abstract blacklist j()I
.end method

.method public abstract blacklist k()I
.end method

.method public abstract blacklist name()Ljava/lang/String;
.end method
