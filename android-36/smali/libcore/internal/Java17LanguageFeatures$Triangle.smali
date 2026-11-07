.class public Llibcore/internal/Java17LanguageFeatures$Triangle;
.super Llibcore/internal/Java17LanguageFeatures$Shape;
.source "Java17LanguageFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/internal/Java17LanguageFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Triangle"
.end annotation


# instance fields
.field public final blacklist base:I

.field public final blacklist height:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 3
    .param p1, "base"    # I
    .param p2, "height"    # I

    .line 59
    invoke-direct {p0}, Llibcore/internal/Java17LanguageFeatures$Shape;-><init>()V

    .line 60
    iput p1, p0, Llibcore/internal/Java17LanguageFeatures$Triangle;->base:I

    .line 61
    iput p2, p0, Llibcore/internal/Java17LanguageFeatures$Triangle;->height:I

    .line 62
    return-void
.end method
