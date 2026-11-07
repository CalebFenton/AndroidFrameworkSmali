.class final Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;
.super Ljava/lang/Object;
.source "SpoofChecker.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker$SpoofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IsAcceptable"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/SpoofChecker-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isDataVersionAcceptable([B)Z
    .registers 6
    .param p1, "version"    # [B

    .line 1849
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_14

    aget-byte v1, p1, v2

    if-nez v1, :cond_14

    aget-byte v1, p1, v3

    if-nez v1, :cond_14

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    if-eqz v1, :cond_15

    :cond_14
    move v0, v2

    :cond_15
    return v0
.end method
