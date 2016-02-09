.class Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker$SpoofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpoofStringLengthsElement"
.end annotation


# instance fields
.field fLastString:I

.field fStrLength:I


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2177
    instance-of v2, p1, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 2178
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 2180
    check-cast v0, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@9
    .line 2181
    .local v0, "otherEl":Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;
    iget v2, p0, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fLastString:I

    #@b
    iget v3, v0, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fLastString:I

    #@d
    if-ne v2, v3, :cond_1

    #@f
    .line 2182
    iget v2, p0, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fStrLength:I

    #@11
    iget v3, v0, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fStrLength:I

    #@13
    if-ne v2, v3, :cond_1

    #@15
    const/4 v1, 0x1

    #@16
    .line 2181
    :cond_1
    return v1
.end method
