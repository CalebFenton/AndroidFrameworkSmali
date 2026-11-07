.class abstract Landroid/view/translation/TranslationRequest$BaseBuilder;
.super Ljava/lang/Object;
.source "TranslationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/TranslationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseBuilder"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist addTranslationRequestValue(Landroid/view/translation/TranslationRequestValue;)Landroid/view/translation/TranslationRequest$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract blacklist addViewTranslationRequest(Landroid/view/translation/ViewTranslationRequest;)Landroid/view/translation/TranslationRequest$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
