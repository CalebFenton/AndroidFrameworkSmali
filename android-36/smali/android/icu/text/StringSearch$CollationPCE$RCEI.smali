.class final Landroid/icu/text/StringSearch$CollationPCE$RCEI;
.super Ljava/lang/Object;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/StringSearch$CollationPCE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RCEI"
.end annotation


# instance fields
.field greylist-max-o ce_:I

.field greylist-max-o high_:I

.field greylist-max-o low_:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/StringSearch-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/StringSearch$CollationPCE$RCEI;-><init>()V

    return-void
.end method
