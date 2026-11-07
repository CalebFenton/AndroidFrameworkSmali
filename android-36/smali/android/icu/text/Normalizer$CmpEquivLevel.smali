.class final Landroid/icu/text/Normalizer$CmpEquivLevel;
.super Ljava/lang/Object;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CmpEquivLevel"
.end annotation


# instance fields
.field greylist-max-o cs:Ljava/lang/CharSequence;

.field greylist-max-o s:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/Normalizer-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/Normalizer$CmpEquivLevel;-><init>()V

    return-void
.end method
