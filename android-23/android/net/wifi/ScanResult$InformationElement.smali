.class public Landroid/net/wifi/ScanResult$InformationElement;
.super Ljava/lang/Object;
.source "ScanResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InformationElement"
.end annotation


# instance fields
.field public bytes:[B

.field public id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 1
    .param p1, "rhs"    # Landroid/net/wifi/ScanResult$InformationElement;

    #@0
    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 319
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@5
    iput v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@7
    .line 320
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@9
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, [B

    #@f
    iput-object v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@11
    .line 318
    return-void
.end method
