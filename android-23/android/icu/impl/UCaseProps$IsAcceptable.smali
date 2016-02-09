.class final Landroid/icu/impl/UCaseProps$IsAcceptable;
.super Ljava/lang/Object;
.source "UCaseProps.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCaseProps;
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
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/UCaseProps$IsAcceptable;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/impl/UCaseProps$IsAcceptable;-><init>()V

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
    .line 93
    aget-byte v1, p1, v0

    #@3
    const/4 v2, 0x3

    #@4
    if-ne v1, v2, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method
