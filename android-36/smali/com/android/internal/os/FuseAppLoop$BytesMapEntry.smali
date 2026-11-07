.class Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;
.super Ljava/lang/Object;
.source "FuseAppLoop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/FuseAppLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BytesMapEntry"
.end annotation


# instance fields
.field greylist-max-o bytes:[B

.field greylist-max-o counter:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;->counter:I

    .line 355
    const/high16 v0, 0x20000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;->bytes:[B

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/FuseAppLoop-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;-><init>()V

    return-void
.end method
