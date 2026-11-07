.class public Landroid/media/MediaCas$PluginDescriptor;
.super Ljava/lang/Object;
.source "MediaCas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginDescriptor"
.end annotation


# instance fields
.field private final greylist-max-o mCASystemId:I

.field private final greylist-max-o mName:Ljava/lang/String;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    const v0, 0xffff

    iput v0, p0, Landroid/media/MediaCas$PluginDescriptor;->mCASystemId:I

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas$PluginDescriptor;->mName:Ljava/lang/String;

    .line 545
    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/cas/AidlCasPluginDescriptor;)V
    .registers 3
    .param p1, "descriptor"    # Landroid/hardware/cas/AidlCasPluginDescriptor;

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iget v0, p1, Landroid/hardware/cas/AidlCasPluginDescriptor;->caSystemId:I

    iput v0, p0, Landroid/media/MediaCas$PluginDescriptor;->mCASystemId:I

    .line 549
    iget-object v0, p1, Landroid/hardware/cas/AidlCasPluginDescriptor;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaCas$PluginDescriptor;->mName:Ljava/lang/String;

    .line 550
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;)V
    .registers 3
    .param p1, "descriptor"    # Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iget v0, p1, Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;->caSystemId:I

    iput v0, p0, Landroid/media/MediaCas$PluginDescriptor;->mCASystemId:I

    .line 554
    iget-object v0, p1, Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaCas$PluginDescriptor;->mName:Ljava/lang/String;

    .line 555
    return-void
.end method


# virtual methods
.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 563
    iget-object v0, p0, Landroid/media/MediaCas$PluginDescriptor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSystemId()I
    .registers 2

    .line 558
    iget v0, p0, Landroid/media/MediaCas$PluginDescriptor;->mCASystemId:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginDescriptor {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaCas$PluginDescriptor;->mCASystemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$PluginDescriptor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
