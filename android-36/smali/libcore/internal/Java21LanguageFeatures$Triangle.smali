.class public Llibcore/internal/Java21LanguageFeatures$Triangle;
.super Llibcore/internal/Java21LanguageFeatures$Shape;
.source "Java21LanguageFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/internal/Java21LanguageFeatures;
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

    .line 49
    invoke-direct {p0}, Llibcore/internal/Java21LanguageFeatures$Shape;-><init>()V

    .line 50
    iput p1, p0, Llibcore/internal/Java21LanguageFeatures$Triangle;->base:I

    .line 51
    iput p2, p0, Llibcore/internal/Java21LanguageFeatures$Triangle;->height:I

    .line 52
    return-void
.end method
