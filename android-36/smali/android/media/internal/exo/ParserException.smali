.class public Landroid/media/internal/exo/ParserException;
.super Ljava/io/IOException;
.source "ParserException.java"


# instance fields
.field public final blacklist contentIsMalformed:Z

.field public final blacklist dataType:I


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V
    .registers 5

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    iput-boolean p3, p0, Landroid/media/internal/exo/ParserException;->contentIsMalformed:Z

    .line 106
    iput p4, p0, Landroid/media/internal/exo/ParserException;->dataType:I

    return-void
.end method

.method public static blacklist createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;
    .registers 4

    .line 48
    new-instance v0, Landroid/media/internal/exo/ParserException;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, v1}, Landroid/media/internal/exo/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-object v0
.end method

.method public static blacklist createForUnsupportedContainerFeature(Ljava/lang/String;)Landroid/media/internal/exo/ParserException;
    .registers 5

    .line 87
    new-instance v0, Landroid/media/internal/exo/ParserException;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Landroid/media/internal/exo/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-object v0
.end method
