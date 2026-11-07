.class Ljdk/internal/math/FloatingDecimal$PreparedASCIIToBinaryBuffer;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"

# interfaces
.implements Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/math/FloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreparedASCIIToBinaryBuffer"
.end annotation


# instance fields
.field private final blacklist doubleVal:D

.field private final blacklist floatVal:F


# direct methods
.method public constructor blacklist <init>(DF)V
    .registers 4
    .param p1, "doubleVal"    # D
    .param p3, "floatVal"    # F

    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1010
    iput-wide p1, p0, Ljdk/internal/math/FloatingDecimal$PreparedASCIIToBinaryBuffer;->doubleVal:D

    .line 1011
    iput p3, p0, Ljdk/internal/math/FloatingDecimal$PreparedASCIIToBinaryBuffer;->floatVal:F

    .line 1012
    return-void
.end method


# virtual methods
.method public blacklist doubleValue()D
    .registers 3

    .line 1016
    iget-wide v0, p0, Ljdk/internal/math/FloatingDecimal$PreparedASCIIToBinaryBuffer;->doubleVal:D

    return-wide v0
.end method

.method public blacklist floatValue()F
    .registers 2

    .line 1021
    iget v0, p0, Ljdk/internal/math/FloatingDecimal$PreparedASCIIToBinaryBuffer;->floatVal:F

    return v0
.end method
