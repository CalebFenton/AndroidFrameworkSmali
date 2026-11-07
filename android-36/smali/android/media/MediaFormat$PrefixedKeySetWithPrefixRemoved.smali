.class Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;
.super Landroid/media/MediaFormat$FilteredMappedKeySet;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefixedKeySetWithPrefixRemoved"
.end annotation


# instance fields
.field private blacklist mPrefix:Ljava/lang/String;

.field private blacklist mPrefixLength:I


# direct methods
.method public constructor blacklist <init>(Landroid/media/MediaFormat;Ljava/lang/String;)V
    .registers 3
    .param p2, "prefix"    # Ljava/lang/String;
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

    .line 2309
    invoke-direct {p0, p1}, Landroid/media/MediaFormat$FilteredMappedKeySet;-><init>(Landroid/media/MediaFormat;)V

    .line 2310
    iput-object p2, p0, Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;->mPrefix:Ljava/lang/String;

    .line 2311
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;->mPrefixLength:I

    .line 2312
    return-void
.end method


# virtual methods
.method protected blacklist keepKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 2315
    iget-object v0, p0, Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;->mPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected blacklist mapItemToKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "item"    # Ljava/lang/String;

    .line 2323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist mapKeyToItem(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 2319
    iget v0, p0, Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;->mPrefixLength:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
