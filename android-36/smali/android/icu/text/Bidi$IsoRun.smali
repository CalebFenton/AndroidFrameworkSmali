.class Landroid/icu/text/Bidi$IsoRun;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Bidi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IsoRun"
.end annotation


# instance fields
.field greylist-max-o contextDir:B

.field greylist-max-o contextPos:I

.field greylist-max-o lastBase:B

.field greylist-max-o lastStrong:B

.field greylist-max-o level:B

.field greylist-max-o limit:S

.field greylist-max-o start:S


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
