.class public Llibcore/internal/Java17LanguageFeatures$Rectangle;
.super Llibcore/internal/Java17LanguageFeatures$Shape;
.source "Java17LanguageFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/internal/Java17LanguageFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rectangle"
.end annotation


# instance fields
.field public final blacklist length:I

.field public final blacklist width:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 3
    .param p1, "length"    # I
    .param p2, "width"    # I

    .line 69
    invoke-direct {p0}, Llibcore/internal/Java17LanguageFeatures$Shape;-><init>()V

    .line 70
    iput p1, p0, Llibcore/internal/Java17LanguageFeatures$Rectangle;->length:I

    .line 71
    iput p2, p0, Llibcore/internal/Java17LanguageFeatures$Rectangle;->width:I

    .line 72
    return-void
.end method
