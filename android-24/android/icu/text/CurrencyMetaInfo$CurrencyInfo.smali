.class public final Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;
.super Ljava/lang/Object;
.source "CurrencyMetaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CurrencyMetaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencyInfo"
.end annotation


# instance fields
.field public final code:Ljava/lang/String;

.field public final from:J

.field public final priority:I

.field public final region:Ljava/lang/String;

.field private final tender:Z

.field public final to:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 11
    .param p1, "region"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "from"    # J
    .param p5, "to"    # J
    .param p7, "priority"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 417
    const/4 v9, 0x1

    #@1
    move-object v1, p0

    #@2
    move-object v2, p1

    #@3
    move-object v3, p2

    #@4
    move-wide v4, p3

    #@5
    move-wide/from16 v6, p5

    #@7
    move/from16 v8, p7

    #@9
    invoke-direct/range {v1 .. v9}, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    #@c
    .line 416
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V
    .locals 1
    .param p1, "region"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "from"    # J
    .param p5, "to"    # J
    .param p7, "priority"    # I
    .param p8, "tender"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 428
    iput-object p1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;->region:Ljava/lang/String;

    #@5
    .line 429
    iput-object p2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;->code:Ljava/lang/String;

    #@7
    .line 430
    iput-wide p3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;->from:J

    #@9
    .line 431
    iput-wide p5, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;->to:J

    #@b
    .line 432
    iput p7, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;->priority:I

    #@d
    .line 433
    iput-boolean p8, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;->tender:Z

    #@f
    .line 427
    return-void
.end method


# virtual methods
.method public isTender()Z
    .locals 1

    #@0
    .prologue
    .line 450
    iget-boolean v0, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;->tender:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 442
    invoke-static {p0}, Landroid/icu/text/CurrencyMetaInfo;->-wrap0(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
