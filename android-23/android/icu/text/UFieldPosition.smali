.class public Landroid/icu/text/UFieldPosition;
.super Ljava/text/FieldPosition;
.source "UFieldPosition.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private countVisibleFractionDigits:I

.field private fractionDigits:J


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 28
    invoke-direct {p0, v0}, Ljava/text/FieldPosition;-><init>(I)V

    #@4
    .line 19
    iput v0, p0, Landroid/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    #@6
    .line 20
    const-wide/16 v0, 0x0

    #@8
    iput-wide v0, p0, Landroid/icu/text/UFieldPosition;->fractionDigits:J

    #@a
    .line 27
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "field"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/text/FieldPosition;-><init>(I)V

    #@3
    .line 19
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    #@6
    .line 20
    const-wide/16 v0, 0x0

    #@8
    iput-wide v0, p0, Landroid/icu/text/UFieldPosition;->fractionDigits:J

    #@a
    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/text/Format$Field;)V
    .locals 2
    .param p1, "attribute"    # Ljava/text/Format$Field;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    #@3
    .line 19
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    #@6
    .line 20
    const-wide/16 v0, 0x0

    #@8
    iput-wide v0, p0, Landroid/icu/text/UFieldPosition;->fractionDigits:J

    #@a
    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/text/Format$Field;I)V
    .locals 2
    .param p1, "attribute"    # Ljava/text/Format$Field;
    .param p2, "fieldID"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    #@3
    .line 19
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    #@6
    .line 20
    const-wide/16 v0, 0x0

    #@8
    iput-wide v0, p0, Landroid/icu/text/UFieldPosition;->fractionDigits:J

    #@a
    .line 45
    return-void
.end method


# virtual methods
.method public getCountVisibleFractionDigits()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 74
    iget v0, p0, Landroid/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    #@2
    return v0
.end method

.method public getFractionDigits()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 83
    iget-wide v0, p0, Landroid/icu/text/UFieldPosition;->fractionDigits:J

    #@2
    return-wide v0
.end method

.method public setFractionDigits(IJ)V
    .locals 0
    .param p1, "countVisibleFractionDigits"    # I
    .param p2, "fractionDigits"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 64
    iput p1, p0, Landroid/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    #@2
    .line 65
    iput-wide p2, p0, Landroid/icu/text/UFieldPosition;->fractionDigits:J

    #@4
    .line 63
    return-void
.end method
