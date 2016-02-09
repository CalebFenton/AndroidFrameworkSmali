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
    .line 213
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
    .line 216
    aget-byte v2, p1, v1

    #@4
    if-eq v2, v0, :cond_0

    #@6
    aget-byte v2, p1, v1

    #@8
    const/4 v3, 0x2

    #@9
    if-ne v2, v3, :cond_1

    #@b
    :cond_0
    :goto_0
    return v0

    #@c
    :cond_1
    move v0, v1

    #@d
    goto :goto_0
.end method
