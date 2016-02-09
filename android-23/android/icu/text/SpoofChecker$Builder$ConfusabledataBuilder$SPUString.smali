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
.field fStr:Ljava/lang/String;

.field fStrTableIndex:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1366
    iput-object p1, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    #@5
    .line 1367
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStrTableIndex:I

    #@8
    .line 1365
    return-void
.end method
