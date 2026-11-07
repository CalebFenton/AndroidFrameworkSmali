.class public Landroid/icu/text/UFieldPosition;
.super Ljava/text/FieldPosition;
.source "UFieldPosition.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o countVisibleFractionDigits:I

.field private greylist-max-o fractionDigits:J


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Ljava/text/FieldPosition;-><init>(I)V

    .line 23
    iput v0, p0, Landroid/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/UFieldPosition;->fractionDigits:J

    .line 33
    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 4
    .param p1, "field"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Ljava/text/FieldPosition;-><init>(I)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/UFieldPosition;->fractionDigits:J

    .line 42
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/text/Format$Field;)V
    .registers 4
    .param p1, "attribute"    # Ljava/text/Format$Field;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/UFieldPosition;->fractionDigits:J

    .line 60
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/text/Format$Field;I)V
    .registers 5
    .param p1, "attribute"    # Ljava/text/Format$Field;
    .param p2, "fieldID"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/UFieldPosition;->fractionDigits:J

    .line 51
    return-void
.end method


# virtual methods
.method public greylist-max-o getCountVisibleFractionDigits()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    iget v0, p0, Landroid/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    return v0
.end method

.method public greylist-max-o getFractionDigits()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    iget-wide v0, p0, Landroid/icu/text/UFieldPosition;->fractionDigits:J

    return-wide v0
.end method

.method public greylist-max-o setFractionDigits(IJ)V
    .registers 4
    .param p1, "countVisibleFractionDigits"    # I
    .param p2, "fractionDigits"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    iput p1, p0, Landroid/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    .line 69
    iput-wide p2, p0, Landroid/icu/text/UFieldPosition;->fractionDigits:J

    .line 70
    return-void
.end method
