.class public Llibcore/internal/Java21LanguageFeatures$Circle;
.super Llibcore/internal/Java21LanguageFeatures$Shape;
.source "Java21LanguageFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/internal/Java21LanguageFeatures;
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

    .line 68
    invoke-direct {p0}, Llibcore/internal/Java21LanguageFeatures$Shape;-><init>()V

    .line 69
    iput p1, p0, Llibcore/internal/Java21LanguageFeatures$Circle;->radius:I

    .line 70
    return-void
.end method
