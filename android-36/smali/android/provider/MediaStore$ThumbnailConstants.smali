.class public Landroid/provider/MediaStore$ThumbnailConstants;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailConstants"
.end annotation


# static fields
.field public static final blacklist FULL_SCREEN_KIND:I = 0x2

.field public static final blacklist FULL_SCREEN_SIZE:Landroid/util/Size;

.field public static final blacklist MICRO_KIND:I = 0x3

.field public static final blacklist MICRO_SIZE:Landroid/util/Size;

.field public static final blacklist MINI_KIND:I = 0x1

.field public static final blacklist MINI_SIZE:Landroid/util/Size;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 2768
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x200

    const/16 v2, 0x180

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroid/provider/MediaStore$ThumbnailConstants;->MINI_SIZE:Landroid/util/Size;

    .line 2769
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x400

    const/16 v2, 0x312

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroid/provider/MediaStore$ThumbnailConstants;->FULL_SCREEN_SIZE:Landroid/util/Size;

    .line 2770
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x60

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroid/provider/MediaStore$ThumbnailConstants;->MICRO_SIZE:Landroid/util/Size;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 2763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getKindSize(I)Landroid/util/Size;
    .registers 4
    .param p0, "kind"    # I

    .line 2773
    const/4 v0, 0x3

    if-ne p0, v0, :cond_6

    .line 2774
    sget-object v0, Landroid/provider/MediaStore$ThumbnailConstants;->MICRO_SIZE:Landroid/util/Size;

    return-object v0

    .line 2775
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 2776
    sget-object v0, Landroid/provider/MediaStore$ThumbnailConstants;->FULL_SCREEN_SIZE:Landroid/util/Size;

    return-object v0

    .line 2777
    :cond_c
    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    .line 2778
    sget-object v0, Landroid/provider/MediaStore$ThumbnailConstants;->MINI_SIZE:Landroid/util/Size;

    return-object v0

    .line 2780
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
