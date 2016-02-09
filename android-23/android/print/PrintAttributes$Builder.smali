.class public final Landroid/print/PrintAttributes$Builder;
.super Ljava/lang/Object;
.source "PrintAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mAttributes:Landroid/print/PrintAttributes;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1363
    new-instance v0, Landroid/print/PrintAttributes;

    #@5
    invoke-direct {v0}, Landroid/print/PrintAttributes;-><init>()V

    #@8
    iput-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    #@a
    .line 1362
    return-void
.end method


# virtual methods
.method public build()Landroid/print/PrintAttributes;
    .locals 1

    #@0
    .prologue
    .line 1438
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    #@2
    return-object v0
.end method

.method public setColorMode(I)Landroid/print/PrintAttributes$Builder;
    .locals 1
    .param p1, "colorMode"    # I

    #@0
    .prologue
    .line 1409
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    #@2
    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes;->setColorMode(I)V

    #@5
    .line 1410
    return-object p0
.end method

.method public setDuplexMode(I)Landroid/print/PrintAttributes$Builder;
    .locals 1
    .param p1, "duplexMode"    # I

    #@0
    .prologue
    .line 1424
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    #@2
    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes;->setDuplexMode(I)V

    #@5
    .line 1425
    return-object p0
.end method

.method public setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;
    .locals 1
    .param p1, "mediaSize"    # Landroid/print/PrintAttributes$MediaSize;

    #@0
    .prologue
    .line 1372
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    #@2
    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)V

    #@5
    .line 1373
    return-object p0
.end method

.method public setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;
    .locals 1
    .param p1, "margins"    # Landroid/print/PrintAttributes$Margins;

    #@0
    .prologue
    .line 1395
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    #@2
    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes;->setMinMargins(Landroid/print/PrintAttributes$Margins;)V

    #@5
    .line 1396
    return-object p0
.end method

.method public setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;
    .locals 1
    .param p1, "resolution"    # Landroid/print/PrintAttributes$Resolution;

    #@0
    .prologue
    .line 1383
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    #@2
    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes;->setResolution(Landroid/print/PrintAttributes$Resolution;)V

    #@5
    .line 1384
    return-object p0
.end method
