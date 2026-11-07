.class public Llibcore/internal/Java17LanguageFeatures$BaseSealedClass;
.super Ljava/lang/Object;
.source "Java17LanguageFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/internal/Java17LanguageFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseSealedClass"
.end annotation

.annotation system Ldalvik/annotation/PermittedSubclasses;
    value = {
        Llibcore/internal/Java17LanguageFeatures$FinalDerivedClass;,
        Llibcore/internal/Java17LanguageFeatures$NonSealedDerivedClass;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getId()I
    .registers 2

    .line 97
    const/4 v0, 0x0

    return v0
.end method
