.class Landroid/webkit/FindAddress$ZipRange;
.super Ljava/lang/Object;
.source "FindAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/FindAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZipRange"
.end annotation


# instance fields
.field blacklist mException1:I

.field blacklist mException2:I

.field blacklist mHigh:I

.field blacklist mLow:I


# direct methods
.method constructor blacklist <init>(IIII)V
    .registers 5
    .param p1, "low"    # I
    .param p2, "high"    # I
    .param p3, "exception1"    # I
    .param p4, "exception2"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroid/webkit/FindAddress$ZipRange;->mLow:I

    .line 37
    iput p2, p0, Landroid/webkit/FindAddress$ZipRange;->mHigh:I

    .line 38
    iput p3, p0, Landroid/webkit/FindAddress$ZipRange;->mException1:I

    .line 39
    iput p3, p0, Landroid/webkit/FindAddress$ZipRange;->mException2:I

    .line 40
    return-void
.end method


# virtual methods
.method blacklist matches(Ljava/lang/String;)Z
    .registers 5
    .param p1, "zipCode"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 43
    .local v0, "prefix":I
    iget v2, p0, Landroid/webkit/FindAddress$ZipRange;->mLow:I

    if-gt v2, v0, :cond_12

    iget v2, p0, Landroid/webkit/FindAddress$ZipRange;->mHigh:I

    if-le v0, v2, :cond_1a

    :cond_12
    iget v2, p0, Landroid/webkit/FindAddress$ZipRange;->mException1:I

    if-eq v0, v2, :cond_1a

    iget v2, p0, Landroid/webkit/FindAddress$ZipRange;->mException2:I

    if-ne v0, v2, :cond_1b

    :cond_1a
    const/4 v1, 0x1

    :cond_1b
    return v1
.end method
