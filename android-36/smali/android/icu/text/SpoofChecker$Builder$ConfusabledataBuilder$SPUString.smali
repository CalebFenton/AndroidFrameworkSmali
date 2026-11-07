.class Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPUString"
.end annotation


# instance fields
.field greylist-max-o fCharOrStrTableIndex:I

.field greylist-max-o fStr:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    iput-object p1, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    .line 1009
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fCharOrStrTableIndex:I

    .line 1010
    return-void
.end method
