.class public Llibcore/internal/Java17LanguageFeatures$NonSealedDerivedClass;
.super Llibcore/internal/Java17LanguageFeatures$BaseSealedClass;
.source "Java17LanguageFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/internal/Java17LanguageFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonSealedDerivedClass"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Llibcore/internal/Java17LanguageFeatures$BaseSealedClass;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getId()I
    .registers 2

    .line 111
    const/4 v0, 0x2

    return v0
.end method
