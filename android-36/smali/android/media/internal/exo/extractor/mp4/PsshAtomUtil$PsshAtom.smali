.class Landroid/media/internal/exo/extractor/mp4/PsshAtomUtil$PsshAtom;
.super Ljava/lang/Object;
.source "PsshAtomUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/mp4/PsshAtomUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PsshAtom"
.end annotation


# instance fields
.field private final blacklist schemeData:[B

.field private final blacklist uuid:Ljava/util/UUID;

.field private final blacklist version:I


# direct methods
.method public constructor blacklist <init>(Ljava/util/UUID;I[B)V
    .registers 4

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/PsshAtomUtil$PsshAtom;->uuid:Ljava/util/UUID;

    .line 201
    iput p2, p0, Landroid/media/internal/exo/extractor/mp4/PsshAtomUtil$PsshAtom;->version:I

    .line 202
    iput-object p3, p0, Landroid/media/internal/exo/extractor/mp4/PsshAtomUtil$PsshAtom;->schemeData:[B

    return-void
.end method

.method static synthetic blacklist access$000(Landroid/media/internal/exo/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;
    .registers 1

    .line 193
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/PsshAtomUtil$PsshAtom;->uuid:Ljava/util/UUID;

    return-object p0
.end method
