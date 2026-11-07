.class Landroid/media/MediaFormat$UnprefixedKeySet;
.super Landroid/media/MediaFormat$FilteredMappedKeySet;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnprefixedKeySet"
.end annotation


# instance fields
.field private blacklist mPrefix:Ljava/lang/String;


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

    .line 2283
    invoke-direct {p0, p1}, Landroid/media/MediaFormat$FilteredMappedKeySet;-><init>(Landroid/media/MediaFormat;)V

    .line 2284
    iput-object p2, p0, Landroid/media/MediaFormat$UnprefixedKeySet;->mPrefix:Ljava/lang/String;

    .line 2285
    return-void
.end method


# virtual methods
.method protected blacklist keepKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 2288
    iget-object v0, p0, Landroid/media/MediaFormat$UnprefixedKeySet;->mPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected blacklist mapItemToKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "item"    # Ljava/lang/String;

    .line 2296
    return-object p1
.end method

.method protected blacklist mapKeyToItem(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "key"    # Ljava/lang/String;

    .line 2292
    return-object p1
.end method
