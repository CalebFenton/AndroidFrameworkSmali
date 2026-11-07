.class public interface abstract Landroid/media/internal/exo/extractor/ts/TsPayloadReader$Factory;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/ts/TsPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract blacklist createInitialPayloadReaders()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/media/internal/exo/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist createPayloadReader(ILandroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;)Landroid/media/internal/exo/extractor/ts/TsPayloadReader;
.end method
