.class public final Landroid/media/internal/exo/extractor/flv/TagPayloadReader$UnsupportedFormatException;
.super Landroid/media/internal/exo/ParserException;
.source "TagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/flv/TagPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsupportedFormatException"
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/media/internal/exo/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-void
.end method
