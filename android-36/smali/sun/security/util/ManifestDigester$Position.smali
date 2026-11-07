.class Lsun/security/util/ManifestDigester$Position;
.super Ljava/lang/Object;
.source "ManifestDigester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/ManifestDigester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Position"
.end annotation


# instance fields
.field greylist-max-o endOfFirstLine:I

.field greylist-max-o endOfSection:I

.field greylist-max-o startOfNext:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
