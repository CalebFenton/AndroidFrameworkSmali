.class public final Landroid/media/MediaParser$UnrecognizedInputFormatException;
.super Ljava/io/IOException;
.source "MediaParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnrecognizedInputFormatException"
.end annotation


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateForExtractors([Ljava/lang/String;)Landroid/media/MediaParser$UnrecognizedInputFormatException;
    .registers 1

    .line 0
    invoke-static {p0}, Landroid/media/MediaParser$UnrecognizedInputFormatException;->createForExtractors([Ljava/lang/String;)Landroid/media/MediaParser$UnrecognizedInputFormatException;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 464
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static varargs blacklist createForExtractors([Ljava/lang/String;)Landroid/media/MediaParser$UnrecognizedInputFormatException;
    .registers 4

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    const-string v1, "None of the available parsers ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 454
    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 455
    :goto_11
    array-length v2, p0

    if-ge v1, v2, :cond_21

    .line 456
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 459
    :cond_21
    const-string p0, ") could read the stream."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    new-instance p0, Landroid/media/MediaParser$UnrecognizedInputFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaParser$UnrecognizedInputFormatException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
