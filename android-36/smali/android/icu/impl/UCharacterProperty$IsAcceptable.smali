.class final Landroid/icu/impl/UCharacterProperty$IsAcceptable;
.super Ljava/lang/Object;
.source "UCharacterProperty.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IsAcceptable"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/UCharacterProperty-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/UCharacterProperty$IsAcceptable;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isDataVersionAcceptable([B)Z
    .registers 5
    .param p1, "version"    # [B

    .line 1665
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method
