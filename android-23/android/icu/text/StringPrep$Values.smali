.class final Landroid/icu/text/StringPrep$Values;
.super Ljava/lang/Object;
.source "StringPrep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/StringPrep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Values"
.end annotation


# instance fields
.field isIndex:Z

.field type:I

.field value:I


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/StringPrep$Values;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/StringPrep$Values;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 353
    iput-boolean v0, p0, Landroid/icu/text/StringPrep$Values;->isIndex:Z

    #@3
    .line 354
    iput v0, p0, Landroid/icu/text/StringPrep$Values;->value:I

    #@5
    .line 355
    const/4 v0, -0x1

    #@6
    iput v0, p0, Landroid/icu/text/StringPrep$Values;->type:I

    #@8
    .line 352
    return-void
.end method
