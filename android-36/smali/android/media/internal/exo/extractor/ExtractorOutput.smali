.class public interface abstract Landroid/media/internal/exo/extractor/ExtractorOutput;
.super Ljava/lang/Object;
.source "ExtractorOutput.java"


# static fields
.field public static final blacklist PLACEHOLDER:Landroid/media/internal/exo/extractor/ExtractorOutput;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Landroid/media/internal/exo/extractor/ExtractorOutput$1;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/ExtractorOutput$1;-><init>()V

    sput-object v0, Landroid/media/internal/exo/extractor/ExtractorOutput;->PLACEHOLDER:Landroid/media/internal/exo/extractor/ExtractorOutput;

    return-void
.end method


# virtual methods
.method public abstract blacklist endTracks()V
.end method

.method public abstract blacklist seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V
.end method

.method public abstract blacklist track(II)Landroid/media/internal/exo/extractor/TrackOutput;
.end method
