.class public interface abstract annotation Landroid/app/appsearch/safeparcel/SafeParcelable$Indicator;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/app/appsearch/safeparcel/SafeParcelable$Indicator;
        getter = "SAFE_PARCELABLE_NULL_STRING"
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/safeparcel/SafeParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Indicator"
.end annotation


# virtual methods
.method public abstract blacklist getter()Ljava/lang/String;
.end method
