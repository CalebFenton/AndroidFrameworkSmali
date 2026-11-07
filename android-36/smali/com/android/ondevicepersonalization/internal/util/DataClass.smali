.class public interface abstract annotation Lcom/android/ondevicepersonalization/internal/util/DataClass;
.super Ljava/lang/Object;
.source "DataClass.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/android/ondevicepersonalization/internal/util/DataClass;
        genAidl = false
        genBuilder = false
        genConstDefs = true
        genConstructor = true
        genCopyConstructor = false
        genEqualsHashCode = false
        genForEachField = false
        genGetters = true
        genHiddenBuilder = false
        genHiddenConstDefs = false
        genHiddenConstructor = false
        genHiddenCopyConstructor = false
        genHiddenGetters = false
        genHiddenSetters = false
        genParcelable = false
        genSetters = false
        genToString = false
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ondevicepersonalization/internal/util/DataClass$PerIntFieldAction;,
        Lcom/android/ondevicepersonalization/internal/util/DataClass$PerObjectFieldAction;,
        Lcom/android/ondevicepersonalization/internal/util/DataClass$MaySetToNull;,
        Lcom/android/ondevicepersonalization/internal/util/DataClass$Suppress;,
        Lcom/android/ondevicepersonalization/internal/util/DataClass$SuppressConstDefsGeneration;,
        Lcom/android/ondevicepersonalization/internal/util/DataClass$Generated;,
        Lcom/android/ondevicepersonalization/internal/util/DataClass$Each;,
        Lcom/android/ondevicepersonalization/internal/util/DataClass$PluralOf;,
        Lcom/android/ondevicepersonalization/internal/util/DataClass$ParcelWith;
    }
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
.method public abstract blacklist genAidl()Z
.end method

.method public abstract blacklist genBuilder()Z
.end method

.method public abstract blacklist genConstDefs()Z
.end method

.method public abstract blacklist genConstructor()Z
.end method

.method public abstract blacklist genCopyConstructor()Z
.end method

.method public abstract blacklist genEqualsHashCode()Z
.end method

.method public abstract blacklist genForEachField()Z
.end method

.method public abstract blacklist genGetters()Z
.end method

.method public abstract blacklist genHiddenBuilder()Z
.end method

.method public abstract blacklist genHiddenConstDefs()Z
.end method

.method public abstract blacklist genHiddenConstructor()Z
.end method

.method public abstract blacklist genHiddenCopyConstructor()Z
.end method

.method public abstract blacklist genHiddenGetters()Z
.end method

.method public abstract blacklist genHiddenSetters()Z
.end method

.method public abstract blacklist genParcelable()Z
.end method

.method public abstract blacklist genSetters()Z
.end method

.method public abstract blacklist genToString()Z
.end method
