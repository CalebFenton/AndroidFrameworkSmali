.class final Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IsAcceptable"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/ICUResourceBundleReader-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isDataVersionAcceptable([B)Z
    .registers 6
    .param p1, "formatVersion"    # [B

    .line 43
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    if-ge v1, v2, :cond_16

    :cond_c
    const/4 v1, 0x2

    aget-byte v3, p1, v0

    if-gt v1, v3, :cond_17

    aget-byte v1, p1, v0

    const/4 v3, 0x3

    if-gt v1, v3, :cond_17

    :cond_16
    move v0, v2

    :cond_17
    return v0
.end method
