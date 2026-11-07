.class public final Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/ts/TsPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EsInfo"
.end annotation


# instance fields
.field public final blacklist descriptorBytes:[B

.field public final blacklist dvbSubtitleInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/internal/exo/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist language:Ljava/lang/String;

.field public final blacklist streamType:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;Ljava/util/List;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/internal/exo/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;[B)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;->streamType:I

    .line 81
    iput-object p2, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    if-nez p3, :cond_c

    .line 84
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_10

    .line 85
    :cond_c
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_10
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;->dvbSubtitleInfos:Ljava/util/List;

    .line 86
    iput-object p4, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    return-void
.end method
