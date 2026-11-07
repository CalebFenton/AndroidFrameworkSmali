.class public final Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;
.super Ljava/lang/Object;
.source "SeekMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/SeekMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeekPoints"
.end annotation


# instance fields
.field public final blacklist first:Landroid/media/internal/exo/extractor/SeekPoint;

.field public final blacklist second:Landroid/media/internal/exo/extractor/SeekPoint;


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/SeekPoint;)V
    .registers 2

    .line 78
    invoke-direct {p0, p1, p1}, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;-><init>(Landroid/media/internal/exo/extractor/SeekPoint;Landroid/media/internal/exo/extractor/SeekPoint;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/SeekPoint;Landroid/media/internal/exo/extractor/SeekPoint;)V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/internal/exo/extractor/SeekPoint;

    iput-object p1, p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;->first:Landroid/media/internal/exo/extractor/SeekPoint;

    .line 87
    invoke-static {p2}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/internal/exo/extractor/SeekPoint;

    iput-object p1, p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;->second:Landroid/media/internal/exo/extractor/SeekPoint;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    if-eq v3, v2, :cond_10

    goto :goto_27

    .line 103
    :cond_10
    check-cast p1, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    .line 104
    iget-object v2, p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;->first:Landroid/media/internal/exo/extractor/SeekPoint;

    iget-object v3, p1, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;->first:Landroid/media/internal/exo/extractor/SeekPoint;

    invoke-virtual {v2, v3}, Landroid/media/internal/exo/extractor/SeekPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object p0, p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;->second:Landroid/media/internal/exo/extractor/SeekPoint;

    iget-object p1, p1, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;->second:Landroid/media/internal/exo/extractor/SeekPoint;

    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/SeekPoint;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;->first:Landroid/media/internal/exo/extractor/SeekPoint;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/SeekPoint;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;->second:Landroid/media/internal/exo/extractor/SeekPoint;

    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/SeekPoint;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;->first:Landroid/media/internal/exo/extractor/SeekPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;->first:Landroid/media/internal/exo/extractor/SeekPoint;

    iget-object v2, p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;->second:Landroid/media/internal/exo/extractor/SeekPoint;

    invoke-virtual {v1, v2}, Landroid/media/internal/exo/extractor/SeekPoint;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string p0, ""

    goto :goto_2f

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;->second:Landroid/media/internal/exo/extractor/SeekPoint;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
