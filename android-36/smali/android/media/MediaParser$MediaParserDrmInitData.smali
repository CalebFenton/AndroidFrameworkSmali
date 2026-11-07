.class final Landroid/media/MediaParser$MediaParserDrmInitData;
.super Landroid/media/DrmInitData;
.source "MediaParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaParserDrmInitData"
.end annotation


# instance fields
.field private final blacklist mSchemeDatas:[Landroid/media/DrmInitData$SchemeInitData;

.field final synthetic blacklist this$0:Landroid/media/MediaParser;


# direct methods
.method private constructor blacklist <init>(Landroid/media/MediaParser;Landroid/media/internal/exo/drm/DrmInitData;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1580
    iput-object p1, p0, Landroid/media/MediaParser$MediaParserDrmInitData;->this$0:Landroid/media/MediaParser;

    invoke-direct {p0}, Landroid/media/DrmInitData;-><init>()V

    .line 1581
    iget p1, p2, Landroid/media/internal/exo/drm/DrmInitData;->schemeDataCount:I

    new-array p1, p1, [Landroid/media/DrmInitData$SchemeInitData;

    iput-object p1, p0, Landroid/media/MediaParser$MediaParserDrmInitData;->mSchemeDatas:[Landroid/media/DrmInitData$SchemeInitData;

    const/4 p1, 0x0

    .line 1582
    :goto_c
    iget-object v0, p0, Landroid/media/MediaParser$MediaParserDrmInitData;->mSchemeDatas:[Landroid/media/DrmInitData$SchemeInitData;

    array-length v1, v0

    if-ge p1, v1, :cond_1e

    .line 1583
    invoke-virtual {p2, p1}, Landroid/media/internal/exo/drm/DrmInitData;->get(I)Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/MediaParser$MediaParserDrmInitData;->toFrameworkSchemeInitData(Landroid/media/internal/exo/drm/DrmInitData$SchemeData;)Landroid/media/DrmInitData$SchemeInitData;

    move-result-object v1

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_1e
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaParser;Landroid/media/internal/exo/drm/DrmInitData;Landroid/media/MediaParser-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaParser$MediaParserDrmInitData;-><init>(Landroid/media/MediaParser;Landroid/media/internal/exo/drm/DrmInitData;)V

    return-void
.end method

.method private blacklist toFrameworkSchemeInitData(Landroid/media/internal/exo/drm/DrmInitData$SchemeData;)Landroid/media/DrmInitData$SchemeInitData;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 1610
    iget-object p0, p0, Landroid/media/MediaParser$MediaParserDrmInitData;->this$0:Landroid/media/MediaParser;

    invoke-static {p0}, Landroid/media/MediaParser;->-$$Nest$fgetmSchemeInitDataConstructor(Landroid/media/MediaParser;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    iget-object v0, p1, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    iget-object v1, p1, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    iget-object p1, p1, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->data:[B

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/DrmInitData$SchemeInitData;

    return-object p0
.end method


# virtual methods
.method public whitelist get(Ljava/util/UUID;)Landroid/media/DrmInitData$SchemeInitData;
    .registers 6

    .line 1590
    iget-object p0, p0, Landroid/media/MediaParser$MediaParserDrmInitData;->mSchemeDatas:[Landroid/media/DrmInitData$SchemeInitData;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_14

    aget-object v2, p0, v1

    .line 1591
    iget-object v3, v2, Landroid/media/DrmInitData$SchemeInitData;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    return-object v2

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getSchemeInitDataAt(I)Landroid/media/DrmInitData$SchemeInitData;
    .registers 2

    .line 1600
    iget-object p0, p0, Landroid/media/MediaParser$MediaParserDrmInitData;->mSchemeDatas:[Landroid/media/DrmInitData$SchemeInitData;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public whitelist getSchemeInitDataCount()I
    .registers 1

    .line 1605
    iget-object p0, p0, Landroid/media/MediaParser$MediaParserDrmInitData;->mSchemeDatas:[Landroid/media/DrmInitData$SchemeInitData;

    array-length p0, p0

    return p0
.end method
