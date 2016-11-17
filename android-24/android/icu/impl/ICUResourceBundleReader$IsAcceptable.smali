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
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .locals 4
    .param p1, "formatVersion"    # [B

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 42
    aget-byte v2, p1, v1

    #@4
    if-ne v2, v0, :cond_1

    #@6
    aget-byte v2, p1, v0

    #@8
    and-int/lit16 v2, v2, 0xff

    #@a
    if-lt v2, v0, :cond_1

    #@c
    .line 41
    :cond_0
    :goto_0
    return v0

    #@d
    .line 43
    :cond_1
    aget-byte v2, p1, v1

    #@f
    const/4 v3, 0x2

    #@10
    if-gt v3, v2, :cond_2

    #@12
    aget-byte v2, p1, v1

    #@14
    const/4 v3, 0x3

    #@15
    if-le v2, v3, :cond_0

    #@17
    :cond_2
    move v0, v1

    #@18
    goto :goto_0
.end method
