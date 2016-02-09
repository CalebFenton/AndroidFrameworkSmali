.class final Landroid/icu/text/MeasureFormat$PatternData;
.super Ljava/lang/Object;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PatternData"
.end annotation


# instance fields
.field final prefix:Ljava/lang/String;

.field final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 959
    const-string/jumbo v1, "{0}"

    #@7
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    .line 960
    .local v0, "pos":I
    if-gez v0, :cond_0

    #@d
    .line 961
    iput-object p1, p0, Landroid/icu/text/MeasureFormat$PatternData;->prefix:Ljava/lang/String;

    #@f
    .line 962
    const/4 v1, 0x0

    #@10
    iput-object v1, p0, Landroid/icu/text/MeasureFormat$PatternData;->suffix:Ljava/lang/String;

    #@12
    .line 958
    :goto_0
    return-void

    #@13
    .line 964
    :cond_0
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    iput-object v1, p0, Landroid/icu/text/MeasureFormat$PatternData;->prefix:Ljava/lang/String;

    #@19
    .line 965
    add-int/lit8 v1, v0, 0x3

    #@1b
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    iput-object v1, p0, Landroid/icu/text/MeasureFormat$PatternData;->suffix:Ljava/lang/String;

    #@21
    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$PatternData;->prefix:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "; "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$PatternData;->suffix:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method
