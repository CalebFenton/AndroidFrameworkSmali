.class final Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;
.super Ljava/lang/Object;
.source "CollationDataReader.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationDataReader;
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
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .locals 3
    .param p1, "version"    # [B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 514
    aget-byte v1, p1, v0

    #@3
    const/4 v2, 0x5

    #@4
    if-ne v1, v2, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method
