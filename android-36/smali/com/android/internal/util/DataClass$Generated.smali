.class public interface abstract annotation Lcom/android/internal/util/DataClass$Generated;
.super Ljava/lang/Object;
.source "DataClass.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/android/internal/util/DataClass$Generated;
        inputSignatures = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/DataClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Generated"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/DataClass$Generated$Member;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
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
.method public abstract blacklist codegenVersion()Ljava/lang/String;
.end method

.method public abstract blacklist inputSignatures()Ljava/lang/String;
.end method

.method public abstract blacklist sourceFile()Ljava/lang/String;
.end method

.method public abstract blacklist time()J
.end method
