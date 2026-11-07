.class Landroid/icu/text/Bidi$Opening;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Bidi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Opening"
.end annotation


# instance fields
.field greylist-max-o contextDir:B

.field greylist-max-o contextPos:I

.field greylist-max-o flags:S

.field greylist-max-o match:I

.field greylist-max-o position:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
