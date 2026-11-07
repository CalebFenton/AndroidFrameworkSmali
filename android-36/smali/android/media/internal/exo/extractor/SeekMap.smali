.class public interface abstract Landroid/media/internal/exo/extractor/SeekMap;
.super Ljava/lang/Object;
.source "SeekMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;,
        Landroid/media/internal/exo/extractor/SeekMap$Unseekable;
    }
.end annotation


# virtual methods
.method public abstract blacklist getDurationUs()J
.end method

.method public abstract blacklist getSeekPoints(J)Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;
.end method

.method public abstract blacklist isSeekable()Z
.end method
