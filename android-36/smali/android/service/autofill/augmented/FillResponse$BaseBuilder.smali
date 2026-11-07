.class abstract Landroid/service/autofill/augmented/FillResponse$BaseBuilder;
.super Ljava/lang/Object;
.source "FillResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/FillResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseBuilder"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist addInlineSuggestion(Landroid/service/autofill/Dataset;)Landroid/service/autofill/augmented/FillResponse$Builder;
.end method
