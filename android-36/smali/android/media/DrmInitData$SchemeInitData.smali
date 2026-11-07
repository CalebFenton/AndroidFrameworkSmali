.class public final Landroid/media/DrmInitData$SchemeInitData;
.super Ljava/lang/Object;
.source "DrmInitData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SchemeInitData"
.end annotation


# static fields
.field public static final whitelist UUID_NIL:Ljava/util/UUID;


# instance fields
.field public final whitelist data:[B

.field public final whitelist mimeType:Ljava/lang/String;

.field public final whitelist uuid:Ljava/util/UUID;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 74
    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Landroid/media/DrmInitData$SchemeInitData;->UUID_NIL:Ljava/util/UUID;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/UUID;Ljava/lang/String;[B)V
    .registers 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Landroid/media/DrmInitData$SchemeInitData;->uuid:Ljava/util/UUID;

    .line 99
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    .line 100
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    .line 101
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 105
    instance-of v0, p1, Landroid/media/DrmInitData$SchemeInitData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 106
    return v1

    .line 108
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    .line 109
    return v0

    .line 112
    :cond_a
    move-object v2, p1

    check-cast v2, Landroid/media/DrmInitData$SchemeInitData;

    .line 113
    .local v2, "other":Landroid/media/DrmInitData$SchemeInitData;
    iget-object v3, p0, Landroid/media/DrmInitData$SchemeInitData;->uuid:Ljava/util/UUID;

    iget-object v4, v2, Landroid/media/DrmInitData$SchemeInitData;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    .line 114
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    iget-object v4, v2, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    .line 115
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2d

    move v1, v0

    goto :goto_2e

    :cond_2d
    nop

    .line 113
    :goto_2e
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 120
    iget-object v0, p0, Landroid/media/DrmInitData$SchemeInitData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
