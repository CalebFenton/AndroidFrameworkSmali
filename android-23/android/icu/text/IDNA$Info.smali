.class public final Landroid/icu/text/IDNA$Info;
.super Ljava/lang/Object;
.source "IDNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/IDNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation


# instance fields
.field private errors:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/IDNA$Error;",
            ">;"
        }
    .end annotation
.end field

.field private isBiDi:Z

.field private isOkBiDi:Z

.field private isTransDiff:Z

.field private labelErrors:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/IDNA$Error;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/text/IDNA$Info;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isBiDi:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/icu/text/IDNA$Info;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isOkBiDi:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/IDNA$Info;->labelErrors:Ljava/util/EnumSet;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/icu/text/IDNA$Info;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/icu/text/IDNA$Info;->isBiDi:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/icu/text/IDNA$Info;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/icu/text/IDNA$Info;->isOkBiDi:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/icu/text/IDNA$Info;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/icu/text/IDNA$Info;->isTransDiff:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/icu/text/IDNA$Info;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/icu/text/IDNA$Info;->reset()V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 221
    const-class v0, Landroid/icu/text/IDNA$Error;

    #@6
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    #@c
    .line 222
    const-class v0, Landroid/icu/text/IDNA$Error;

    #@e
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/icu/text/IDNA$Info;->labelErrors:Ljava/util/EnumSet;

    #@14
    .line 223
    iput-boolean v1, p0, Landroid/icu/text/IDNA$Info;->isTransDiff:Z

    #@16
    .line 224
    iput-boolean v1, p0, Landroid/icu/text/IDNA$Info;->isBiDi:Z

    #@18
    .line 225
    const/4 v0, 0x1

    #@19
    iput-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isOkBiDi:Z

    #@1b
    .line 220
    return-void
.end method

.method private reset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 255
    iget-object v0, p0, Landroid/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    #@3
    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    #@6
    .line 256
    iget-object v0, p0, Landroid/icu/text/IDNA$Info;->labelErrors:Ljava/util/EnumSet;

    #@8
    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    #@b
    .line 257
    iput-boolean v1, p0, Landroid/icu/text/IDNA$Info;->isTransDiff:Z

    #@d
    .line 258
    iput-boolean v1, p0, Landroid/icu/text/IDNA$Info;->isBiDi:Z

    #@f
    .line 259
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isOkBiDi:Z

    #@12
    .line 254
    return-void
.end method


# virtual methods
.method public getErrors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/IDNA$Error;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Landroid/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    #@2
    return-object v0
.end method

.method public hasErrors()Z
    .locals 1

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Landroid/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    #@2
    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public isTransitionalDifferent()Z
    .locals 1

    #@0
    .prologue
    .line 252
    iget-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isTransDiff:Z

    #@2
    return v0
.end method
