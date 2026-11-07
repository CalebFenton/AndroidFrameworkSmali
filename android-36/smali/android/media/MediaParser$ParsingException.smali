.class public final Landroid/media/MediaParser$ParsingException;
.super Ljava/io/IOException;
.source "MediaParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParsingException"
.end annotation


# direct methods
.method private constructor blacklist <init>(Landroid/media/internal/exo/ParserException;)V
    .registers 2

    .line 472
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/internal/exo/ParserException;Landroid/media/MediaParser-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/media/MediaParser$ParsingException;-><init>(Landroid/media/internal/exo/ParserException;)V

    return-void
.end method
