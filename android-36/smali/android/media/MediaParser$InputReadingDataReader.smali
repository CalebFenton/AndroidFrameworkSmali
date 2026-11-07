.class final Landroid/media/MediaParser$InputReadingDataReader;
.super Ljava/lang/Object;
.source "MediaParser.java"

# interfaces
.implements Landroid/media/internal/exo/upstream/DataReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputReadingDataReader"
.end annotation


# instance fields
.field public blacklist mInputReader:Landroid/media/MediaParser$InputReader;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaParser-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Landroid/media/MediaParser$InputReadingDataReader;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist read([BII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1571
    iget-object p0, p0, Landroid/media/MediaParser$InputReadingDataReader;->mInputReader:Landroid/media/MediaParser$InputReader;

    invoke-interface {p0, p1, p2, p3}, Landroid/media/MediaParser$InputReader;->read([BII)I

    move-result p0

    return p0
.end method
