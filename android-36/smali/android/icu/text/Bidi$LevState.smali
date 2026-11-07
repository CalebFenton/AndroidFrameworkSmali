.class Landroid/icu/text/Bidi$LevState;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Bidi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LevState"
.end annotation


# instance fields
.field greylist-max-o impAct:[S

.field greylist-max-o impTab:[[B

.field greylist-max-o lastStrongRTL:I

.field greylist-max-o runLevel:B

.field greylist-max-o runStart:I

.field greylist-max-o startL2EN:I

.field greylist-max-o startON:I

.field greylist-max-o state:S


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 3060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/Bidi-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/Bidi$LevState;-><init>()V

    return-void
.end method
