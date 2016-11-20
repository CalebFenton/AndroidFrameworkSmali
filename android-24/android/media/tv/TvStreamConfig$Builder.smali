.class public final Landroid/media/tv/TvStreamConfig$Builder;
.super Ljava/lang/Object;
.source "TvStreamConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvStreamConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mGeneration:Ljava/lang/Integer;

.field private mMaxHeight:Ljava/lang/Integer;

.field private mMaxWidth:Ljava/lang/Integer;

.field private mStreamId:Ljava/lang/Integer;

.field private mType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/TvStreamConfig;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 150
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mStreamId:Ljava/lang/Integer;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mType:Ljava/lang/Integer;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 152
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@b
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@e
    throw v1

    #@f
    .line 150
    :cond_1
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxWidth:Ljava/lang/Integer;

    #@11
    if-eqz v1, :cond_0

    #@13
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxHeight:Ljava/lang/Integer;

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 151
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mGeneration:Ljava/lang/Integer;

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 155
    new-instance v0, Landroid/media/tv/TvStreamConfig;

    #@1d
    invoke-direct {v0, v2}, Landroid/media/tv/TvStreamConfig;-><init>(Landroid/media/tv/TvStreamConfig;)V

    #@20
    .line 156
    .local v0, "config":Landroid/media/tv/TvStreamConfig;
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mStreamId:Ljava/lang/Integer;

    #@22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@25
    move-result v1

    #@26
    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->-set3(Landroid/media/tv/TvStreamConfig;I)I

    #@29
    .line 157
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mType:Ljava/lang/Integer;

    #@2b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@2e
    move-result v1

    #@2f
    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->-set4(Landroid/media/tv/TvStreamConfig;I)I

    #@32
    .line 158
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxWidth:Ljava/lang/Integer;

    #@34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@37
    move-result v1

    #@38
    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->-set2(Landroid/media/tv/TvStreamConfig;I)I

    #@3b
    .line 159
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxHeight:Ljava/lang/Integer;

    #@3d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@40
    move-result v1

    #@41
    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->-set1(Landroid/media/tv/TvStreamConfig;I)I

    #@44
    .line 160
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mGeneration:Ljava/lang/Integer;

    #@46
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@49
    move-result v1

    #@4a
    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->-set0(Landroid/media/tv/TvStreamConfig;I)I

    #@4d
    .line 161
    return-object v0
.end method

.method public generation(I)Landroid/media/tv/TvStreamConfig$Builder;
    .locals 1
    .param p1, "generation"    # I

    #@0
    .prologue
    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mGeneration:Ljava/lang/Integer;

    #@6
    .line 146
    return-object p0
.end method

.method public maxHeight(I)Landroid/media/tv/TvStreamConfig$Builder;
    .locals 1
    .param p1, "maxHeight"    # I

    #@0
    .prologue
    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxHeight:Ljava/lang/Integer;

    #@6
    .line 141
    return-object p0
.end method

.method public maxWidth(I)Landroid/media/tv/TvStreamConfig$Builder;
    .locals 1
    .param p1, "maxWidth"    # I

    #@0
    .prologue
    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxWidth:Ljava/lang/Integer;

    #@6
    .line 136
    return-object p0
.end method

.method public streamId(I)Landroid/media/tv/TvStreamConfig$Builder;
    .locals 1
    .param p1, "streamId"    # I

    #@0
    .prologue
    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mStreamId:Ljava/lang/Integer;

    #@6
    .line 126
    return-object p0
.end method

.method public type(I)Landroid/media/tv/TvStreamConfig$Builder;
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mType:Ljava/lang/Integer;

    #@6
    .line 131
    return-object p0
.end method
