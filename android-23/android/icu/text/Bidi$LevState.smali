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
.field impAct:[S

.field impTab:[[B

.field lastStrongRTL:I

.field runLevel:B

.field runStart:I

.field startL2EN:I

.field startON:I

.field state:S


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/Bidi$LevState;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/Bidi$LevState;-><init>()V

    #@3
    return-void
.end method
