.class public Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;
.super Ljava/lang/Object;
.source "GEOLocationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/GEOLocationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RealValue"
.end annotation


# instance fields
.field private final mResolution:I

.field private final mResolutionSet:Z

.field private final mValue:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    iput-wide p1, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mValue:D

    #@5
    .line 67
    const/high16 v0, -0x80000000

    #@7
    iput v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mResolution:I

    #@9
    .line 68
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mResolutionSet:Z

    #@c
    .line 65
    return-void
.end method

.method public constructor <init>(DI)V
    .locals 1
    .param p1, "value"    # D
    .param p3, "resolution"    # I

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    iput-wide p1, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mValue:D

    #@5
    .line 73
    iput p3, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mResolution:I

    #@7
    .line 74
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mResolutionSet:Z

    #@a
    .line 71
    return-void
.end method


# virtual methods
.method public getResolution()I
    .locals 1

    #@0
    .prologue
    .line 86
    iget v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mResolution:I

    #@2
    return v0
.end method

.method public getValue()D
    .locals 2

    #@0
    .prologue
    .line 78
    iget-wide v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mValue:D

    #@2
    return-wide v0
.end method

.method public isResolutionSet()Z
    .locals 1

    #@0
    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mResolutionSet:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 92
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "%f"

    #@8
    const/4 v2, 0x1

    #@9
    new-array v2, v2, [Ljava/lang/Object;

    #@b
    iget-wide v4, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mValue:D

    #@d
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@10
    move-result-object v3

    #@11
    const/4 v4, 0x0

    #@12
    aput-object v3, v2, v4

    #@14
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 93
    iget-boolean v1, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mResolutionSet:Z

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 94
    const-string/jumbo v1, "+/-2^"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    iget v2, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mResolution:I

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    .line 96
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    return-object v1
.end method
