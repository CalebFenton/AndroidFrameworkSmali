.class public final Landroid/media/internal/exo/extractor/ts/TsPayloadReader$DvbSubtitleInfo;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/ts/TsPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DvbSubtitleInfo"
.end annotation


# instance fields
.field public final blacklist initializationData:[B

.field public final blacklist language:Ljava/lang/String;

.field public final blacklist type:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;I[B)V
    .registers 4

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->language:Ljava/lang/String;

    .line 106
    iput p2, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->type:I

    .line 107
    iput-object p3, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->initializationData:[B

    return-void
.end method
