.class public Landroid/net/apf/ApfCapabilities;
.super Ljava/lang/Object;
.source "ApfCapabilities.java"


# instance fields
.field public final apfPacketFormat:I

.field public final apfVersionSupported:I

.field public final maximumApfProgramSize:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "apfVersionSupported"    # I
    .param p2, "maximumApfProgramSize"    # I
    .param p3, "apfPacketFormat"    # I

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput p1, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    #@5
    .line 44
    iput p2, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    #@7
    .line 45
    iput p3, p0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    #@9
    .line 41
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 49
    const-string/jumbo v0, "%s{version: %d, maxSize: %d format: %d}"

    #@3
    const/4 v1, 0x4

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    invoke-virtual {p0}, Landroid/net/apf/ApfCapabilities;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    const/4 v3, 0x0

    #@f
    aput-object v2, v1, v3

    #@11
    .line 50
    iget v2, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    #@13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v2

    #@17
    const/4 v3, 0x1

    #@18
    aput-object v2, v1, v3

    #@1a
    iget v2, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    #@1c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v2

    #@20
    const/4 v3, 0x2

    #@21
    aput-object v2, v1, v3

    #@23
    iget v2, p0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    #@25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v2

    #@29
    const/4 v3, 0x3

    #@2a
    aput-object v2, v1, v3

    #@2c
    .line 49
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method
