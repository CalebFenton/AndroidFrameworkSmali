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
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .locals 3
    .param p1, "version"    # [B

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2191
    aget-byte v2, p1, v1

    #@4
    if-ne v2, v0, :cond_0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    move v0, v1

    #@8
    goto :goto_0
.end method
