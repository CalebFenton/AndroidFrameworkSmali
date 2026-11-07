.class final Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StsdData"
.end annotation


# instance fields
.field public blacklist format:Landroid/media/internal/exo/Format;

.field public blacklist nalUnitLengthFieldLength:I

.field public blacklist requiredSampleTransformation:I

.field public final blacklist trackEncryptionBoxes:[Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2

    .line 1915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1916
    new-array p1, p1, [Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    const/4 p1, 0x0

    .line 1917
    iput p1, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    return-void
.end method
