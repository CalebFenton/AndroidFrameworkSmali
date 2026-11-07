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
.field greylist-max-o isIndex:Z

.field greylist-max-o type:I

.field greylist-max-o value:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/StringPrep-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/StringPrep$Values;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o reset()V
    .registers 2

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/StringPrep$Values;->isIndex:Z

    .line 337
    iput v0, p0, Landroid/icu/text/StringPrep$Values;->value:I

    .line 338
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/StringPrep$Values;->type:I

    .line 339
    return-void
.end method
