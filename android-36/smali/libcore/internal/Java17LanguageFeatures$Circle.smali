.class public Llibcore/internal/Java17LanguageFeatures$Circle;
.super Llibcore/internal/Java17LanguageFeatures$Shape;
.source "Java17LanguageFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/internal/Java17LanguageFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Circle"
.end annotation


# instance fields
.field public final blacklist radius:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "radius"    # I

    .line 78
    invoke-direct {p0}, Llibcore/internal/Java17LanguageFeatures$Shape;-><init>()V

    .line 79
    iput p1, p0, Llibcore/internal/Java17LanguageFeatures$Circle;->radius:I

    .line 80
    return-void
.end method
