.class final Landroid/icu/impl/RBBIDataWrapper$IsAcceptable;
.super Ljava/lang/Object;
.source "RBBIDataWrapper.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/RBBIDataWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IsAcceptable"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/RBBIDataWrapper-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/RBBIDataWrapper$IsAcceptable;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isDataVersionAcceptable([B)Z
    .registers 6
    .param p1, "version"    # [B

    .line 184
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    add-int/2addr v1, v3

    .line 185
    .local v1, "intVersion":I
    const/high16 v3, 0x6000000

    if-ne v1, v3, :cond_1a

    move v0, v2

    :cond_1a
    return v0
.end method
