.class public interface abstract annotation Landroid/app/appsearch/safeparcel/SafeParcelable$Class;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/app/appsearch/safeparcel/SafeParcelable$Class;
        creatorIsFinal = true
        doNotParcelTypeDefaultValues = false
        validate = false
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/safeparcel/SafeParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Class"
.end annotation


# virtual methods
.method public abstract blacklist creator()Ljava/lang/String;
.end method

.method public abstract blacklist creatorIsFinal()Z
.end method

.method public abstract blacklist doNotParcelTypeDefaultValues()Z
.end method

.method public abstract blacklist validate()Z
.end method
