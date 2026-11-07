.class final Landroid/icu/impl/UPropertyAliases$IsAcceptable;
.super Ljava/lang/Object;
.source "UPropertyAliases.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UPropertyAliases;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IsAcceptable"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/UPropertyAliases-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/UPropertyAliases$IsAcceptable;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isDataVersionAcceptable([B)Z
    .registers 5
    .param p1, "version"    # [B

    .line 74
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method
