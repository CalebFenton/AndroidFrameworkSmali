.class public final Landroid/icu/impl/CalendarAstronomer$Equatorial;
.super Ljava/lang/Object;
.source "CalendarAstronomer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CalendarAstronomer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Equatorial"
.end annotation


# instance fields
.field public final ascension:D

.field public final declination:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1
    .param p1, "asc"    # D
    .param p3, "dec"    # D

    #@0
    .prologue
    .line 1558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1559
    iput-wide p1, p0, Landroid/icu/impl/CalendarAstronomer$Equatorial;->ascension:D

    #@5
    .line 1560
    iput-wide p3, p0, Landroid/icu/impl/CalendarAstronomer$Equatorial;->declination:D

    #@7
    .line 1558
    return-void
.end method


# virtual methods
.method public toHmsString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer$Equatorial;->ascension:D

    #@7
    invoke-static {v2, v3}, Landroid/icu/impl/CalendarAstronomer;->-wrap1(D)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, ","

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer$Equatorial;->declination:D

    #@18
    invoke-static {v2, v3}, Landroid/icu/impl/CalendarAstronomer;->-wrap0(D)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    #@5
    .line 1569
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer$Equatorial;->ascension:D

    #@c
    mul-double/2addr v2, v4

    #@d
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string/jumbo v1, ","

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer$Equatorial;->declination:D

    #@1e
    mul-double/2addr v2, v4

    #@1f
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method
