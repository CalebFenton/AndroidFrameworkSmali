.class Lcom/android/internal/os/FuseAppLoop$Args;
.super Ljava/lang/Object;
.source "FuseAppLoop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/FuseAppLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Args"
.end annotation


# instance fields
.field greylist-max-o data:[B

.field greylist-max-o entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

.field greylist-max-o inode:J

.field greylist-max-o offset:J

.field greylist-max-o size:I

.field greylist-max-o unique:J


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/FuseAppLoop-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/os/FuseAppLoop$Args;-><init>()V

    return-void
.end method
