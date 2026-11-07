.class public final Landroid/media/internal/exo/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekTimestampConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSeekTimestampConverter"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist timeUsToTargetTime(J)J
    .registers 3

    .line 0
    return-wide p1
.end method
